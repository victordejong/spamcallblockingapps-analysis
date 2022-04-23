package org.spongycastle.crypto.digests;

import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Memoable;
import org.spongycastle.util.Pack;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/digests/DSTU7564Digest.class */
public class DSTU7564Digest implements ExtendedDigest, Memoable {
    private static final int BITS_IN_BYTE = 8;
    private static final int NB_1024 = 16;
    private static final int NB_512 = 8;
    private static final int NR_1024 = 14;
    private static final int NR_512 = 10;
    private static final int REDUCTIONAL_POLYNOMIAL = 285;
    private static final int ROWS = 8;
    private static final int STATE_BYTES_SIZE_1024 = 128;
    private static final int STATE_BYTES_SIZE_512 = 64;
    private static final byte[][] mds_matrix = {new byte[]{1, 1, 5, 1, 8, 6, 7, 4}, new byte[]{4, 1, 1, 5, 1, 8, 6, 7}, new byte[]{7, 4, 1, 1, 5, 1, 8, 6}, new byte[]{6, 7, 4, 1, 1, 5, 1, 8}, new byte[]{8, 6, 7, 4, 1, 1, 5, 1}, new byte[]{1, 8, 6, 7, 4, 1, 1, 5}, new byte[]{5, 1, 8, 6, 7, 4, 1, 1}, new byte[]{1, 5, 1, 8, 6, 7, 4, 1}};
    private static final byte[][] sBoxes = {new byte[]{-88, 67, 95, 6, 107, 117, 108, 89, 113, -33, -121, -107, 23, -16, -40, 9, 109, -13, 29, -53, -55, 77, 44, -81, 121, -32, -105, -3, 111, 75, 69, 57, 62, -35, -93, 79, -76, -74, -102, 14, 31, -65, 21, -31, 73, -46, -109, -58, -110, 114, -98, 97, -47, 99, -6, -18, -12, 25, -43, -83, 88, -92, -69, -95, -36, -14, -125, 55, 66, -28, 122, 50, -100, -52, -85, 74, -113, 110, 4, 39, 46, -25, -30, 90, -106, 22, 35, 43, -62, 101, 102, 15, -68, -87, 71, 65, 52, 72, -4, -73, 106, -120, -91, 83, -122, -7, 91, -37, 56, 123, -61, 30, 34, 51, 36, 40, 54, -57, -78, 59, -114, 119, -70, -11, 20, -97, 8, 85, -101, 76, -2, 96, 92, -38, 24, 70, -51, 125, 33, -80, 63, 27, -119, -1, -21, -124, 105, 58, -99, -41, -45, 112, 103, 64, -75, -34, 93, 48, -111, -79, 120, 17, 1, -27, 0, 104, -104, -96, -59, 2, -90, 116, 45, 11, -94, 118, -77, -66, -50, -67, -82, -23, -118, 49, 28, -20, -15, -103, -108, -86, -10, 38, 47, -17, -24, -116, 53, 3, -44, Byte.MAX_VALUE, -5, 5, -63, 94, -112, 32, 61, -126, -9, -22, 10, 13, 126, -8, 80, 26, -60, 7, 87, -72, 60, 98, -29, -56, -84, 82, 100, 16, -48, -39, 19, 12, 18, 41, 81, -71, -49, -42, 115, -115, -127, 84, -64, -19, 78, 68, -89, 42, -123, 37, -26, -54, 124, -117, 86, Byte.MIN_VALUE}, new byte[]{-50, -69, -21, -110, -22, -53, 19, -63, -23, 58, -42, -78, -46, -112, 23, -8, 66, 21, 86, -76, 101, 28, -120, 67, -59, 92, 54, -70, -11, 87, 103, -115, 49, -10, 100, 88, -98, -12, 34, -86, 117, 15, 2, -79, -33, 109, 115, 77, 124, 38, 46, -9, 8, 93, 68, 62, -97, 20, -56, -82, 84, 16, -40, -68, 26, 107, 105, -13, -67, 51, -85, -6, -47, -101, 104, 78, 22, -107, -111, -18, 76, 99, -114, 91, -52, 60, 25, -95, -127, 73, 123, -39, 111, 55, 96, -54, -25, 43, 72, -3, -106, 69, -4, 65, 18, 13, 121, -27, -119, -116, -29, 32, 48, -36, -73, 108, 74, -75, 63, -105, -44, 98, 45, 6, -92, -91, -125, 95, 42, -38, -55, 0, 126, -94, 85, -65, 17, -43, -100, -49, 14, 10, 61, 81, 125, -109, 27, -2, -60, 71, 9, -122, 11, -113, -99, 106, 7, -71, -80, -104, 24, 50, 113, 75, -17, 59, 112, -96, -28, 64, -1, -61, -87, -26, 120, -7, -117, 70, Byte.MIN_VALUE, 30, 56, -31, -72, -88, -32, 12, 35, 118, 29, 37, 36, 5, -15, 110, -108, 40, -102, -124, -24, -93, 79, 119, -45, -123, -30, 82, -14, -126, 80, 122, 47, 116, 83, -77, 97, -81, 57, 53, -34, -51, 31, -103, -84, -83, 114, 44, -35, -48, -121, -66, 94, -90, -20, 4, -58, 3, 52, -5, -37, 89, -74, -62, 1, -16, 90, -19, -89, 102, 33, Byte.MAX_VALUE, -118, 39, -57, -64, 41, -41}, new byte[]{-109, -39, -102, -75, -104, 34, 69, -4, -70, 106, -33, 2, -97, -36, 81, 89, 74, 23, 43, -62, -108, -12, -69, -93, 98, -28, 113, -44, -51, 112, 22, -31, 73, 60, -64, -40, 92, -101, -83, -123, 83, -95, 122, -56, 45, -32, -47, 114, -90, 44, -60, -29, 118, 120, -73, -76, 9, 59, 14, 65, 76, -34, -78, -112, 37, -91, -41, 3, 17, 0, -61, 46, -110, -17, 78, 18, -99, 125, -53, 53, 16, -43, 79, -98, 77, -87, 85, -58, -48, 123, 24, -105, -45, 54, -26, 72, 86, -127, -113, 119, -52, -100, -71, -30, -84, -72, 47, 21, -92, 124, -38, 56, 30, 11, 5, -42, 20, 110, 108, 126, 102, -3, -79, -27, 96, -81, 94, 51, -121, -55, -16, 93, 109, 63, -120, -115, -57, -9, 29, -23, -20, -19, Byte.MIN_VALUE, 41, 39, -49, -103, -88, 80, 15, 55, 36, 40, 48, -107, -46, 62, 91, 64, -125, -77, 105, 87, 31, 7, 28, -118, -68, 32, -21, -50, -114, -85, -18, 49, -94, 115, -7, -54, 58, 26, -5, 13, -63, -2, -6, -14, 111, -67, -106, -35, 67, 82, -74, 8, -13, -82, -66, 25, -119, 50, 38, -80, -22, 75, 100, -124, -126, 107, -11, 121, -65, 1, 95, 117, 99, 27, 35, 61, 104, 42, 101, -24, -111, -10, -1, 19, 88, -15, 71, 10, Byte.MAX_VALUE, -59, -89, -25, 97, 90, 6, 70, 68, 66, 4, -96, -37, 57, -122, 84, -86, -116, 52, 33, -117, -8, 12, 116, 103}, new byte[]{104, -115, -54, 77, 115, 75, 78, 42, -44, 82, 38, -77, 84, 30, 25, 31, 34, 3, 70, 61, 45, 74, 83, -125, 19, -118, -73, -43, 37, 121, -11, -67, 88, 47, 13, 2, -19, 81, -98, 17, -14, 62, 85, 94, -47, 22, 60, 102, 112, 93, -13, 69, 64, -52, -24, -108, 86, 8, -50, 26, 58, -46, -31, -33, -75, 56, 110, 14, -27, -12, -7, -122, -23, 79, -42, -123, 35, -49, 50, -103, 49, 20, -82, -18, -56, 72, -45, 48, -95, -110, 65, -79, 24, -60, 44, 113, 114, 68, 21, -3, 55, -66, 95, -86, -101, -120, -40, -85, -119, -100, -6, 96, -22, -68, 98, 12, 36, -90, -88, -20, 103, 32, -37, 124, 40, -35, -84, 91, 52, 126, 16, -15, 123, -113, 99, -96, 5, -102, 67, 119, 33, -65, 39, 9, -61, -97, -74, -41, 41, -62, -21, -64, -92, -117, -116, 29, -5, -1, -63, -78, -105, 46, -8, 101, -10, 117, 7, 4, 73, 51, -28, -39, -71, -48, 66, -57, 108, -112, 0, -114, 111, 80, 1, -59, -38, 71, 63, -51, 105, -94, -30, 122, -89, -58, -109, 15, 10, 6, -26, 43, -106, -93, 28, -81, 106, 18, -124, 57, -25, -80, -126, -9, -2, -99, -121, 92, -127, 53, -34, -76, -91, -4, Byte.MIN_VALUE, -17, -53, -69, 107, 118, -70, 90, 125, 120, 11, -107, -29, -83, 116, -104, 59, 54, 100, 109, -36, -16, 89, -87, 76, 23, Byte.MAX_VALUE, -111, -72, -55, 87, 27, -32, 97}};
    private int blockSize;
    private byte[] buf;
    private int bufOff;
    private int columns;
    private int hashSize;
    private long inputLength;
    private byte[] mixColumnsResult;
    private byte[] padded;
    private int rounds;
    private byte[][] state;
    private byte[] tempBuffer;
    private long[] tempLongBuffer;
    private byte[][] tempState1;
    private byte[][] tempState2;

