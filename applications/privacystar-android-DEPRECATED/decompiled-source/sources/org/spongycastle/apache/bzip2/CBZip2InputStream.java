package org.spongycastle.apache.bzip2;

import android.support.p001v4.view.InputDeviceCompat;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/apache/bzip2/CBZip2InputStream.class */
public class CBZip2InputStream extends InputStream implements BZip2Constants {
    private static final int NO_RAND_PART_A_STATE = 5;
    private static final int NO_RAND_PART_B_STATE = 6;
    private static final int NO_RAND_PART_C_STATE = 7;
    private static final int RAND_PART_A_STATE = 2;
    private static final int RAND_PART_B_STATE = 3;
    private static final int RAND_PART_C_STATE = 4;
    private static final int START_BLOCK_STATE = 1;
    private boolean blockRandomised;
    private int blockSize100k;
    private int bsBuff;
    private int bsLive;
    private InputStream bsStream;
    int ch2;
    int chPrev;
    private int computedBlockCRC;
    private int computedCombinedCRC;
    int count;

    /* renamed from: i */
    int f860i;

    /* renamed from: i2 */
    int f861i2;

    /* renamed from: j2 */
    int f862j2;
    private int last;
    private int nInUse;
    private int origPtr;
    private int storedBlockCRC;
    private int storedCombinedCRC;
    int tPos;

    /* renamed from: z */
    char f864z;
    private CRC mCrc = new CRC();
    private boolean[] inUse = new boolean[256];
    private char[] seqToUnseq = new char[256];
    private char[] unseqToSeq = new char[256];
    private char[] selector = new char[BZip2Constants.MAX_SELECTORS];
    private char[] selectorMtf = new char[BZip2Constants.MAX_SELECTORS];
    private int[] unzftab = new int[256];
    private int[][] limit = new int[6][BZip2Constants.MAX_ALPHA_SIZE];
    private int[][] base = new int[6][BZip2Constants.MAX_ALPHA_SIZE];
    private int[][] perm = new int[6][BZip2Constants.MAX_ALPHA_SIZE];
    private int[] minLens = new int[6];
    private boolean streamEnd = false;
    private int currentChar = -1;
    private int currentState = 1;
    int rNToGo = 0;
    int rTPos = 0;
    private char[] ll8 = null;

    /* renamed from: tt */
    private int[] f863tt = null;

    public CBZip2InputStream(InputStream inputStream) throws IOException {
        bsSetStream(inputStream);
        initialize();
        initBlock();
        setupBlock();
    }

    private static void badBlockHeader() {
        cadvise();
    }

    private static void blockOverrun() {
        cadvise();
    }

    private void bsFinishedWithStream() {
        try {
            if (this.bsStream != null && this.bsStream != System.in) {
                this.bsStream.close();
                this.bsStream = null;
            }
        } catch (IOException e) {
        }
    }

    private int bsGetInt32() {
        return bsGetint();
    }

    private int bsGetIntVS(int i) {
        return bsR(i);
    }

    private char bsGetUChar() {
        return (char) bsR(8);
    }

    private int bsGetint() {
        int bsR = bsR(8);
        int bsR2 = bsR(8);
        return bsR(8) | ((((((bsR | 0) << 8) | bsR2) << 8) | bsR(8)) << 8);
    }

    private int bsR(int i) {
        while (this.bsLive < i) {
            char c = 0;
            try {
                c = (char) this.bsStream.read();
            } catch (IOException e) {
                compressedStreamEOF();
            }
            if (c == 65535) {
                compressedStreamEOF();
            }
            this.bsBuff = (c & 255) | (this.bsBuff << 8);
            this.bsLive += 8;
        }
        int i2 = this.bsBuff;
        int i3 = this.bsLive;
        this.bsLive -= i;
        return (i2 >> (i3 - i)) & ((1 << i) - 1);
    }

    private void bsSetStream(InputStream inputStream) {
        this.bsStream = inputStream;
        this.bsLive = 0;
        this.bsBuff = 0;
    }

    private static void cadvise() {
        System.out.println("CRC Error");
    }

    private void complete() {
        this.storedCombinedCRC = bsGetInt32();
        if (this.storedCombinedCRC != this.computedCombinedCRC) {
            crcError();
        }
        bsFinishedWithStream();
        this.streamEnd = true;
    }

