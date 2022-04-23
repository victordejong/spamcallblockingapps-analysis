package org.spongycastle.apache.bzip2;

import android.support.p001v4.view.InputDeviceCompat;
import com.privacystar.core.service.analytics.p009fo.FOAnalyticsConstants;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/apache/bzip2/CBZip2OutputStream.class */
public class CBZip2OutputStream extends OutputStream implements BZip2Constants {
    protected static final int CLEARMASK = -2097153;
    protected static final int DEPTH_THRESH = 10;
    protected static final int GREATER_ICOST = 15;
    protected static final int LESSER_ICOST = 0;
    protected static final int QSORT_STACK_SIZE = 1000;
    protected static final int SETMASK = 2097152;
    protected static final int SMALL_THRESH = 20;
    private int allowableBlockSize;
    private char[] block;
    private int blockCRC;
    boolean blockRandomised;
    int blockSize100k;
    int bsBuff;
    int bsLive;
    private OutputStream bsStream;
    int bytesOut;
    boolean closed;
    private int combinedCRC;
    private int currentChar;
    private boolean finished;
    private boolean firstAttempt;
    private int[] ftab;
    private boolean[] inUse;
    private int[] incs;
    int last;
    CRC mCrc;
    private int[] mtfFreq;
    private int nBlocksRandomised;
    private int nInUse;
    private int nMTF;
    int origPtr;
    private int[] quadrant;
    private int runLength;
    private char[] selector;
    private char[] selectorMtf;
    private char[] seqToUnseq;
    private short[] szptr;
    private char[] unseqToSeq;
    private int workDone;
    private int workFactor;
    private int workLimit;
    private int[] zptr;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/spongycastle/apache/bzip2/CBZip2OutputStream$StackElem.class */
    public static class StackElem {

        /* renamed from: dd */
        int f865dd;

        /* renamed from: hh */
        int f866hh;

        /* renamed from: ll */
        int f867ll;

        private StackElem() {
        }
    }

    public CBZip2OutputStream(OutputStream outputStream) throws IOException {
        this(outputStream, 9);
    }

    public CBZip2OutputStream(OutputStream outputStream, int i) throws IOException {
        this.mCrc = new CRC();
        this.inUse = new boolean[256];
        this.seqToUnseq = new char[256];
        this.unseqToSeq = new char[256];
        this.selector = new char[BZip2Constants.MAX_SELECTORS];
        this.selectorMtf = new char[BZip2Constants.MAX_SELECTORS];
        this.mtfFreq = new int[BZip2Constants.MAX_ALPHA_SIZE];
        this.currentChar = -1;
        this.runLength = 0;
        this.closed = false;
        this.incs = new int[]{1, 4, 13, 40, 121, 364, FOAnalyticsConstants.SIDE_MENU_ACTIVITY, 3280, 9841, 29524, 88573, 265720, 797161, 2391484};
        this.block = null;
        this.quadrant = null;
        this.zptr = null;
        this.ftab = null;
        outputStream.write(66);
        outputStream.write(90);
        bsSetStream(outputStream);
        this.workFactor = 50;
        i = 9;
        if (i > 9) {
        }
        this.blockSize100k = i < 1 ? 1 : i;
        allocateCompressStructures();
        initialize();
        initBlock();
    }

    private void allocateCompressStructures() {
        int i = this.blockSize100k * BZip2Constants.baseBlockSize;
        this.block = new char[i + 1 + 20];
        this.quadrant = new int[i + 20];
        this.zptr = new int[i];
        this.ftab = new int[65537];
        if (!(this.block == null || this.quadrant == null || this.zptr == null)) {
            int[] iArr = this.ftab;
        }
        this.szptr = new short[i * 2];
    }

    private void bsFinishedWithStream() throws IOException {
        while (this.bsLive > 0) {
            try {
                this.bsStream.write(this.bsBuff >> 24);
                this.bsBuff <<= 8;
                this.bsLive -= 8;
                this.bytesOut++;
            } catch (IOException e) {
                throw e;
            }
        }
    }

    private void bsPutIntVS(int i, int i2) throws IOException {
        bsW(i, i2);
    }

    private void bsPutUChar(int i) throws IOException {
        bsW(8, i);
    }

    private void bsPutint(int i) throws IOException {
        bsW(8, (i >> 24) & 255);
        bsW(8, (i >> 16) & 255);
        bsW(8, (i >> 8) & 255);
        bsW(8, i & 255);
    }

    private void bsSetStream(OutputStream outputStream) {
        this.bsStream = outputStream;
        this.bsLive = 0;
        this.bsBuff = 0;
        this.bytesOut = 0;
    }

    private void bsW(int i, int i2) throws IOException {
        while (this.bsLive >= 8) {
            try {
                this.bsStream.write(this.bsBuff >> 24);
                this.bsBuff <<= 8;
                this.bsLive -= 8;
                this.bytesOut++;
            } catch (IOException e) {
                throw e;
            }
        }
        this.bsBuff = (i2 << ((32 - this.bsLive) - i)) | this.bsBuff;
        this.bsLive += i;
    }