    /* JADX WARN: Type inference failed for: r1v11, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r1v13, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r1v34, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r1v39, types: [byte[], byte[][]] */
    public DSTU7564Digest(int i) {
        if (i == 256 || i == 384 || i == 512) {
            this.hashSize = i / 8;
            if (i > 256) {
                this.blockSize = 128;
                this.columns = 16;
                this.rounds = 14;
                this.state = new byte[128];
            } else {
                this.blockSize = 64;
                this.columns = 8;
                this.rounds = 10;
                this.state = new byte[64];
            }
            for (int i2 = 0; i2 < this.state.length; i2++) {
                this.state[i2] = new byte[this.columns];
            }
            this.state[0][0] = (byte) this.state.length;
            this.padded = null;
            this.tempState1 = new byte[128];
            this.tempState2 = new byte[128];
            for (int i3 = 0; i3 < this.state.length; i3++) {
                this.tempState1[i3] = new byte[8];
                this.tempState2[i3] = new byte[8];
            }
            this.tempBuffer = new byte[16];
            this.mixColumnsResult = new byte[8];
            this.tempLongBuffer = new long[this.columns];
            this.buf = new byte[this.blockSize];
            return;
        }
        throw new IllegalArgumentException("Hash size is not recommended. Use 256/384/512 instead");
    }