    private static void compressedStreamEOF() {
        cadvise();
    }

    private static void crcError() {
        cadvise();
    }

    private void endBlock() {
        this.computedBlockCRC = this.mCrc.getFinalCRC();
        if (this.storedBlockCRC != this.computedBlockCRC) {
            crcError();
        }
        this.computedCombinedCRC = (this.computedCombinedCRC << 1) | (this.computedCombinedCRC >>> 31);
        this.computedCombinedCRC ^= this.computedBlockCRC;
    }

    private void getAndMoveToFrontDecode() {
        int i;
        int i2;
        char c;
        int i3;
        char c2;
        int i4;
        int i5;
        int i6;
        char c3;
        char[] cArr = new char[256];
        int i7 = this.blockSize100k * BZip2Constants.baseBlockSize;
        this.origPtr = bsGetIntVS(24);
        recvDecodingTables();
        int i8 = this.nInUse;
        for (int i9 = 0; i9 <= 255; i9++) {
            this.unzftab[i9] = 0;
        }
        for (int i10 = 0; i10 <= 255; i10++) {
            cArr[i10] = (char) i10;
        }
        this.last = -1;
        int i11 = 49;
        char c4 = this.selector[0];
        int i12 = this.minLens[c4];
        int bsR = bsR(i12);
        while (bsR > this.limit[c4][i12]) {
            i12++;
            while (this.bsLive < 1) {
                try {
                    c3 = (char) this.bsStream.read();
                } catch (IOException e) {
                    compressedStreamEOF();
                    c3 = 0;
                }
                if (c3 == 65535) {
                    compressedStreamEOF();
                }
                this.bsBuff = (c3 & 255) | (this.bsBuff << 8);
                this.bsLive += 8;
            }
            int i13 = this.bsBuff;
            int i14 = this.bsLive;
            this.bsLive--;
            bsR = (bsR << 1) | ((i13 >> (i14 - 1)) & 1);
        }
        int i15 = this.perm[c4][bsR - this.base[c4][i12]];
        int i16 = 0;
        while (i15 != i8 + 1) {
            if (i15 == 0 || i15 == 1) {
                int i17 = -1;
                int i18 = 1;
                int i19 = i16;
                int i20 = i11;
                while (true) {
                    if (i15 == 0) {
                        i = i17 + (i18 * 1);
                    } else {
                        i = i17;
                        if (i15 == 1) {
                            i = i17 + (i18 * 2);
                        }
                    }
                    i18 *= 2;
                    int i21 = i20;
                    i2 = i19;
                    if (i20 == 0) {
                        i2 = i19 + 1;
                        i21 = 50;
                    }
                    i20 = i21 - 1;
                    char c5 = this.selector[i2];
                    int i22 = this.minLens[c5];
                    int bsR2 = bsR(i22);
                    while (bsR2 > this.limit[c5][i22]) {
                        i22++;
                        while (this.bsLive < 1) {
                            try {
                                c = (char) this.bsStream.read();
                            } catch (IOException e2) {
                                compressedStreamEOF();
                                c = 0;
                            }
                            if (c == 65535) {
                                compressedStreamEOF();
                            }
                            this.bsBuff = (this.bsBuff << 8) | (c & 255);
                            this.bsLive += 8;
                        }
                        int i23 = this.bsBuff;
                        int i24 = this.bsLive;
                        this.bsLive--;
                        bsR2 = (bsR2 << 1) | ((i23 >> (i24 - 1)) & 1);
                    }
                    i15 = this.perm[c5][bsR2 - this.base[c5][i22]];
                    if (!(i15 == 0 || i15 == 1)) {
                        break;
                    }
                    i17 = i;
                    i19 = i2;
                }
                int i25 = i + 1;
                char c6 = this.seqToUnseq[cArr[0]];
                int[] iArr = this.unzftab;
                iArr[c6] = iArr[c6] + i25;
                while (i25 > 0) {
                    this.last++;
                    this.ll8[this.last] = c6;
                    i25--;
                }
                if (this.last >= i7) {
                    blockOverrun();
                }
                i16 = i2;
                i11 = i20;
            } else {
                this.last++;
                if (this.last >= i7) {
                    blockOverrun();
                }
                int i26 = i15 - 1;
                char c7 = cArr[i26];
                int[] iArr2 = this.unzftab;
                char c8 = this.seqToUnseq[c7];
                iArr2[c8] = iArr2[c8] + 1;
                this.ll8[this.last] = this.seqToUnseq[c7];
                while (true) {
                    if (i26 > 3) {
                        cArr[i26] = cArr[i4];
                        cArr[i26 - 1] = cArr[i5];
                        cArr[i26 - 2] = cArr[i6];
                        cArr[i26 - 3] = cArr[i26 - 4];
                        i26 -= 4;
                    }
                }
                for (i3 = i26; i3 > 0; i3--) {
                    cArr[i3] = cArr[i3 - 1];
                }
                cArr[0] = c7;
                int i27 = i11;
                int i28 = i16;
                if (i11 == 0) {
                    i28 = i16 + 1;
                    i27 = 50;
                }
                i11 = i27 - 1;
                char c9 = this.selector[i28];
                int i29 = this.minLens[c9];
                int bsR3 = bsR(i29);
                while (bsR3 > this.limit[c9][i29]) {
                    i29++;
                    while (this.bsLive < 1) {
                        try {
                            c2 = (char) this.bsStream.read();
                        } catch (IOException e3) {
                            compressedStreamEOF();
                            c2 = 0;
                        }
                        this.bsBuff = (c2 & 255) | (this.bsBuff << 8);
                        this.bsLive += 8;
                    }
                    int i30 = this.bsBuff;
                    int i31 = this.bsLive;
                    this.bsLive--;
                    bsR3 = (bsR3 << 1) | ((i30 >> (i31 - 1)) & 1);
                }
                i15 = this.perm[c9][bsR3 - this.base[c9][i29]];
                i16 = i28;
            }
        }
    }