    private void doReversibleTransformation() {
        this.workLimit = this.workFactor * this.last;
        int i = 0;
        this.workDone = 0;
        this.blockRandomised = false;
        this.firstAttempt = true;
        mainSort();
        if (this.workDone > this.workLimit && this.firstAttempt) {
            randomiseBlock();
            this.workDone = 0;
            this.workLimit = 0;
            this.blockRandomised = true;
            this.firstAttempt = false;
            mainSort();
        }
        this.origPtr = -1;
        while (true) {
            if (i > this.last) {
                break;
            } else if (this.zptr[i] == 0) {
                this.origPtr = i;
                break;
            } else {
                i++;
            }
        }
        if (this.origPtr == -1) {
            panic();
        }
    }

    private void endBlock() throws IOException {
        this.blockCRC = this.mCrc.getFinalCRC();
        this.combinedCRC = (this.combinedCRC << 1) | (this.combinedCRC >>> 31);
        this.combinedCRC ^= this.blockCRC;
        doReversibleTransformation();
        bsPutUChar(49);
        bsPutUChar(65);
        bsPutUChar(89);
        bsPutUChar(38);
        bsPutUChar(83);
        bsPutUChar(89);
        bsPutint(this.blockCRC);
        if (this.blockRandomised) {
            bsW(1, 1);
            this.nBlocksRandomised++;
        } else {
            bsW(1, 0);
        }
        moveToFrontCodeAndSend();
    }

    private void endCompression() throws IOException {
        bsPutUChar(23);
        bsPutUChar(114);
        bsPutUChar(69);
        bsPutUChar(56);
        bsPutUChar(80);
        bsPutUChar(144);
        bsPutint(this.combinedCRC);
        bsFinishedWithStream();
    }

    private boolean fullGtU(int i, int i2) {
        int i3;
        boolean z = true;
        boolean z2 = true;
        boolean z3 = true;
        boolean z4 = true;
        boolean z5 = true;
        boolean z6 = true;
        boolean z7 = true;
        boolean z8 = true;
        boolean z9 = true;
        boolean z10 = true;
        boolean z11 = true;
        boolean z12 = true;
        boolean z13 = true;
        boolean z14 = true;
        int i4 = i + 1;
        char c = this.block[i4];
        int i5 = i2 + 1;
        char c2 = this.block[i5];
        if (c != c2) {
            if (c <= c2) {
                z14 = false;
            }
            return z14;
        }
        int i6 = i4 + 1;
        char c3 = this.block[i6];
        int i7 = i5 + 1;
        char c4 = this.block[i7];
        if (c3 != c4) {
            if (c3 <= c4) {
                z = false;
            }
            return z;
        }
        int i8 = i6 + 1;
        char c5 = this.block[i8];
        int i9 = i7 + 1;
        char c6 = this.block[i9];
        if (c5 != c6) {
            if (c5 <= c6) {
                z2 = false;
            }
            return z2;
        }
        int i10 = i8 + 1;
        char c7 = this.block[i10];
        int i11 = i9 + 1;
        char c8 = this.block[i11];
        if (c7 != c8) {
            if (c7 <= c8) {
                z3 = false;
            }
            return z3;
        }
        int i12 = i10 + 1;
        char c9 = this.block[i12];
        int i13 = i11 + 1;
        char c10 = this.block[i13];
        if (c9 != c10) {
            if (c9 <= c10) {
                z4 = false;
            }
            return z4;
        }
        int i14 = i12 + 1;
        char c11 = this.block[i14];
        int i15 = i13 + 1;
        char c12 = this.block[i15];
        if (c11 != c12) {
            if (c11 <= c12) {
                z5 = false;
            }
            return z5;
        }
        int i16 = this.last + 1;
        do {
            int i17 = i14 + 1;
            char c13 = this.block[i17];
            int i18 = i15 + 1;
            char c14 = this.block[i18];
            if (c13 != c14) {
                if (c13 <= c14) {
                    z6 = false;
                }
                return z6;
            }
            int i19 = this.quadrant[i14];
            int i20 = this.quadrant[i15];
            if (i19 != i20) {
                if (i19 <= i20) {
                    z7 = false;
                }
                return z7;
            }
            int i21 = i17 + 1;
            char c15 = this.block[i21];
            int i22 = i18 + 1;
            char c16 = this.block[i22];
            if (c15 != c16) {
                if (c15 <= c16) {
                    z8 = false;
                }
                return z8;
            }
            int i23 = this.quadrant[i17];
            int i24 = this.quadrant[i18];
            if (i23 != i24) {
                if (i23 <= i24) {
                    z9 = false;
                }
                return z9;
            }
            int i25 = i21 + 1;
            char c17 = this.block[i25];
            int i26 = i22 + 1;
            char c18 = this.block[i26];
            if (c17 != c18) {
                if (c17 <= c18) {
                    z10 = false;
                }
                return z10;
            }
            int i27 = this.quadrant[i21];
            int i28 = this.quadrant[i22];
            if (i27 != i28) {
                if (i27 <= i28) {
                    z11 = false;
                }
                return z11;
            }
            int i29 = i25 + 1;
            char c19 = this.block[i29];
            int i30 = i26 + 1;
            char c20 = this.block[i30];
            if (c19 != c20) {
                if (c19 <= c20) {
                    z12 = false;
                }
                return z12;
            }
            int i31 = this.quadrant[i25];
            int i32 = this.quadrant[i26];
            if (i31 != i32) {
                if (i31 <= i32) {
                    z13 = false;
                }
                return z13;
            }
            i14 = i29;
            if (i29 > this.last) {
                i14 = (i29 - this.last) - 1;
            }
            i15 = i30;
            if (i30 > this.last) {
                i15 = (i30 - this.last) - 1;
            }
            i3 = i16 - 4;
            this.workDone++;
            i16 = i3;
        } while (i3 >= 0);
        return false;
    }