    public DSTU7564Digest(DSTU7564Digest dSTU7564Digest) {
        copyIn(dSTU7564Digest);
    }

    /* renamed from: P */
    private void m193P() {
        byte[] bArr;
        for (int i = 0; i < this.rounds; i++) {
            for (int i2 = 0; i2 < this.columns; i2++) {
                this.tempState1[i2][0] = (byte) (bArr[0] ^ ((byte) ((i2 * 16) ^ i)));
            }
            for (int i3 = 0; i3 < 8; i3++) {
                for (int i4 = 0; i4 < this.columns; i4++) {
                    this.tempState1[i4][i3] = sBoxes[i3 % 4][this.tempState1[i4][i3] & 255];
                }
            }
            int i5 = 0;
            int i6 = -1;
            while (i5 < 8) {
                i6 = (i5 == 7 && this.columns == 16) ? 11 : i6 + 1;
                for (int i7 = 0; i7 < this.columns; i7++) {
                    this.tempBuffer[(i7 + i6) % this.columns] = this.tempState1[i7][i5];
                }
                for (int i8 = 0; i8 < this.columns; i8++) {
                    this.tempState1[i8][i5] = this.tempBuffer[i8];
                }
                i5++;
            }
            for (int i9 = 0; i9 < this.columns; i9++) {
                Arrays.fill(this.mixColumnsResult, (byte) 0);
                for (int i10 = 7; i10 >= 0; i10--) {
                    byte b = 0;
                    for (int i11 = 7; i11 >= 0; i11--) {
                        b = (byte) (b ^ multiplyGF(this.tempState1[i9][i11], mds_matrix[i10][i11]));
                    }
                    this.mixColumnsResult[i10] = b;
                }
                for (int i12 = 0; i12 < 8; i12++) {
                    this.tempState1[i9][i12] = this.mixColumnsResult[i12];
                }
            }
        }
    }