    private void hbCreateDecodeTables(int[] iArr, int[] iArr2, int[] iArr3, char[] cArr, int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 0;
        for (int i6 = i; i6 <= i2; i6++) {
            for (int i7 = 0; i7 < i3; i7++) {
                i5 = i5;
                if (cArr[i7] == i6) {
                    iArr3[i5] = i7;
                    i5++;
                }
            }
        }
        for (int i8 = 0; i8 < 23; i8++) {
            iArr2[i8] = 0;
        }
        for (int i9 = 0; i9 < i3; i9++) {
            int i10 = cArr[i9] + 1;
            iArr2[i10] = iArr2[i10] + 1;
        }
        for (int i11 = 1; i11 < 23; i11++) {
            iArr2[i11] = iArr2[i11] + iArr2[i11 - 1];
        }
        for (int i12 = 0; i12 < 23; i12++) {
            iArr[i12] = 0;
        }
        int i13 = i;
        while (i13 <= i2) {
            int i14 = i13 + 1;
            int i15 = i4 + (iArr2[i14] - iArr2[i13]);
            iArr[i13] = i15 - 1;
            i4 = i15 << 1;
            i13 = i14;
        }
        while (true) {
            i++;
            if (i <= i2) {
                iArr2[i] = ((iArr[i - 1] + 1) << 1) - iArr2[i];
            } else {
                return;
            }
        }
    }

    private void initBlock() {
        char bsGetUChar = bsGetUChar();
        char bsGetUChar2 = bsGetUChar();
        char bsGetUChar3 = bsGetUChar();
        char bsGetUChar4 = bsGetUChar();
        char bsGetUChar5 = bsGetUChar();
        char bsGetUChar6 = bsGetUChar();
        if (bsGetUChar == 23 && bsGetUChar2 == 'r' && bsGetUChar3 == 'E' && bsGetUChar4 == '8' && bsGetUChar5 == 'P' && bsGetUChar6 == 144) {
            complete();
        } else if (bsGetUChar == '1' && bsGetUChar2 == 'A' && bsGetUChar3 == 'Y' && bsGetUChar4 == '&' && bsGetUChar5 == 'S' && bsGetUChar6 == 'Y') {
            this.storedBlockCRC = bsGetInt32();
            if (bsR(1) == 1) {
                this.blockRandomised = true;
            } else {
                this.blockRandomised = false;
            }
            getAndMoveToFrontDecode();
            this.mCrc.initialiseCRC();
            this.currentState = 1;
        } else {
            badBlockHeader();
            this.streamEnd = true;
        }
    }

