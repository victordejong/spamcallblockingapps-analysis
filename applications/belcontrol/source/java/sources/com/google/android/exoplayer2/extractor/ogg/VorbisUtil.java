package com.google.android.exoplayer2.extractor.ogg;

import android.util.Log;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ogg/VorbisUtil.class */
public final class VorbisUtil {
    private static final String TAG = "VorbisUtil";

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ogg/VorbisUtil$CodeBook.class */
    public static final class CodeBook {
        public final int dimensions;
        public final int entries;
        public final boolean isOrdered;
        public final long[] lengthMap;
        public final int lookupType;

        public CodeBook(int i, int i2, long[] jArr, int i3, boolean z) {
            this.dimensions = i;
            this.entries = i2;
            this.lengthMap = jArr;
            this.lookupType = i3;
            this.isOrdered = z;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ogg/VorbisUtil$CommentHeader.class */
    public static final class CommentHeader {
        public final String[] comments;
        public final int length;
        public final String vendor;

        public CommentHeader(String str, String[] strArr, int i) {
            this.vendor = str;
            this.comments = strArr;
            this.length = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ogg/VorbisUtil$Mode.class */
    public static final class Mode {
        public final boolean blockFlag;
        public final int mapping;
        public final int transformType;
        public final int windowType;

        public Mode(boolean z, int i, int i2, int i3) {
            this.blockFlag = z;
            this.windowType = i;
            this.transformType = i2;
            this.mapping = i3;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader.class */
    public static final class VorbisIdHeader {
        public final int bitrateMax;
        public final int bitrateMin;
        public final int bitrateNominal;
        public final int blockSize0;
        public final int blockSize1;
        public final int channels;
        public final byte[] data;
        public final boolean framingFlag;
        public final long sampleRate;
        public final long version;

        public VorbisIdHeader(long j, int i, long j2, int i2, int i3, int i4, int i5, int i6, boolean z, byte[] bArr) {
            this.version = j;
            this.channels = i;
            this.sampleRate = j2;
            this.bitrateMax = i2;
            this.bitrateNominal = i3;
            this.bitrateMin = i4;
            this.blockSize0 = i5;
            this.blockSize1 = i6;
            this.framingFlag = z;
            this.data = bArr;
        }

        public int getApproximateBitrate() {
            int i = this.bitrateNominal;
            int i2 = i;
            if (i == 0) {
                i2 = (this.bitrateMin + this.bitrateMax) / 2;
            }
            return i2;
        }
    }

    private VorbisUtil() {
    }

    public static int iLog(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    private static long mapType1QuantValues(long j, long j2) {
        return (long) Math.floor(Math.pow(j, 1.0d / j2));
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    private static CodeBook readBook(VorbisBitArray vorbisBitArray) {
        if (vorbisBitArray.readBits(24) != 5653314) {
            throw new ParserException("expected code book to start with [0x56, 0x43, 0x42] at " + vorbisBitArray.getPosition());
        }
        int readBits = vorbisBitArray.readBits(16);
        int readBits2 = vorbisBitArray.readBits(24);
        long[] jArr = new long[readBits2];
        boolean readBit = vorbisBitArray.readBit();
        char c = 0;
        if (!readBit) {
            boolean readBit2 = vorbisBitArray.readBit();
            for (int i = 0; i < readBits2; i++) {
                if (!readBit2) {
                    jArr[i] = vorbisBitArray.readBits(5) + 1;
                } else if (vorbisBitArray.readBit()) {
                    jArr[i] = vorbisBitArray.readBits(5) + 1;
                } else {
                    jArr[i] = 0;
                }
            }
        } else {
            int readBits3 = vorbisBitArray.readBits(5) + 1;
            int i2 = 0;
            while (i2 < readBits2) {
                int readBits4 = vorbisBitArray.readBits(iLog(readBits2 - i2));
                for (int i3 = 0; i3 < readBits4 && i2 < readBits2; i3++) {
                    jArr[i2] = readBits3;
                    i2++;
                }
                readBits3++;
            }
        }
        int readBits5 = vorbisBitArray.readBits(4);
        if (readBits5 > 2) {
            throw new ParserException("lookup type greater than 2 not decodable: " + readBits5);
        }
        if (readBits5 == 1 || readBits5 == 2) {
            vorbisBitArray.skipBits(32);
            vorbisBitArray.skipBits(32);
            int readBits6 = vorbisBitArray.readBits(4);
            vorbisBitArray.skipBits(1);
            if (readBits5 != 1) {
                c = readBits2 * readBits;
            } else if (readBits != 0) {
                c = mapType1QuantValues(readBits2, readBits);
            }
            vorbisBitArray.skipBits((int) (c * (readBits6 + 1)));
        }
        return new CodeBook(readBits, readBits2, jArr, readBits5, readBit);
    }

    private static void readFloors(VorbisBitArray vorbisBitArray) {
        int readBits = vorbisBitArray.readBits(6);
        for (int i = 0; i < readBits + 1; i++) {
            int readBits2 = vorbisBitArray.readBits(16);
            if (readBits2 == 0) {
                vorbisBitArray.skipBits(8);
                vorbisBitArray.skipBits(16);
                vorbisBitArray.skipBits(16);
                vorbisBitArray.skipBits(6);
                vorbisBitArray.skipBits(8);
                int readBits3 = vorbisBitArray.readBits(4);
                for (int i2 = 0; i2 < readBits3 + 1; i2++) {
                    vorbisBitArray.skipBits(8);
                }
            } else if (readBits2 != 1) {
                throw new ParserException("floor type greater than 1 not decodable: " + readBits2);
            } else {
                int readBits4 = vorbisBitArray.readBits(5);
                int i3 = -1;
                int[] iArr = new int[readBits4];
                int i4 = 0;
                while (i4 < readBits4) {
                    iArr[i4] = vorbisBitArray.readBits(4);
                    int i5 = i3;
                    if (iArr[i4] > i3) {
                        i5 = iArr[i4];
                    }
                    i4++;
                    i3 = i5;
                }
                int i6 = i3 + 1;
                int[] iArr2 = new int[i6];
                for (int i7 = 0; i7 < i6; i7++) {
                    iArr2[i7] = vorbisBitArray.readBits(3) + 1;
                    int readBits5 = vorbisBitArray.readBits(2);
                    if (readBits5 > 0) {
                        vorbisBitArray.skipBits(8);
                    }
                    for (int i8 = 0; i8 < (1 << readBits5); i8++) {
                        vorbisBitArray.skipBits(8);
                    }
                }
                vorbisBitArray.skipBits(2);
                int readBits6 = vorbisBitArray.readBits(4);
                int i9 = 0;
                int i10 = 0;
                for (int i11 = 0; i11 < readBits4; i11++) {
                    i9 += iArr2[iArr[i11]];
                    while (i10 < i9) {
                        vorbisBitArray.skipBits(readBits6);
                        i10++;
                    }
                }
            }
        }
    }

    private static void readMappings(int i, VorbisBitArray vorbisBitArray) {
        int readBits = vorbisBitArray.readBits(6);
        for (int i2 = 0; i2 < readBits + 1; i2++) {
            int readBits2 = vorbisBitArray.readBits(16);
            if (readBits2 != 0) {
                Log.e(TAG, "mapping type other than 0 not supported: " + readBits2);
            } else {
                int readBits3 = vorbisBitArray.readBit() ? vorbisBitArray.readBits(4) + 1 : 1;
                if (vorbisBitArray.readBit()) {
                    int readBits4 = vorbisBitArray.readBits(8);
                    for (int i3 = 0; i3 < readBits4 + 1; i3++) {
                        int i4 = i - 1;
                        vorbisBitArray.skipBits(iLog(i4));
                        vorbisBitArray.skipBits(iLog(i4));
                    }
                }
                if (vorbisBitArray.readBits(2) != 0) {
                    throw new ParserException("to reserved bits must be zero after mapping coupling steps");
                }
                if (readBits3 > 1) {
                    for (int i5 = 0; i5 < i; i5++) {
                        vorbisBitArray.skipBits(4);
                    }
                }
                for (int i6 = 0; i6 < readBits3; i6++) {
                    vorbisBitArray.skipBits(8);
                    vorbisBitArray.skipBits(8);
                    vorbisBitArray.skipBits(8);
                }
            }
        }
    }

    private static Mode[] readModes(VorbisBitArray vorbisBitArray) {
        int readBits = vorbisBitArray.readBits(6) + 1;
        Mode[] modeArr = new Mode[readBits];
        for (int i = 0; i < readBits; i++) {
            modeArr[i] = new Mode(vorbisBitArray.readBit(), vorbisBitArray.readBits(16), vorbisBitArray.readBits(16), vorbisBitArray.readBits(8));
        }
        return modeArr;
    }

    private static void readResidues(VorbisBitArray vorbisBitArray) {
        int readBits = vorbisBitArray.readBits(6);
        for (int i = 0; i < readBits + 1; i++) {
            if (vorbisBitArray.readBits(16) > 2) {
                throw new ParserException("residueType greater than 2 is not decodable");
            }
            vorbisBitArray.skipBits(24);
            vorbisBitArray.skipBits(24);
            vorbisBitArray.skipBits(24);
            int readBits2 = vorbisBitArray.readBits(6) + 1;
            vorbisBitArray.skipBits(8);
            int[] iArr = new int[readBits2];
            for (int i2 = 0; i2 < readBits2; i2++) {
                iArr[i2] = ((vorbisBitArray.readBit() ? vorbisBitArray.readBits(5) : 0) * 8) + vorbisBitArray.readBits(3);
            }
            for (int i3 = 0; i3 < readBits2; i3++) {
                for (int i4 = 0; i4 < 8; i4++) {
                    if ((iArr[i3] & (1 << i4)) != 0) {
                        vorbisBitArray.skipBits(8);
                    }
                }
            }
        }
    }

    public static CommentHeader readVorbisCommentHeader(ParsableByteArray parsableByteArray) {
        verifyVorbisHeaderCapturePattern(3, parsableByteArray, false);
        String readString = parsableByteArray.readString((int) parsableByteArray.readLittleEndianUnsignedInt());
        int length = readString.length();
        long readLittleEndianUnsignedInt = parsableByteArray.readLittleEndianUnsignedInt();
        String[] strArr = new String[(int) readLittleEndianUnsignedInt];
        int i = 11 + length + 4;
        for (int i2 = 0; i2 < readLittleEndianUnsignedInt; i2++) {
            strArr[i2] = parsableByteArray.readString((int) parsableByteArray.readLittleEndianUnsignedInt());
            i = i + 4 + strArr[i2].length();
        }
        if ((parsableByteArray.readUnsignedByte() & 1) != 0) {
            return new CommentHeader(readString, strArr, i + 1);
        }
        throw new ParserException("framing bit expected to be set");
    }

    public static VorbisIdHeader readVorbisIdentificationHeader(ParsableByteArray parsableByteArray) {
        verifyVorbisHeaderCapturePattern(1, parsableByteArray, false);
        long readLittleEndianUnsignedInt = parsableByteArray.readLittleEndianUnsignedInt();
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        long readLittleEndianUnsignedInt2 = parsableByteArray.readLittleEndianUnsignedInt();
        int readLittleEndianInt = parsableByteArray.readLittleEndianInt();
        int readLittleEndianInt2 = parsableByteArray.readLittleEndianInt();
        int readLittleEndianInt3 = parsableByteArray.readLittleEndianInt();
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
        return new VorbisIdHeader(readLittleEndianUnsignedInt, readUnsignedByte, readLittleEndianUnsignedInt2, readLittleEndianInt, readLittleEndianInt2, readLittleEndianInt3, (int) Math.pow(2.0d, readUnsignedByte2 & 15), (int) Math.pow(2.0d, (readUnsignedByte2 & HighLevelEncoder.LATCH_TO_EDIFACT) >> 4), (parsableByteArray.readUnsignedByte() & 1) > 0, Arrays.copyOf(parsableByteArray.data, parsableByteArray.limit()));
    }

    public static Mode[] readVorbisModes(ParsableByteArray parsableByteArray, int i) {
        verifyVorbisHeaderCapturePattern(5, parsableByteArray, false);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        VorbisBitArray vorbisBitArray = new VorbisBitArray(parsableByteArray.data);
        vorbisBitArray.skipBits(parsableByteArray.getPosition() * 8);
        for (int i2 = 0; i2 < readUnsignedByte + 1; i2++) {
            readBook(vorbisBitArray);
        }
        int readBits = vorbisBitArray.readBits(6);
        for (int i3 = 0; i3 < readBits + 1; i3++) {
            if (vorbisBitArray.readBits(16) != 0) {
                throw new ParserException("placeholder of time domain transforms not zeroed out");
            }
        }
        readFloors(vorbisBitArray);
        readResidues(vorbisBitArray);
        readMappings(i, vorbisBitArray);
        Mode[] readModes = readModes(vorbisBitArray);
        if (vorbisBitArray.readBit()) {
            return readModes;
        }
        throw new ParserException("framing bit after modes not set as expected");
    }

    public static boolean verifyVorbisHeaderCapturePattern(int i, ParsableByteArray parsableByteArray, boolean z) {
        if (parsableByteArray.bytesLeft() < 7) {
            if (z) {
                return false;
            }
            throw new ParserException("too short header: " + parsableByteArray.bytesLeft());
        } else if (parsableByteArray.readUnsignedByte() != i) {
            if (z) {
                return false;
            }
            throw new ParserException("expected header type " + Integer.toHexString(i));
        } else if (parsableByteArray.readUnsignedByte() == 118 && parsableByteArray.readUnsignedByte() == 111 && parsableByteArray.readUnsignedByte() == 114 && parsableByteArray.readUnsignedByte() == 98 && parsableByteArray.readUnsignedByte() == 105 && parsableByteArray.readUnsignedByte() == 115) {
            return true;
        } else {
            if (!z) {
                throw new ParserException("expected characters 'vorbis'");
            }
            return false;
        }
    }
}