    private void generateMTFValues() {
        char[] cArr = new char[256];
        makeMaps();
        int i = this.nInUse + 1;
        for (int i2 = 0; i2 <= i; i2++) {
            this.mtfFreq[i2] = 0;
        }
        for (int i3 = 0; i3 < this.nInUse; i3++) {
            cArr[i3] = (char) i3;
        }
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 <= this.last; i6++) {
            char c = this.unseqToSeq[this.block[this.zptr[i6]]];
            char c2 = cArr[0];
            int i7 = 0;
            while (c != c2) {
                i7++;
                c2 = cArr[i7];
                cArr[i7] = c2;
            }
            cArr[0] = c2;
            if (i7 == 0) {
                i4++;
            } else {
                i4 = i4;
                int i8 = i5;
                if (i4 > 0) {
                    int i9 = i4 - 1;
                    while (true) {
                        switch (i9 % 2) {
                            case 0:
                                this.szptr[i5] = (short) 0;
                                i5++;
                                int[] iArr = this.mtfFreq;
                                iArr[0] = iArr[0] + 1;
                                break;
                            case 1:
                                this.szptr[i5] = (short) 1;
                                i5++;
                                int[] iArr2 = this.mtfFreq;
                                iArr2[1] = iArr2[1] + 1;
                                break;
                        }
                        if (i9 < 2) {
                            i4 = 0;
                            i8 = i5;
                        } else {
                            i9 = (i9 - 2) / 2;
                        }
                    }
                }
                int i10 = i7 + 1;
                this.szptr[i8] = (short) i10;
                i5 = i8 + 1;
                int[] iArr3 = this.mtfFreq;
                iArr3[i10] = iArr3[i10] + 1;
            }
        }
        int i11 = i5;
        if (i4 > 0) {
            int i12 = i4 - 1;
            while (true) {
                switch (i12 % 2) {
                    case 0:
                        this.szptr[i5] = (short) 0;
                        i5++;
                        int[] iArr4 = this.mtfFreq;
                        iArr4[0] = iArr4[0] + 1;
                        break;
                    case 1:
                        this.szptr[i5] = (short) 1;
                        i5++;
                        int[] iArr5 = this.mtfFreq;
                        iArr5[1] = iArr5[1] + 1;
                        break;
                }
                if (i12 < 2) {
                    i11 = i5;
                } else {
                    i12 = (i12 - 2) / 2;
                }
            }
        }
        this.szptr[i11] = (short) i;
        int[] iArr6 = this.mtfFreq;
        iArr6[i] = iArr6[i] + 1;
        this.nMTF = i11 + 1;
    }

    private void hbAssignCodes(int[] iArr, char[] cArr, int i, int i2, int i3) {
        int i4 = 0;
        for (int i5 = i; i5 <= i2; i5++) {
            for (int i6 = 0; i6 < i3; i6++) {
                i4 = i4;
                if (cArr[i6] == i5) {
                    iArr[i6] = i4;
                    i4++;
                }
            }
            i4 <<= 1;
        }
    }

    protected static void hbMakeCodeLengths(char[] cArr, int[] iArr, int i, int i2) {
        int[] iArr2 = new int[260];
        int[] iArr3 = new int[516];
        int[] iArr4 = new int[516];
        int i3 = 0;
        while (true) {
            int i4 = 1;
            if (i3 < i) {
                int i5 = i3 + 1;
                if (iArr[i3] != 0) {
                    i4 = iArr[i3];
                }
                iArr3[i5] = i4 << 8;
                i3 = i5;
            }
        }
        while (true) {
            iArr2[0] = 0;
            iArr3[0] = 0;
            iArr4[0] = -2;
            int i6 = 0;
            for (int i7 = 1; i7 <= i; i7++) {
                iArr4[i7] = -1;
                i6++;
                iArr2[i6] = i7;
                int i8 = iArr2[i6];
                int i9 = i6;
                while (true) {
                    int i10 = iArr3[i8];
                    int i11 = i9 >> 1;
                    if (i10 < iArr3[iArr2[i11]]) {
                        iArr2[i9] = iArr2[i11];
                        i9 = i11;
                    }
                }
                iArr2[i9] = i8;
            }
            if (i6 >= 260) {
                panic();
            }
            int i12 = i;
            while (i6 > 1) {
                int i13 = iArr2[1];
                iArr2[1] = iArr2[i6];
                int i14 = i6 - 1;
                int i15 = iArr2[1];
                int i16 = 1;
                while (true) {
                    int i17 = i16 << 1;
                    if (i17 > i14) {
                        break;
                    }
                    int i18 = i17;
                    if (i17 < i14) {
                        int i19 = i17 + 1;
                        i18 = i17;
                        if (iArr3[iArr2[i19]] < iArr3[iArr2[i17]]) {
                            i18 = i19;
                        }
                    }
                    if (iArr3[i15] < iArr3[iArr2[i18]]) {
                        break;
                    }
                    iArr2[i16] = iArr2[i18];
                    i16 = i18;
                }
                iArr2[i16] = i15;
                int i20 = iArr2[1];
                iArr2[1] = iArr2[i14];
                int i21 = i14 - 1;
                int i22 = iArr2[1];
                int i23 = 1;
                while (true) {
                    int i24 = i23 << 1;
                    if (i24 > i21) {
                        break;
                    }
                    int i25 = i24;
                    if (i24 < i21) {
                        int i26 = i24 + 1;
                        i25 = i24;
                        if (iArr3[iArr2[i26]] < iArr3[iArr2[i24]]) {
                            i25 = i26;
                        }
                    }
                    if (iArr3[i22] < iArr3[iArr2[i25]]) {
                        break;
                    }
                    iArr2[i23] = iArr2[i25];
                    i23 = i25;
                }
                iArr2[i23] = i22;
                int i27 = i12 + 1;
                iArr4[i20] = i27;
                iArr4[i13] = i27;
                iArr3[i27] = ((((iArr3[i13] & 255) > (iArr3[i20] & 255) ? iArr3[i13] : iArr3[i20]) & 255) + 1) | ((iArr3[i13] & InputDeviceCompat.SOURCE_ANY) + (iArr3[i20] & InputDeviceCompat.SOURCE_ANY));
                iArr4[i27] = -1;
                i6 = i21 + 1;
                iArr2[i6] = i27;
                int i28 = iArr2[i6];
                int i29 = i6;
                while (true) {
                    int i30 = iArr3[i28];
                    int i31 = i29 >> 1;
                    if (i30 < iArr3[iArr2[i31]]) {
                        iArr2[i29] = iArr2[i31];
                        i29 = i31;
                    }
                }
                iArr2[i29] = i28;
                i12 = i27;
            }
            if (i12 >= 516) {
                panic();
            }
            boolean z = false;
            for (int i32 = 1; i32 <= i; i32++) {
                int i33 = i32;
                int i34 = 0;
                while (iArr4[i33] >= 0) {
                    i33 = iArr4[i33];
                    i34++;
                }
                cArr[i32 - 1] = (char) i34;
                if (i34 > i2) {
                    z = true;
                }
            }
            if (z) {
                for (int i35 = 1; i35 < i; i35++) {
                    iArr3[i35] = (((iArr3[i35] >> 8) / 2) + 1) << 8;
                }
            } else {
                return;
            }
        }
    }

    private void initBlock() {
        this.mCrc.initialiseCRC();
        this.last = -1;
        for (int i = 0; i < 256; i++) {
            this.inUse[i] = false;
        }
        this.allowableBlockSize = (this.blockSize100k * BZip2Constants.baseBlockSize) - 20;
    }

    private void initialize() throws IOException {
        this.bytesOut = 0;
        this.nBlocksRandomised = 0;
        bsPutUChar(104);
        bsPutUChar(this.blockSize100k + 48);
        this.combinedCRC = 0;
    }

    private void mainSort() {
        int i;
        int i2;
        int[] iArr = new int[256];
        int[] iArr2 = new int[256];
        boolean[] zArr = new boolean[256];
        for (int i3 = 0; i3 < 20; i3++) {
            this.block[this.last + i3 + 2] = this.block[(i3 % (this.last + 1)) + 1];
        }
        for (int i4 = 0; i4 <= this.last + 20; i4++) {
            this.quadrant[i4] = 0;
        }
        this.block[0] = this.block[this.last + 1];
        if (this.last < 4000) {
            for (int i5 = 0; i5 <= this.last; i5++) {
                this.zptr[i5] = i5;
            }
            this.firstAttempt = false;
            this.workLimit = 0;
            this.workDone = 0;
            simpleSort(0, this.last, 0);
            return;
        }
        for (int i6 = 0; i6 <= 255; i6++) {
            zArr[i6] = false;
        }
        for (int i7 = 0; i7 <= 65536; i7++) {
            this.ftab[i7] = 0;
        }
        char c = this.block[0];
        int i8 = 0;
        while (i8 <= this.last) {
            i8++;
            char c2 = this.block[i8];
            int[] iArr3 = this.ftab;
            int i9 = (c << '\b') + c2;
            iArr3[i9] = iArr3[i9] + 1;
            c = c2;
        }
        for (int i10 = 1; i10 <= 65536; i10++) {
            int[] iArr4 = this.ftab;
            iArr4[i10] = iArr4[i10] + this.ftab[i10 - 1];
        }
        char c3 = this.block[1];
        int i11 = 0;
        while (i11 < this.last) {
            char c4 = this.block[i11 + 2];
            int i12 = (c3 << '\b') + c4;
            int[] iArr5 = this.ftab;
            iArr5[i12] = iArr5[i12] - 1;
            this.zptr[this.ftab[i12]] = i11;
            i11++;
            c3 = c4;
        }
        int i13 = (this.block[this.last + 1] << '\b') + this.block[1];
        int[] iArr6 = this.ftab;
        iArr6[i13] = iArr6[i13] - 1;
        this.zptr[this.ftab[i13]] = this.last;
        for (int i14 = 0; i14 <= 255; i14++) {
            iArr[i14] = i14;
        }
        int i15 = 1;
        do {
            i = (i15 * 3) + 1;
            i15 = i;
        } while (i <= 256);
        while (true) {
            int i16 = i / 3;
            for (int i17 = i16; i17 <= 255; i17++) {
                int i18 = iArr[i17];
                int i19 = i17;
                while (true) {
                    i2 = i19 - i16;
                    if (this.ftab[(iArr[i2] + 1) << 8] - this.ftab[iArr[i2] << 8] <= this.ftab[(i18 + 1) << 8] - this.ftab[i18 << 8]) {
                        i2 = i19;
                        break;
                    }
                    iArr[i19] = iArr[i2];
                    if (i2 <= i16 - 1) {
                        break;
                    }
                    i19 = i2;
                }
                iArr[i2] = i18;
            }
            if (i16 == 1) {
                break;
            }
            i = i16;
        }
        for (int i20 = 0; i20 <= 255; i20++) {
            int i21 = iArr[i20];
            for (int i22 = 0; i22 <= 255; i22++) {
                int i23 = (i21 << 8) + i22;
                if ((this.ftab[i23] & 2097152) != 2097152) {
                    int i24 = this.ftab[i23] & CLEARMASK;
                    int i25 = (CLEARMASK & this.ftab[i23 + 1]) - 1;
                    if (i25 > i24) {
                        qSort3(i24, i25, 2);
                        if (this.workDone > this.workLimit && this.firstAttempt) {
                            return;
                        }
                    }
                    int[] iArr7 = this.ftab;
                    iArr7[i23] = 2097152 | iArr7[i23];
                }
            }
            zArr[i21] = true;
            if (i20 < 255) {
                int i26 = this.ftab[i21 << 8] & CLEARMASK;
                int i27 = (this.ftab[(i21 + 1) << 8] & CLEARMASK) - i26;
                int i28 = 0;
                while ((i27 >> i28) > 65534) {
                    i28++;
                }
                for (int i29 = 0; i29 < i27; i29++) {
                    int i30 = this.zptr[i26 + i29];
                    int i31 = i29 >> i28;
                    this.quadrant[i30] = i31;
                    if (i30 < 20) {
                        this.quadrant[i30 + this.last + 1] = i31;
                    }
                }
                if (((i27 - 1) >> i28) > 65535) {
                    panic();
                }
            }
            for (int i32 = 0; i32 <= 255; i32++) {
                iArr2[i32] = this.ftab[(i32 << 8) + i21] & CLEARMASK;
            }
            for (int i33 = this.ftab[i21 << 8] & CLEARMASK; i33 < (this.ftab[(i21 + 1) << 8] & CLEARMASK); i33++) {
                char c5 = this.block[this.zptr[i33]];
                if (!zArr[c5]) {
                    this.zptr[iArr2[c5]] = this.zptr[i33] == 0 ? this.last : this.zptr[i33] - 1;
                    iArr2[c5] = iArr2[c5] + 1;
                }
            }
            for (int i34 = 0; i34 <= 255; i34++) {
                int[] iArr8 = this.ftab;
                int i35 = (i34 << 8) + i21;
                iArr8[i35] = iArr8[i35] | 2097152;
            }
        }
    }

    private void makeMaps() {
        this.nInUse = 0;
        for (int i = 0; i < 256; i++) {
            if (this.inUse[i]) {
                this.seqToUnseq[this.nInUse] = (char) i;
                this.unseqToSeq[i] = (char) this.nInUse;
                this.nInUse++;
            }
        }
    }

    private char med3(char c, char c2, char c3) {
        if (c <= c2) {
            c2 = c;
            c = c2;
        }
        char c4 = c;
        if (c > c3) {
            c4 = c3;
        }
        char c5 = c4;
        if (c2 > c4) {
            c5 = c2;
        }
        return c5;
    }

    private void moveToFrontCodeAndSend() throws IOException {
        bsPutIntVS(24, this.origPtr);
        generateMTFValues();
        sendMTFValues();
    }

    private static void panic() {
        System.out.println("panic");
    }

    private void qSort3(int i, int i2, int i3) {
        StackElem[] stackElemArr = new StackElem[1000];
        for (int i4 = 0; i4 < 1000; i4++) {
            stackElemArr[i4] = new StackElem();
        }
        stackElemArr[0].f867ll = i;
        stackElemArr[0].f866hh = i2;
        stackElemArr[0].f865dd = i3;
        int i5 = 1;
        while (i5 > 0) {
            if (i5 >= 1000) {
                panic();
            }
            int i6 = i5 - 1;
            int i7 = stackElemArr[i6].f867ll;
            int i8 = stackElemArr[i6].f866hh;
            int i9 = stackElemArr[i6].f865dd;
            if (i8 - i7 < 20 || i9 > 10) {
                simpleSort(i7, i8, i9);
                i5 = i6;
                if (this.workDone > this.workLimit) {
                    i5 = i6;
                    if (this.firstAttempt) {
                        return;
                    }
                } else {
                    continue;
                }
            } else {
                char med3 = med3(this.block[this.zptr[i7] + i9 + 1], this.block[this.zptr[i8] + i9 + 1], this.block[this.zptr[(i7 + i8) >> 1] + i9 + 1]);
                int i10 = i7;
                int i11 = i10;
                int i12 = i8;
                int i13 = i12;
                while (true) {
                    if (i10 <= i12) {
                        int i14 = this.block[(this.zptr[i10] + i9) + 1] - med3;
                        if (i14 == 0) {
                            int i15 = this.zptr[i10];
                            this.zptr[i10] = this.zptr[i11];
                            this.zptr[i11] = i15;
                            i11++;
                            i10++;
                        } else if (i14 <= 0) {
                            i10++;
                        }
                    }
                    while (i10 <= i12) {
                        int i16 = this.block[(this.zptr[i12] + i9) + 1] - med3;
                        if (i16 == 0) {
                            int i17 = this.zptr[i12];
                            this.zptr[i12] = this.zptr[i13];
                            this.zptr[i13] = i17;
                            i13--;
                            i12--;
                        } else if (i16 < 0) {
                            break;
                        } else {
                            i12--;
                        }
                    }
                    if (i10 > i12) {
                        break;
                    }
                    int i18 = this.zptr[i10];
                    this.zptr[i10] = this.zptr[i12];
                    this.zptr[i12] = i18;
                    i10++;
                    i12--;
                }
                if (i13 < i11) {
                    stackElemArr[i6].f867ll = i7;
                    stackElemArr[i6].f866hh = i8;
                    stackElemArr[i6].f865dd = i9 + 1;
                    i5 = i6 + 1;
                } else {
                    int i19 = i11 - i7;
                    int i20 = i10 - i11;
                    if (i19 < i20) {
                        i20 = i19;
                    }
                    vswap(i7, i10 - i20, i20);
                    int i21 = i8 - i13;
                    int i22 = i13 - i12;
                    int i23 = i21 < i22 ? i21 : i22;
                    vswap(i10, (i8 - i23) + 1, i23);
                    int i24 = ((i10 + i7) - i11) - 1;
                    int i25 = (i8 - i22) + 1;
                    stackElemArr[i6].f867ll = i7;
                    stackElemArr[i6].f866hh = i24;
                    stackElemArr[i6].f865dd = i9;
                    int i26 = i6 + 1;
                    stackElemArr[i26].f867ll = i24 + 1;
                    stackElemArr[i26].f866hh = i25 - 1;
                    stackElemArr[i26].f865dd = i9 + 1;
                    int i27 = i26 + 1;
                    stackElemArr[i27].f867ll = i25;
                    stackElemArr[i27].f866hh = i8;
                    stackElemArr[i27].f865dd = i9;
                    i5 = i27 + 1;
                }
            }
        }
    }

    private void randomiseBlock() {
        for (int i = 0; i < 256; i++) {
            this.inUse[i] = false;
        }
        int i2 = 0;
        char c = 0;
        int i3 = 0;
        while (i2 <= this.last) {
            char c2 = c;
            i3 = i3;
            if (c == 0) {
                char c3 = (char) rNums[i3];
                int i4 = i3 + 1;
                c2 = c3;
                i3 = i4;
                if (i4 == 512) {
                    i3 = 0;
                    c2 = c3;
                }
            }
            int i5 = c2 - 1;
            char[] cArr = this.block;
            i2++;
            cArr[i2] = (char) (cArr[i2] ^ (i5 == 1 ? (char) 1 : (char) 0));
            char[] cArr2 = this.block;
            cArr2[i2] = (char) (cArr2[i2] & 255);
            this.inUse[this.block[i2]] = true;
            c = i5;
        }
    }

    private void sendMTFValues() throws IOException {
        int i;
        int i2 = 6;
        char[][] cArr = new char[6][BZip2Constants.MAX_ALPHA_SIZE];
        int i3 = this.nInUse + 2;
        int i4 = 0;
        for (int i5 = 0; i5 < 6; i5++) {
            for (int i6 = 0; i6 < i3; i6++) {
                cArr[i5][i6] = (char) 15;
            }
        }
        if (this.nMTF <= 0) {
            panic();
        }
        int i7 = this.nMTF < 200 ? 2 : this.nMTF < 600 ? 3 : this.nMTF < 1200 ? 4 : this.nMTF < 2400 ? 5 : 6;
        int i8 = this.nMTF;
        int i9 = i7;
        int i10 = 0;
        while (true) {
            i = 1;
            if (i9 <= 0) {
                break;
            }
            int i11 = i8 / i9;
            int i12 = i10 - 1;
            int i13 = 0;
            while (i13 < i11 && i12 < i3 - 1) {
                i12++;
                i13 += this.mtfFreq[i12];
            }
            int i14 = i12;
            int i15 = i13;
            if (i12 > i10) {
                i14 = i12;
                i15 = i13;
                if (i9 != i7) {
                    i14 = i12;
                    i15 = i13;
                    if (i9 != 1) {
                        i14 = i12;
                        i15 = i13;
                        if ((i7 - i9) % 2 == 1) {
                            i15 = i13 - this.mtfFreq[i12];
                            i14 = i12 - 1;
                        }
                    }
                }
            }
            for (int i16 = 0; i16 < i3; i16++) {
                if (i16 < i10 || i16 > i14) {
                    cArr[i9 - 1][i16] = (char) 15;
                } else {
                    cArr[i9 - 1][i16] = (char) 0;
                }
            }
            i9--;
            i10 = i14 + 1;
            i8 -= i15;
        }
        int[][] iArr = new int[6][BZip2Constants.MAX_ALPHA_SIZE];
        int[] iArr2 = new int[6];
        short[] sArr = new short[6];
        int i17 = 0;
        int i18 = 0;
        while (i17 < 4) {
            for (int i19 = 0; i19 < i7; i19++) {
                iArr2[i19] = i4;
            }
            for (int i20 = 0; i20 < i7; i20++) {
                for (int i21 = 0; i21 < i3; i21++) {
                    iArr[i20][i21] = i4;
                }
            }
            int i22 = 0;
            i18 = 0;
            while (i22 < this.nMTF) {
                int i23 = (i22 + 50) - i;
                int i24 = i23;
                if (i23 >= this.nMTF) {
                    i24 = this.nMTF - i;
                }
                for (int i25 = 0; i25 < i7; i25++) {
                    sArr[i25] = (short) i4;
                }
                if (i7 == i2) {
                    short s = 0;
                    short s2 = 0;
                    short s3 = 0;
                    short s4 = 0;
                    short s5 = 0;
                    short s6 = 0;
                    int i26 = i;
                    int i27 = i22;
                    while (i27 <= i24) {
                        short s7 = this.szptr[i27];
                        s = (short) (s + cArr[i4][s7]);
                        s2 = (short) (s2 + cArr[i26][s7]);
                        s3 = (short) (s3 + cArr[2][s7]);
                        s4 = (short) (s4 + cArr[3][s7]);
                        s5 = (short) (s5 + cArr[4][s7]);
                        s6 = (short) (s6 + cArr[5][s7]);
                        i27++;
                        i4 = 0;
                        i26 = 1;
                    }
                    sArr[0] = s;
                    sArr[1] = s2;
                    sArr[2] = s3;
                    sArr[3] = s4;
                    sArr[4] = s5;
                    sArr[5] = s6;
                } else {
                    for (int i28 = i22; i28 <= i24; i28++) {
                        short s8 = this.szptr[i28];
                        for (int i29 = 0; i29 < i7; i29++) {
                            sArr[i29] = (short) (sArr[i29] + cArr[i29][s8]);
                        }
                    }
                }
                short s9 = 999999999;
                int i30 = -1;
                for (int i31 = 0; i31 < i7; i31++) {
                    s9 = s9;
                    if (sArr[i31] < s9) {
                        s9 = sArr[i31];
                        i30 = i31;
                    }
                }
                iArr2[i30] = iArr2[i30] + 1;
                this.selector[i18] = (char) i30;
                i18++;
                while (i22 <= i24) {
                    int[] iArr3 = iArr[i30];
                    short s10 = this.szptr[i22];
                    iArr3[s10] = iArr3[s10] + 1;
                    i22++;
                }
                i22 = i24 + 1;
                i2 = 6;
                i4 = 0;
                i = 1;
            }
            for (int i32 = 0; i32 < i7; i32++) {
                hbMakeCodeLengths(cArr[i32], iArr[i32], i3, 20);
            }
            i17++;
            i2 = i2;
        }
        if (i7 >= 8) {
            panic();
        }
        if (i18 >= 32768 || i18 > 18002) {
            panic();
        }
        char[] cArr2 = new char[6];
        for (int i33 = 0; i33 < i7; i33++) {
            cArr2[i33] = (char) i33;
        }
        for (int i34 = 0; i34 < i18; i34++) {
            char c = this.selector[i34];
            char c2 = cArr2[0];
            int i35 = 0;
            while (c != c2) {
                i35++;
                c2 = cArr2[i35];
                cArr2[i35] = c2;
            }
            cArr2[0] = c2;
            this.selectorMtf[i34] = (char) i35;
        }
        int[][] iArr4 = new int[6][BZip2Constants.MAX_ALPHA_SIZE];
        for (int i36 = 0; i36 < i7; i36++) {
            char c3 = ' ';
            char c4 = 0;
            for (int i37 = 0; i37 < i3; i37++) {
                c4 = c4;
                if (cArr[i36][i37] > c4) {
                    c4 = cArr[i36][i37];
                }
                c3 = c3;
                if (cArr[i36][i37] < c3) {
                    c3 = cArr[i36][i37];
                }
            }
            if (c4 > 20) {
                panic();
            }
            if (c3 < 1) {
                panic();
            }
            hbAssignCodes(iArr4[i36], cArr[i36], c3, c4, i3);
        }
        boolean[] zArr = new boolean[16];
        for (int i38 = 0; i38 < 16; i38++) {
            zArr[i38] = false;
            for (int i39 = 0; i39 < 16; i39++) {
                if (this.inUse[(i38 * 16) + i39]) {
                    zArr[i38] = true;
                }
            }
        }
        for (int i40 = 0; i40 < 16; i40++) {
            if (zArr[i40]) {
                bsW(1, 1);
            } else {
                bsW(1, 0);
            }
        }
        for (int i41 = 0; i41 < 16; i41++) {
            if (zArr[i41]) {
                for (int i42 = 0; i42 < 16; i42++) {
                    if (this.inUse[(i41 * 16) + i42]) {
                        bsW(1, 1);
                    } else {
                        bsW(1, 0);
                    }
                }
            }
        }
        bsW(3, i7);
        bsW(15, i18);
        for (int i43 = 0; i43 < i18; i43++) {
            for (int i44 = 0; i44 < this.selectorMtf[i43]; i44++) {
                bsW(1, 1);
            }
            bsW(1, 0);
        }
        for (int i45 = 0; i45 < i7; i45++) {
            char c5 = cArr[i45][0];
            bsW(5, c5);
            int i46 = 0;
            char c6 = c5;
            while (true) {
                int i47 = c6;
                if (i46 < i3) {
                    while (i47 < cArr[i45][i46]) {
                        bsW(2, 2);
                        i47++;
                    }
                    while (i47 > cArr[i45][i46]) {
                        bsW(2, 3);
                        i47--;
                    }
                    bsW(1, 0);
                    i46++;
                    c6 = i47;
                }
            }
        }
        int i48 = 0;
        int i49 = 0;
        while (i48 < this.nMTF) {
            int i50 = (i48 + 50) - 1;
            int i51 = i50;
            int i52 = i48;
            if (i50 >= this.nMTF) {
                i51 = this.nMTF - 1;
                i52 = i48;
            }
            while (i52 <= i51) {
                bsW(cArr[this.selector[i49]][this.szptr[i52]], iArr4[this.selector[i49]][this.szptr[i52]]);
                i52++;
            }
            i48 = i51 + 1;
            i49++;
        }
        if (i49 != i18) {
            panic();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x011e, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x011e, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void simpleSort(int r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.apache.bzip2.CBZip2OutputStream.simpleSort(int, int, int):void");
    }

    private void vswap(int i, int i2, int i3) {
        while (i3 > 0) {
            int i4 = this.zptr[i];
            this.zptr[i] = this.zptr[i2];
            this.zptr[i2] = i4;
            i++;
            i2++;
            i3--;
        }
    }

    private void writeRun() throws IOException {
        if (this.last < this.allowableBlockSize) {
            this.inUse[this.currentChar] = true;
            for (int i = 0; i < this.runLength; i++) {
                this.mCrc.updateCRC((char) this.currentChar);
            }
            switch (this.runLength) {
                case 1:
                    this.last++;
                    this.block[this.last + 1] = (char) this.currentChar;
                    return;
                case 2:
                    this.last++;
                    this.block[this.last + 1] = (char) this.currentChar;
                    this.last++;
                    this.block[this.last + 1] = (char) this.currentChar;
                    return;
                case 3:
                    this.last++;
                    this.block[this.last + 1] = (char) this.currentChar;
                    this.last++;
                    this.block[this.last + 1] = (char) this.currentChar;
                    this.last++;
                    this.block[this.last + 1] = (char) this.currentChar;
                    return;
                default:
                    this.inUse[this.runLength - 4] = true;
                    this.last++;
                    this.block[this.last + 1] = (char) this.currentChar;
                    this.last++;
                    this.block[this.last + 1] = (char) this.currentChar;
                    this.last++;
                    this.block[this.last + 1] = (char) this.currentChar;
                    this.last++;
                    this.block[this.last + 1] = (char) this.currentChar;
                    this.last++;
                    this.block[this.last + 1] = (char) (this.runLength - 4);
                    return;
            }
        } else {
            endBlock();
            initBlock();
            writeRun();
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.closed) {
            finish();
            this.closed = true;
            super.close();
            this.bsStream.close();
        }
    }

    protected void finalize() throws Throwable {
        close();
        super.finalize();
    }

    public void finish() throws IOException {
        if (!this.finished) {
            if (this.runLength > 0) {
                writeRun();
            }
            this.currentChar = -1;
            endBlock();
            endCompression();
            this.finished = true;
            flush();
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        super.flush();
        this.bsStream.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        int i2 = (i + 256) % 256;
        if (this.currentChar == -1) {
            this.currentChar = i2;
            this.runLength++;
        } else if (this.currentChar == i2) {
            this.runLength++;
            if (this.runLength > 254) {
                writeRun();
                this.currentChar = -1;
                this.runLength = 0;
            }
        } else {
            writeRun();
            this.runLength = 1;
            this.currentChar = i2;
        }
    }
}