    private void initialize() throws IOException {
        char bsGetUChar = bsGetUChar();
        char bsGetUChar2 = bsGetUChar();
        if (bsGetUChar == 'B' || bsGetUChar2 == 'Z') {
            char bsGetUChar3 = bsGetUChar();
            char bsGetUChar4 = bsGetUChar();
            if (bsGetUChar3 != 'h' || bsGetUChar4 < '1' || bsGetUChar4 > '9') {
                bsFinishedWithStream();
                this.streamEnd = true;
                return;
            }
            setDecompressStructureSizes(bsGetUChar4 - '0');
            this.computedCombinedCRC = 0;
            return;
        }
        throw new IOException("Not a BZIP2 marked stream");
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

    private void recvDecodingTables() {
        char[][] cArr = new char[6][BZip2Constants.MAX_ALPHA_SIZE];
        boolean[] zArr = new boolean[16];
        for (int i = 0; i < 16; i++) {
            if (bsR(1) == 1) {
                zArr[i] = true;
            } else {
                zArr[i] = false;
            }
        }
        for (int i2 = 0; i2 < 256; i2++) {
            this.inUse[i2] = false;
        }
        for (int i3 = 0; i3 < 16; i3++) {
            if (zArr[i3]) {
                for (int i4 = 0; i4 < 16; i4++) {
                    if (bsR(1) == 1) {
                        this.inUse[(i3 * 16) + i4] = true;
                    }
                }
            }
        }
        makeMaps();
        int i5 = this.nInUse + 2;
        int bsR = bsR(3);
        int bsR2 = bsR(15);
        for (int i6 = 0; i6 < bsR2; i6++) {
            int i7 = 0;
            while (bsR(1) == 1) {
                i7++;
            }
            this.selectorMtf[i6] = (char) i7;
        }
        char[] cArr2 = new char[6];
        for (char c = 0; c < bsR; c = (char) (c + 1)) {
            cArr2[c] = c;
        }
        for (int i8 = 0; i8 < bsR2; i8++) {
            char c2 = this.selectorMtf[i8];
            char c3 = cArr2[c2];
            while (c2 > 0) {
                int i9 = c2 - 1;
                cArr2[c2] = cArr2[i9];
                c2 = (char) i9;
            }
            cArr2[0] = c3;
            this.selector[i8] = c3;
        }
        for (int i10 = 0; i10 < bsR; i10++) {
            int bsR3 = bsR(5);
            for (int i11 = 0; i11 < i5; i11++) {
                while (bsR(1) == 1) {
                    bsR3 = bsR(1) == 0 ? bsR3 + 1 : bsR3 - 1;
                }
                cArr[i10][i11] = (char) bsR3;
            }
        }
        for (int i12 = 0; i12 < bsR; i12++) {
            char c4 = ' ';
            char c5 = 0;
            for (int i13 = 0; i13 < i5; i13++) {
                c5 = c5;
                if (cArr[i12][i13] > c5) {
                    c5 = cArr[i12][i13];
                }
                c4 = c4;
                if (cArr[i12][i13] < c4) {
                    c4 = cArr[i12][i13];
                }
            }
            hbCreateDecodeTables(this.limit[i12], this.base[i12], this.perm[i12], cArr[i12], c4, c5, i5);
            this.minLens[i12] = c4;
        }
    }

    private void setDecompressStructureSizes(int i) {
        if (i >= 0 && i <= 9 && this.blockSize100k >= 0) {
            int i2 = this.blockSize100k;
        }
        this.blockSize100k = i;
        if (i != 0) {
            int i3 = i * BZip2Constants.baseBlockSize;
            this.ll8 = new char[i3];
            this.f863tt = new int[i3];
        }
    }

    private void setupBlock() {
        int[] iArr = new int[InputDeviceCompat.SOURCE_KEYBOARD];
        iArr[0] = 0;
        this.f860i = 1;
        while (this.f860i <= 256) {
            iArr[this.f860i] = this.unzftab[this.f860i - 1];
            this.f860i++;
        }
        this.f860i = 1;
        while (this.f860i <= 256) {
            int i = this.f860i;
            iArr[i] = iArr[i] + iArr[this.f860i - 1];
            this.f860i++;
        }
        this.f860i = 0;
        while (this.f860i <= this.last) {
            char c = this.ll8[this.f860i];
            this.f863tt[iArr[c]] = this.f860i;
            iArr[c] = iArr[c] + 1;
            this.f860i++;
        }
        this.tPos = this.f863tt[this.origPtr];
        this.count = 0;
        this.f861i2 = 0;
        this.ch2 = 256;
        if (this.blockRandomised) {
            this.rNToGo = 0;
            this.rTPos = 0;
            setupRandPartA();
            return;
        }
        setupNoRandPartA();
    }

    private void setupNoRandPartA() {
        if (this.f861i2 <= this.last) {
            this.chPrev = this.ch2;
            this.ch2 = this.ll8[this.tPos];
            this.tPos = this.f863tt[this.tPos];
            this.f861i2++;
            this.currentChar = this.ch2;
            this.currentState = 6;
            this.mCrc.updateCRC(this.ch2);
            return;
        }
        endBlock();
        initBlock();
        setupBlock();
    }

    private void setupNoRandPartB() {
        if (this.ch2 != this.chPrev) {
            this.currentState = 5;
            this.count = 1;
            setupNoRandPartA();
            return;
        }
        this.count++;
        if (this.count >= 4) {
            this.f864z = this.ll8[this.tPos];
            this.tPos = this.f863tt[this.tPos];
            this.currentState = 7;
            this.f862j2 = 0;
            setupNoRandPartC();
            return;
        }
        this.currentState = 5;
        setupNoRandPartA();
    }

    private void setupNoRandPartC() {
        if (this.f862j2 < this.f864z) {
            this.currentChar = this.ch2;
            this.mCrc.updateCRC(this.ch2);
            this.f862j2++;
            return;
        }
        this.currentState = 5;
        this.f861i2++;
        this.count = 0;
        setupNoRandPartA();
    }

    private void setupRandPartA() {
        if (this.f861i2 <= this.last) {
            this.chPrev = this.ch2;
            this.ch2 = this.ll8[this.tPos];
            this.tPos = this.f863tt[this.tPos];
            int i = 0;
            if (this.rNToGo == 0) {
                this.rNToGo = rNums[this.rTPos];
                this.rTPos++;
                if (this.rTPos == 512) {
                    this.rTPos = 0;
                }
            }
            this.rNToGo--;
            int i2 = this.ch2;
            if (this.rNToGo == 1) {
                i = 1;
            }
            this.ch2 = i2 ^ i;
            this.f861i2++;
            this.currentChar = this.ch2;
            this.currentState = 3;
            this.mCrc.updateCRC(this.ch2);
            return;
        }
        endBlock();
        initBlock();
        setupBlock();
    }

    private void setupRandPartB() {
        char c = 1;
        if (this.ch2 != this.chPrev) {
            this.currentState = 2;
            this.count = 1;
            setupRandPartA();
            return;
        }
        this.count++;
        if (this.count >= 4) {
            this.f864z = this.ll8[this.tPos];
            this.tPos = this.f863tt[this.tPos];
            if (this.rNToGo == 0) {
                this.rNToGo = rNums[this.rTPos];
                this.rTPos++;
                if (this.rTPos == 512) {
                    this.rTPos = 0;
                }
            }
            this.rNToGo--;
            char c2 = this.f864z;
            if (this.rNToGo != 1) {
                c = 0;
            }
            this.f864z = (char) (c2 ^ c);
            this.f862j2 = 0;
            this.currentState = 4;
            setupRandPartC();
            return;
        }
        this.currentState = 2;
        setupRandPartA();
    }

    private void setupRandPartC() {
        if (this.f862j2 < this.f864z) {
            this.currentChar = this.ch2;
            this.mCrc.updateCRC(this.ch2);
            this.f862j2++;
            return;
        }
        this.currentState = 2;
        this.f861i2++;
        this.count = 0;
        setupRandPartA();
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.streamEnd) {
            return -1;
        }
        int i = this.currentChar;
        switch (this.currentState) {
            case 3:
                setupRandPartB();
                break;
            case 4:
                setupRandPartC();
                break;
            case 6:
                setupNoRandPartB();
                break;
            case 7:
                setupNoRandPartC();
                break;
        }
        return i;
    }
}