    /* renamed from: Q */
    private void m192Q() {
        for (int i = 0; i < this.rounds; i++) {
            for (int i2 = 0; i2 < this.columns; i2++) {
                this.tempLongBuffer[i2] = Pack.littleEndianToLong(this.tempState2[i2], 0);
                long[] jArr = this.tempLongBuffer;
                jArr[i2] = jArr[i2] + (67818912035696883L ^ (((((this.columns - i2) - 1) * 16) ^ i) << 56));
                Pack.longToLittleEndian(this.tempLongBuffer[i2], this.tempState2[i2], 0);
            }
            for (int i3 = 0; i3 < 8; i3++) {
                for (int i4 = 0; i4 < this.columns; i4++) {
                    this.tempState2[i4][i3] = sBoxes[i3 % 4][this.tempState2[i4][i3] & 255];
                }
            }
            int i5 = 0;
            int i6 = -1;
            while (i5 < 8) {
                i6 = (i5 == 7 && this.columns == 16) ? 11 : i6 + 1;
                for (int i7 = 0; i7 < this.columns; i7++) {
                    this.tempBuffer[(i7 + i6) % this.columns] = this.tempState2[i7][i5];
                }
                for (int i8 = 0; i8 < this.columns; i8++) {
                    this.tempState2[i8][i5] = this.tempBuffer[i8];
                }
                i5++;
            }
            for (int i9 = 0; i9 < this.columns; i9++) {
                Arrays.fill(this.mixColumnsResult, (byte) 0);
                for (int i10 = 7; i10 >= 0; i10--) {
                    byte b = 0;
                    for (int i11 = 7; i11 >= 0; i11--) {
                        b = (byte) (b ^ multiplyGF(this.tempState2[i9][i11], mds_matrix[i10][i11]));
                    }
                    this.mixColumnsResult[i10] = b;
                }
                for (int i12 = 0; i12 < 8; i12++) {
                    this.tempState2[i9][i12] = this.mixColumnsResult[i12];
                }
            }
        }
    }

    private void copyIn(DSTU7564Digest dSTU7564Digest) {
        this.hashSize = dSTU7564Digest.hashSize;
        this.blockSize = dSTU7564Digest.blockSize;
        this.columns = dSTU7564Digest.columns;
        this.rounds = dSTU7564Digest.rounds;
        this.padded = Arrays.clone(dSTU7564Digest.padded);
        this.state = Arrays.clone(dSTU7564Digest.state);
        this.tempState1 = Arrays.clone(dSTU7564Digest.tempState1);
        this.tempState2 = Arrays.clone(dSTU7564Digest.tempState2);
        this.tempBuffer = Arrays.clone(dSTU7564Digest.tempBuffer);
        this.mixColumnsResult = Arrays.clone(dSTU7564Digest.mixColumnsResult);
        this.tempLongBuffer = Arrays.clone(dSTU7564Digest.tempLongBuffer);
        this.inputLength = dSTU7564Digest.inputLength;
        this.bufOff = dSTU7564Digest.bufOff;
        this.buf = Arrays.clone(dSTU7564Digest.buf);
    }

    private byte multiplyGF(byte b, byte b2) {
        byte b3 = 0;
        for (int i = 0; i < 8; i++) {
            b3 = b3;
            if ((b2 & 1) == 1) {
                b3 = (byte) (b3 ^ b);
            }
            byte b4 = (byte) (b & Byte.MIN_VALUE);
            byte b5 = (byte) (b << 1);
            b = b5;
            if (b4 == Byte.MIN_VALUE) {
                b = (byte) (b5 ^ REDUCTIONAL_POLYNOMIAL);
            }
            b2 = (byte) (b2 >> 1);
        }
        return b3;
    }

    private byte[] pad(byte[] bArr, int i, int i2) {
        byte[] bArr2 = this.blockSize - i2 < 13 ? new byte[this.blockSize * 2] : new byte[this.blockSize];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        bArr2[i2] = (byte) (-128);
        Pack.longToLittleEndian(this.inputLength * 8, bArr2, bArr2.length - 12);
        return bArr2;
    }

    private void processBlock(byte[] bArr, int i) {
        for (int i2 = 0; i2 < this.state.length; i2++) {
            Arrays.fill(this.tempState1[i2], (byte) 0);
            Arrays.fill(this.tempState2[i2], (byte) 0);
        }
        for (int i3 = 0; i3 < 8; i3++) {
            for (int i4 = 0; i4 < this.columns; i4++) {
                int i5 = (i4 * 8) + i3 + i;
                this.tempState1[i4][i3] = (byte) (this.state[i4][i3] ^ bArr[i5]);
                this.tempState2[i4][i3] = bArr[i5];
            }
        }
        m193P();
        m192Q();
        for (int i6 = 0; i6 < 8; i6++) {
            for (int i7 = 0; i7 < this.columns; i7++) {
                byte[] bArr2 = this.state[i7];
                bArr2[i6] = (byte) (bArr2[i6] ^ ((byte) (this.tempState1[i7][i6] ^ this.tempState2[i7][i6])));
            }
        }
    }

    @Override // org.spongycastle.util.Memoable
    public Memoable copy() {
        return new DSTU7564Digest(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.spongycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        byte[] bArr2;
        this.padded = pad(this.buf, 0, this.bufOff);
        int length = this.padded.length;
        int i2 = 0;
        while (length != 0) {
            processBlock(this.padded, i2);
            i2 += this.blockSize;
            length -= this.blockSize;
        }
        byte[] bArr3 = new byte[128];
        for (int i3 = 0; i3 < this.state.length; i3++) {
            bArr3[i3] = new byte[8];
            System.arraycopy(this.state[i3], 0, bArr3[i3], 0, 8);
        }
        for (int i4 = 0; i4 < this.rounds; i4++) {
            for (int i5 = 0; i5 < this.columns; i5++) {
                byte[] bArr4 = bArr3[i5];
                bArr4[0] = (byte) ((bArr4[0] ? 1 : 0) ^ ((byte) ((i5 * 16) ^ i4)));
            }
            for (int i6 = 0; i6 < 8; i6++) {
                for (int i7 = 0; i7 < this.columns; i7++) {
                    bArr3[i7][i6] = sBoxes[i6 % 4][(bArr3[i7][i6] ? 1 : 0) & 255];
                }
            }
            int i8 = 0;
            int i9 = -1;
            while (i8 < 8) {
                i9 = (i8 == 7 && this.columns == 16) ? 11 : i9 + 1;
                for (int i10 = 0; i10 < this.columns; i10++) {
                    this.tempBuffer[(i10 + i9) % this.columns] = bArr3[i10][i8] ? 1 : 0;
                }
                for (int i11 = 0; i11 < this.columns; i11++) {
                    bArr3[i11][i8] = this.tempBuffer[i11];
                }
                i8++;
            }
            for (int i12 = 0; i12 < this.columns; i12++) {
                Arrays.fill(this.mixColumnsResult, (byte) 0);
                for (int i13 = 7; i13 >= 0; i13--) {
                    byte b = 0;
                    for (int i14 = 7; i14 >= 0; i14--) {
                        b = (byte) (b ^ multiplyGF(bArr3[i12][i14] ? (byte) 1 : (byte) 0, mds_matrix[i13][i14]));
                    }
                    this.mixColumnsResult[i13] = b;
                }
                for (int i15 = 0; i15 < 8; i15++) {
                    bArr3[i12][i15] = this.mixColumnsResult[i15];
                }
            }
        }
        for (int i16 = 0; i16 < 8; i16++) {
            for (int i17 = 0; i17 < this.columns; i17++) {
                this.state[i17][i16] = (byte) (bArr2[i16] ^ (bArr3[i17][i16] ? 1 : 0));
            }
        }
        byte[] bArr5 = new byte[this.columns * 8];
        int i18 = 0;
        for (int i19 = 0; i19 < this.columns; i19++) {
            for (int i20 = 0; i20 < 8; i20++) {
                bArr5[i18] = this.state[i19][i20];
                i18++;
            }
        }
        System.arraycopy(bArr5, bArr5.length - this.hashSize, bArr, i, this.hashSize);
        reset();
        return this.hashSize;
    }

    @Override // org.spongycastle.crypto.Digest
    public String getAlgorithmName() {
        return "DSTU7564";
    }

    @Override // org.spongycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return this.blockSize;
    }

    @Override // org.spongycastle.crypto.Digest
    public int getDigestSize() {
        return this.hashSize;
    }

    @Override // org.spongycastle.crypto.Digest
    public void reset() {
        for (int i = 0; i < this.state.length; i++) {
            this.state[i] = new byte[this.columns];
        }
        this.state[0][0] = (byte) this.state.length;
        this.inputLength = 0L;
        this.bufOff = 0;
        Arrays.fill(this.buf, (byte) 0);
        if (this.padded != null) {
            Arrays.fill(this.padded, (byte) 0);
        }
    }

    @Override // org.spongycastle.util.Memoable
    public void reset(Memoable memoable) {
        copyIn((DSTU7564Digest) memoable);
    }

    @Override // org.spongycastle.crypto.Digest
    public void update(byte b) {
        byte[] bArr = this.buf;
        int i = this.bufOff;
        this.bufOff = i + 1;
        bArr[i] = b;
        if (this.bufOff == this.blockSize) {
            processBlock(this.buf, 0);
            this.bufOff = 0;
        }
        this.inputLength++;
    }

    @Override // org.spongycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5 = i2;
        int i6 = i;
        while (this.bufOff != 0 && i5 > 0) {
            update(bArr[i6]);
            i5--;
            i6++;
        }
        if (i5 > 0) {
            int i7 = i5;
            while (true) {
                i3 = i6;
                i4 = i7;
                if (i7 > this.blockSize) {
                    processBlock(bArr, i6);
                    i6 += this.blockSize;
                    this.inputLength += this.blockSize;
                    i7 -= this.blockSize;
                }
            }
            while (i4 > 0) {
                update(bArr[i3]);
                i4--;
                i3++;
            }
        }
    }
}
