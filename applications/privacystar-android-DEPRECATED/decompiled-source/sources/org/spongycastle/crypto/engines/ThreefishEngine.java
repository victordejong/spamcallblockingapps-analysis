package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.TweakableBlockCipherParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/ThreefishEngine.class */
public class ThreefishEngine implements BlockCipher {
    public static final int BLOCKSIZE_1024 = 1024;
    public static final int BLOCKSIZE_256 = 256;
    public static final int BLOCKSIZE_512 = 512;
    private static final long C_240 = 2004413935125273122L;
    private static final int MAX_ROUNDS = 80;
    private static final int ROUNDS_1024 = 80;
    private static final int ROUNDS_256 = 72;
    private static final int ROUNDS_512 = 72;
    private static final int TWEAK_SIZE_BYTES = 16;
    private static final int TWEAK_SIZE_WORDS = 2;
    private int blocksizeBytes;
    private int blocksizeWords;
    private ThreefishCipher cipher;
    private long[] currentBlock;
    private boolean forEncryption;

    /* renamed from: kw */
    private long[] f1283kw;

    /* renamed from: t */
    private long[] f1284t = new long[5];
    private static int[] MOD9 = new int[80];
    private static int[] MOD17 = new int[MOD9.length];
    private static int[] MOD5 = new int[MOD9.length];
    private static int[] MOD3 = new int[MOD9.length];

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher.class */
    private static final class Threefish1024Cipher extends ThreefishCipher {
        private static final int ROTATION_0_0 = 24;
        private static final int ROTATION_0_1 = 13;
        private static final int ROTATION_0_2 = 8;
        private static final int ROTATION_0_3 = 47;
        private static final int ROTATION_0_4 = 8;
        private static final int ROTATION_0_5 = 17;
        private static final int ROTATION_0_6 = 22;
        private static final int ROTATION_0_7 = 37;
        private static final int ROTATION_1_0 = 38;
        private static final int ROTATION_1_1 = 19;
        private static final int ROTATION_1_2 = 10;
        private static final int ROTATION_1_3 = 55;
        private static final int ROTATION_1_4 = 49;
        private static final int ROTATION_1_5 = 18;
        private static final int ROTATION_1_6 = 23;
        private static final int ROTATION_1_7 = 52;
        private static final int ROTATION_2_0 = 33;
        private static final int ROTATION_2_1 = 4;
        private static final int ROTATION_2_2 = 51;
        private static final int ROTATION_2_3 = 13;
        private static final int ROTATION_2_4 = 34;
        private static final int ROTATION_2_5 = 41;
        private static final int ROTATION_2_6 = 59;
        private static final int ROTATION_2_7 = 17;
        private static final int ROTATION_3_0 = 5;
        private static final int ROTATION_3_1 = 20;
        private static final int ROTATION_3_2 = 48;
        private static final int ROTATION_3_3 = 41;
        private static final int ROTATION_3_4 = 47;
        private static final int ROTATION_3_5 = 28;
        private static final int ROTATION_3_6 = 16;
        private static final int ROTATION_3_7 = 25;
        private static final int ROTATION_4_0 = 41;
        private static final int ROTATION_4_1 = 9;
        private static final int ROTATION_4_2 = 37;
        private static final int ROTATION_4_3 = 31;
        private static final int ROTATION_4_4 = 12;
        private static final int ROTATION_4_5 = 47;
        private static final int ROTATION_4_6 = 44;
        private static final int ROTATION_4_7 = 30;
        private static final int ROTATION_5_0 = 16;
        private static final int ROTATION_5_1 = 34;
        private static final int ROTATION_5_2 = 56;
        private static final int ROTATION_5_3 = 51;
        private static final int ROTATION_5_4 = 4;
        private static final int ROTATION_5_5 = 53;
        private static final int ROTATION_5_6 = 42;
        private static final int ROTATION_5_7 = 41;
        private static final int ROTATION_6_0 = 31;
        private static final int ROTATION_6_1 = 44;
        private static final int ROTATION_6_2 = 47;
        private static final int ROTATION_6_3 = 46;
        private static final int ROTATION_6_4 = 19;
        private static final int ROTATION_6_5 = 42;
        private static final int ROTATION_6_6 = 44;
        private static final int ROTATION_6_7 = 25;
        private static final int ROTATION_7_0 = 9;
        private static final int ROTATION_7_1 = 48;
        private static final int ROTATION_7_2 = 35;
        private static final int ROTATION_7_3 = 52;
        private static final int ROTATION_7_4 = 23;
        private static final int ROTATION_7_5 = 31;
        private static final int ROTATION_7_6 = 37;
        private static final int ROTATION_7_7 = 20;

        public Threefish1024Cipher(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        @Override // org.spongycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        void decryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.f1285kw;
            long[] jArr4 = this.f1286t;
            int[] iArr = ThreefishEngine.MOD17;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 33) {
                throw new IllegalArgumentException();
            } else if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            } else {
                long j = jArr[0];
                long j2 = jArr[1];
                long j3 = jArr[2];
                long j4 = jArr[3];
                long j5 = jArr[4];
                long j6 = jArr[5];
                long j7 = jArr[6];
                long j8 = jArr[7];
                long j9 = jArr[8];
                long j10 = jArr[9];
                long j11 = jArr[10];
                long j12 = jArr[11];
                long j13 = jArr[12];
                long j14 = jArr[13];
                long j15 = jArr[14];
                long j16 = jArr[15];
                for (int i = 19; i >= 1; i -= 2) {
                    int i2 = iArr[i];
                    int i3 = iArr2[i];
                    int i4 = i2 + 1;
                    long j17 = j - jArr3[i4];
                    int i5 = i2 + 2;
                    long j18 = jArr3[i5];
                    int i6 = i2 + 3;
                    long j19 = j3 - jArr3[i6];
                    int i7 = i2 + 4;
                    long j20 = jArr3[i7];
                    int i8 = i2 + 5;
                    long j21 = j5 - jArr3[i8];
                    int i9 = i2 + 6;
                    long j22 = jArr3[i9];
                    int i10 = i2 + 7;
                    long j23 = j7 - jArr3[i10];
                    int i11 = i2 + 8;
                    long j24 = jArr3[i11];
                    int i12 = i2 + 9;
                    long j25 = j9 - jArr3[i12];
                    int i13 = i2 + 10;
                    long j26 = jArr3[i13];
                    int i14 = i2 + 11;
                    long j27 = j11 - jArr3[i14];
                    int i15 = i2 + 12;
                    long j28 = jArr3[i15];
                    int i16 = i2 + 13;
                    long j29 = j13 - jArr3[i16];
                    int i17 = i2 + 14;
                    long j30 = jArr3[i17];
                    int i18 = i3 + 1;
                    long j31 = jArr4[i18];
                    int i19 = i2 + 15;
                    long j32 = j15 - (jArr3[i19] + jArr4[i3 + 2]);
                    long j33 = jArr3[i2 + 16];
                    long j34 = i;
                    long xorRotr = ThreefishEngine.xorRotr(j16 - ((j33 + j34) + 1), 9, j17);
                    long j35 = j17 - xorRotr;
                    long xorRotr2 = ThreefishEngine.xorRotr(j12 - j28, 48, j19);
                    long j36 = j19 - xorRotr2;
                    long xorRotr3 = ThreefishEngine.xorRotr(j14 - (j30 + j31), 35, j23);
                    long j37 = j23 - xorRotr3;
                    long xorRotr4 = ThreefishEngine.xorRotr(j10 - j26, 52, j21);
                    long j38 = j21 - xorRotr4;
                    long xorRotr5 = ThreefishEngine.xorRotr(j2 - j18, 23, j32);
                    long j39 = j32 - xorRotr5;
                    long xorRotr6 = ThreefishEngine.xorRotr(j6 - j22, 31, j25);
                    long j40 = j25 - xorRotr6;
                    long xorRotr7 = ThreefishEngine.xorRotr(j4 - j20, 37, j27);
                    long j41 = j27 - xorRotr7;
                    long xorRotr8 = ThreefishEngine.xorRotr(j8 - j24, 20, j29);
                    long j42 = j29 - xorRotr8;
                    long xorRotr9 = ThreefishEngine.xorRotr(xorRotr8, 31, j35);
                    long j43 = j35 - xorRotr9;
                    long xorRotr10 = ThreefishEngine.xorRotr(xorRotr6, 44, j36);
                    long j44 = j36 - xorRotr10;
                    long xorRotr11 = ThreefishEngine.xorRotr(xorRotr7, 47, j38);
                    long j45 = j38 - xorRotr11;
                    long xorRotr12 = ThreefishEngine.xorRotr(xorRotr5, 46, j37);
                    long j46 = j37 - xorRotr12;
                    long xorRotr13 = ThreefishEngine.xorRotr(xorRotr, 19, j42);
                    long j47 = j42 - xorRotr13;
                    long xorRotr14 = ThreefishEngine.xorRotr(xorRotr3, 42, j39);
                    long j48 = j39 - xorRotr14;
                    long xorRotr15 = ThreefishEngine.xorRotr(xorRotr2, 44, j40);
                    long j49 = j40 - xorRotr15;
                    long xorRotr16 = ThreefishEngine.xorRotr(xorRotr4, 25, j41);
                    long j50 = j41 - xorRotr16;
                    long xorRotr17 = ThreefishEngine.xorRotr(xorRotr16, 16, j43);
                    long j51 = j43 - xorRotr17;
                    long xorRotr18 = ThreefishEngine.xorRotr(xorRotr14, 34, j44);
                    long j52 = j44 - xorRotr18;
                    long xorRotr19 = ThreefishEngine.xorRotr(xorRotr15, 56, j46);
                    long j53 = j46 - xorRotr19;
                    long xorRotr20 = ThreefishEngine.xorRotr(xorRotr13, 51, j45);
                    long j54 = j45 - xorRotr20;
                    long xorRotr21 = ThreefishEngine.xorRotr(xorRotr9, 4, j50);
                    long j55 = j50 - xorRotr21;
                    long xorRotr22 = ThreefishEngine.xorRotr(xorRotr11, 53, j47);
                    long j56 = j47 - xorRotr22;
                    long xorRotr23 = ThreefishEngine.xorRotr(xorRotr10, 42, j48);
                    long j57 = j48 - xorRotr23;
                    long xorRotr24 = ThreefishEngine.xorRotr(xorRotr12, 41, j49);
                    long j58 = j49 - xorRotr24;
                    long xorRotr25 = ThreefishEngine.xorRotr(xorRotr24, 41, j51);
                    long xorRotr26 = ThreefishEngine.xorRotr(xorRotr22, 9, j52);
                    long xorRotr27 = ThreefishEngine.xorRotr(xorRotr23, 37, j54);
                    long xorRotr28 = ThreefishEngine.xorRotr(xorRotr21, 31, j53);
                    long xorRotr29 = ThreefishEngine.xorRotr(xorRotr17, 12, j58);
                    long xorRotr30 = ThreefishEngine.xorRotr(xorRotr19, 47, j55);
                    long xorRotr31 = ThreefishEngine.xorRotr(xorRotr18, 44, j56);
                    long xorRotr32 = ThreefishEngine.xorRotr(xorRotr20, 30, j57);
                    long j59 = (j51 - xorRotr25) - jArr3[i2];
                    long j60 = jArr3[i4];
                    long j61 = (j52 - xorRotr26) - jArr3[i5];
                    long j62 = jArr3[i6];
                    long j63 = (j54 - xorRotr27) - jArr3[i7];
                    long j64 = jArr3[i8];
                    long j65 = (j53 - xorRotr28) - jArr3[i9];
                    long j66 = jArr3[i10];
                    long j67 = (j58 - xorRotr29) - jArr3[i11];
                    long j68 = jArr3[i12];
                    long j69 = (j55 - xorRotr30) - jArr3[i13];
                    long j70 = jArr3[i14];
                    long j71 = (j56 - xorRotr31) - jArr3[i15];
                    long j72 = jArr3[i16];
                    long j73 = jArr4[i3];
                    long j74 = (j57 - xorRotr32) - (jArr3[i17] + jArr4[i18]);
                    long xorRotr33 = ThreefishEngine.xorRotr(xorRotr32 - (jArr3[i19] + j34), 5, j59);
                    long j75 = j59 - xorRotr33;
                    long xorRotr34 = ThreefishEngine.xorRotr(xorRotr30 - j70, 20, j61);
                    long j76 = j61 - xorRotr34;
                    long xorRotr35 = ThreefishEngine.xorRotr(xorRotr31 - (j72 + j73), 48, j65);
                    long j77 = j65 - xorRotr35;
                    long xorRotr36 = ThreefishEngine.xorRotr(xorRotr29 - j68, 41, j63);
                    long j78 = j63 - xorRotr36;
                    long xorRotr37 = ThreefishEngine.xorRotr(xorRotr25 - j60, 47, j74);
                    long j79 = j74 - xorRotr37;
                    long xorRotr38 = ThreefishEngine.xorRotr(xorRotr27 - j64, 28, j67);
                    long j80 = j67 - xorRotr38;
                    long xorRotr39 = ThreefishEngine.xorRotr(xorRotr26 - j62, 16, j69);
                    long j81 = j69 - xorRotr39;
                    long xorRotr40 = ThreefishEngine.xorRotr(xorRotr28 - j66, 25, j71);
                    long j82 = j71 - xorRotr40;
                    long xorRotr41 = ThreefishEngine.xorRotr(xorRotr40, 33, j75);
                    long j83 = j75 - xorRotr41;
                    long xorRotr42 = ThreefishEngine.xorRotr(xorRotr38, 4, j76);
                    long j84 = j76 - xorRotr42;
                    long xorRotr43 = ThreefishEngine.xorRotr(xorRotr39, 51, j78);
                    long j85 = j78 - xorRotr43;
                    long xorRotr44 = ThreefishEngine.xorRotr(xorRotr37, 13, j77);
                    long j86 = j77 - xorRotr44;
                    long xorRotr45 = ThreefishEngine.xorRotr(xorRotr33, 34, j82);
                    long j87 = j82 - xorRotr45;
                    long xorRotr46 = ThreefishEngine.xorRotr(xorRotr35, 41, j79);
                    long j88 = j79 - xorRotr46;
                    long xorRotr47 = ThreefishEngine.xorRotr(xorRotr34, 59, j80);
                    long j89 = j80 - xorRotr47;
                    long xorRotr48 = ThreefishEngine.xorRotr(xorRotr36, 17, j81);
                    long j90 = j81 - xorRotr48;
                    long xorRotr49 = ThreefishEngine.xorRotr(xorRotr48, 38, j83);
                    long j91 = j83 - xorRotr49;
                    long xorRotr50 = ThreefishEngine.xorRotr(xorRotr46, 19, j84);
                    long j92 = j84 - xorRotr50;
                    long xorRotr51 = ThreefishEngine.xorRotr(xorRotr47, 10, j86);
                    long j93 = j86 - xorRotr51;
                    long xorRotr52 = ThreefishEngine.xorRotr(xorRotr45, 55, j85);
                    long j94 = j85 - xorRotr52;
                    long xorRotr53 = ThreefishEngine.xorRotr(xorRotr41, 49, j90);
                    long j95 = j90 - xorRotr53;
                    long xorRotr54 = ThreefishEngine.xorRotr(xorRotr43, 18, j87);
                    long j96 = j87 - xorRotr54;
                    long xorRotr55 = ThreefishEngine.xorRotr(xorRotr42, 23, j88);
                    long j97 = j88 - xorRotr55;
                    long xorRotr56 = ThreefishEngine.xorRotr(xorRotr44, 52, j89);
                    long j98 = j89 - xorRotr56;
                    j2 = ThreefishEngine.xorRotr(xorRotr56, 24, j91);
                    j = j91 - j2;
                    j4 = ThreefishEngine.xorRotr(xorRotr54, 13, j92);
                    j3 = j92 - j4;
                    j6 = ThreefishEngine.xorRotr(xorRotr55, 8, j94);
                    j5 = j94 - j6;
                    j8 = ThreefishEngine.xorRotr(xorRotr53, 47, j93);
                    j7 = j93 - j8;
                    j10 = ThreefishEngine.xorRotr(xorRotr49, 8, j98);
                    j9 = j98 - j10;
                    j12 = ThreefishEngine.xorRotr(xorRotr51, 17, j95);
                    j11 = j95 - j12;
                    j14 = ThreefishEngine.xorRotr(xorRotr50, 22, j96);
                    j13 = j96 - j14;
                    j16 = ThreefishEngine.xorRotr(xorRotr52, 37, j97);
                    j15 = j97 - j16;
                }
                long j99 = jArr3[0];
                long j100 = jArr3[1];
                long j101 = jArr3[2];
                long j102 = jArr3[3];
                long j103 = jArr3[4];
                long j104 = jArr3[5];
                long j105 = jArr3[6];
                long j106 = jArr3[7];
                long j107 = jArr3[8];
                long j108 = jArr3[9];
                long j109 = jArr3[10];
                long j110 = jArr3[11];
                long j111 = jArr3[12];
                long j112 = jArr3[13];
                long j113 = jArr4[0];
                long j114 = jArr3[14];
                long j115 = jArr4[1];
                long j116 = jArr3[15];
                jArr2[0] = j - j99;
                jArr2[1] = j2 - j100;
                jArr2[2] = j3 - j101;
                jArr2[3] = j4 - j102;
                jArr2[4] = j5 - j103;
                jArr2[5] = j6 - j104;
                jArr2[6] = j7 - j105;
                jArr2[7] = j8 - j106;
                jArr2[8] = j9 - j107;
                jArr2[9] = j10 - j108;
                jArr2[10] = j11 - j109;
                jArr2[11] = j12 - j110;
                jArr2[12] = j13 - j111;
                jArr2[13] = j14 - (j112 + j113);
                jArr2[14] = j15 - (j114 + j115);
                jArr2[15] = j16 - j116;
            }
        }

        @Override // org.spongycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        void encryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.f1285kw;
            long[] jArr4 = this.f1286t;
            int[] iArr = ThreefishEngine.MOD17;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 33) {
                throw new IllegalArgumentException();
            } else if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            } else {
                long j = jArr[0];
                long j2 = jArr[1];
                long j3 = jArr[2];
                long j4 = jArr[3];
                long j5 = jArr[4];
                long j6 = jArr[5];
                long j7 = jArr[6];
                long j8 = jArr[7];
                long j9 = jArr[8];
                long j10 = jArr[9];
                long j11 = jArr[10];
                long j12 = jArr[11];
                long j13 = jArr[12];
                long j14 = jArr[13];
                long j15 = jArr[14];
                long j16 = jArr[15];
                long j17 = j + jArr3[0];
                long j18 = j2 + jArr3[1];
                long j19 = jArr3[2];
                long j20 = jArr3[3];
                long j21 = j5 + jArr3[4];
                long j22 = jArr3[5];
                long j23 = j7 + jArr3[6];
                long j24 = jArr3[7];
                long j25 = j9 + jArr3[8];
                long j26 = jArr3[9];
                long j27 = j11 + jArr3[10];
                long j28 = jArr3[11];
                long j29 = j13 + jArr3[12];
                long j30 = jArr3[13];
                long j31 = jArr4[0];
                long j32 = j15 + jArr3[14] + jArr4[1];
                long j33 = j6 + j22;
                long j34 = j8 + j24;
                long j35 = j10 + j26;
                long j36 = j12 + j28;
                long j37 = j14 + j30 + j31;
                long j38 = j16 + jArr3[15];
                int i = 1;
                long j39 = j4 + j20;
                long j40 = j3 + j19;
                while (i < 20) {
                    int i2 = iArr[i];
                    int i3 = iArr2[i];
                    long j41 = j17 + j18;
                    long rotlXor = ThreefishEngine.rotlXor(j18, 24, j41);
                    long j42 = j40 + j39;
                    long rotlXor2 = ThreefishEngine.rotlXor(j39, 13, j42);
                    long j43 = j21 + j33;
                    long rotlXor3 = ThreefishEngine.rotlXor(j33, 8, j43);
                    long j44 = j23 + j34;
                    long rotlXor4 = ThreefishEngine.rotlXor(j34, 47, j44);
                    long j45 = j25 + j35;
                    long rotlXor5 = ThreefishEngine.rotlXor(j35, 8, j45);
                    long j46 = j27 + j36;
                    long rotlXor6 = ThreefishEngine.rotlXor(j36, 17, j46);
                    long j47 = j29 + j37;
                    long rotlXor7 = ThreefishEngine.rotlXor(j37, 22, j47);
                    long j48 = j32 + j38;
                    long rotlXor8 = ThreefishEngine.rotlXor(j38, 37, j48);
                    long j49 = j41 + rotlXor5;
                    long rotlXor9 = ThreefishEngine.rotlXor(rotlXor5, 38, j49);
                    long j50 = j42 + rotlXor7;
                    long rotlXor10 = ThreefishEngine.rotlXor(rotlXor7, 19, j50);
                    long j51 = j44 + rotlXor6;
                    long rotlXor11 = ThreefishEngine.rotlXor(rotlXor6, 10, j51);
                    long j52 = j43 + rotlXor8;
                    long rotlXor12 = ThreefishEngine.rotlXor(rotlXor8, 55, j52);
                    long j53 = j46 + rotlXor4;
                    long rotlXor13 = ThreefishEngine.rotlXor(rotlXor4, 49, j53);
                    long j54 = j47 + rotlXor2;
                    long rotlXor14 = ThreefishEngine.rotlXor(rotlXor2, 18, j54);
                    long j55 = j48 + rotlXor3;
                    long rotlXor15 = ThreefishEngine.rotlXor(rotlXor3, 23, j55);
                    long j56 = j45 + rotlXor;
                    long rotlXor16 = ThreefishEngine.rotlXor(rotlXor, 52, j56);
                    long j57 = j49 + rotlXor13;
                    long rotlXor17 = ThreefishEngine.rotlXor(rotlXor13, 33, j57);
                    long j58 = j50 + rotlXor15;
                    long rotlXor18 = ThreefishEngine.rotlXor(rotlXor15, 4, j58);
                    long j59 = j52 + rotlXor14;
                    long rotlXor19 = ThreefishEngine.rotlXor(rotlXor14, 51, j59);
                    long j60 = j51 + rotlXor16;
                    long rotlXor20 = ThreefishEngine.rotlXor(rotlXor16, 13, j60);
                    long j61 = j54 + rotlXor12;
                    long rotlXor21 = ThreefishEngine.rotlXor(rotlXor12, 34, j61);
                    long j62 = j55 + rotlXor10;
                    long rotlXor22 = ThreefishEngine.rotlXor(rotlXor10, 41, j62);
                    long j63 = j56 + rotlXor11;
                    long rotlXor23 = ThreefishEngine.rotlXor(rotlXor11, 59, j63);
                    long j64 = j53 + rotlXor9;
                    long rotlXor24 = ThreefishEngine.rotlXor(rotlXor9, 17, j64);
                    long j65 = j57 + rotlXor21;
                    long rotlXor25 = ThreefishEngine.rotlXor(rotlXor21, 5, j65);
                    long j66 = j58 + rotlXor23;
                    long rotlXor26 = ThreefishEngine.rotlXor(rotlXor23, 20, j66);
                    long j67 = j60 + rotlXor22;
                    long rotlXor27 = ThreefishEngine.rotlXor(rotlXor22, 48, j67);
                    long j68 = j59 + rotlXor24;
                    long rotlXor28 = ThreefishEngine.rotlXor(rotlXor24, 41, j68);
                    long j69 = j62 + rotlXor20;
                    long rotlXor29 = ThreefishEngine.rotlXor(rotlXor20, 47, j69);
                    long j70 = j63 + rotlXor18;
                    long rotlXor30 = ThreefishEngine.rotlXor(rotlXor18, 28, j70);
                    long j71 = j64 + rotlXor19;
                    long rotlXor31 = ThreefishEngine.rotlXor(rotlXor19, 16, j71);
                    long j72 = j61 + rotlXor17;
                    long rotlXor32 = ThreefishEngine.rotlXor(rotlXor17, 25, j72);
                    long j73 = jArr3[i2];
                    int i4 = i2 + 1;
                    long j74 = rotlXor29 + jArr3[i4];
                    int i5 = i2 + 2;
                    long j75 = jArr3[i5];
                    int i6 = i2 + 3;
                    long j76 = rotlXor31 + jArr3[i6];
                    int i7 = i2 + 4;
                    long j77 = jArr3[i7];
                    int i8 = i2 + 5;
                    long j78 = rotlXor30 + jArr3[i8];
                    int i9 = i2 + 6;
                    long j79 = jArr3[i9];
                    int i10 = i2 + 7;
                    long j80 = rotlXor32 + jArr3[i10];
                    int i11 = i2 + 8;
                    long j81 = jArr3[i11];
                    int i12 = i2 + 9;
                    long j82 = rotlXor28 + jArr3[i12];
                    int i13 = i2 + 10;
                    long j83 = jArr3[i13];
                    int i14 = i2 + 11;
                    long j84 = rotlXor26 + jArr3[i14];
                    int i15 = i2 + 12;
                    long j85 = jArr3[i15];
                    int i16 = i2 + 13;
                    long j86 = rotlXor27 + jArr3[i16] + jArr4[i3];
                    int i17 = i2 + 14;
                    long j87 = jArr3[i17];
                    int i18 = i3 + 1;
                    long j88 = jArr4[i18];
                    int i19 = i2 + 15;
                    long j89 = jArr3[i19];
                    long j90 = i;
                    long j91 = rotlXor25 + j89 + j90;
                    long j92 = j65 + j73 + j74;
                    long rotlXor33 = ThreefishEngine.rotlXor(j74, 41, j92);
                    long j93 = j66 + j75 + j76;
                    long rotlXor34 = ThreefishEngine.rotlXor(j76, 9, j93);
                    long j94 = j68 + j77 + j78;
                    long rotlXor35 = ThreefishEngine.rotlXor(j78, 37, j94);
                    long j95 = j67 + j79 + j80;
                    long rotlXor36 = ThreefishEngine.rotlXor(j80, 31, j95);
                    long j96 = j70 + j81 + j82;
                    long rotlXor37 = ThreefishEngine.rotlXor(j82, 12, j96);
                    long j97 = j71 + j83 + j84;
                    long rotlXor38 = ThreefishEngine.rotlXor(j84, 47, j97);
                    long j98 = j72 + j85 + j86;
                    long rotlXor39 = ThreefishEngine.rotlXor(j86, 44, j98);
                    long j99 = j69 + j87 + j88 + j91;
                    long rotlXor40 = ThreefishEngine.rotlXor(j91, 30, j99);
                    long j100 = j92 + rotlXor37;
                    long rotlXor41 = ThreefishEngine.rotlXor(rotlXor37, 16, j100);
                    long j101 = j93 + rotlXor39;
                    long rotlXor42 = ThreefishEngine.rotlXor(rotlXor39, 34, j101);
                    long j102 = j95 + rotlXor38;
                    long rotlXor43 = ThreefishEngine.rotlXor(rotlXor38, 56, j102);
                    long j103 = j94 + rotlXor40;
                    long rotlXor44 = ThreefishEngine.rotlXor(rotlXor40, 51, j103);
                    long j104 = j97 + rotlXor36;
                    long rotlXor45 = ThreefishEngine.rotlXor(rotlXor36, 4, j104);
                    long j105 = j98 + rotlXor34;
                    long rotlXor46 = ThreefishEngine.rotlXor(rotlXor34, 53, j105);
                    long j106 = j99 + rotlXor35;
                    long rotlXor47 = ThreefishEngine.rotlXor(rotlXor35, 42, j106);
                    long j107 = j96 + rotlXor33;
                    long rotlXor48 = ThreefishEngine.rotlXor(rotlXor33, 41, j107);
                    long j108 = j100 + rotlXor45;
                    long rotlXor49 = ThreefishEngine.rotlXor(rotlXor45, 31, j108);
                    long j109 = j101 + rotlXor47;
                    long rotlXor50 = ThreefishEngine.rotlXor(rotlXor47, 44, j109);
                    long j110 = j103 + rotlXor46;
                    long rotlXor51 = ThreefishEngine.rotlXor(rotlXor46, 47, j110);
                    long j111 = j102 + rotlXor48;
                    long rotlXor52 = ThreefishEngine.rotlXor(rotlXor48, 46, j111);
                    long j112 = j105 + rotlXor44;
                    long rotlXor53 = ThreefishEngine.rotlXor(rotlXor44, 19, j112);
                    long j113 = j106 + rotlXor42;
                    long rotlXor54 = ThreefishEngine.rotlXor(rotlXor42, 42, j113);
                    long j114 = j107 + rotlXor43;
                    long rotlXor55 = ThreefishEngine.rotlXor(rotlXor43, 44, j114);
                    long j115 = j104 + rotlXor41;
                    long rotlXor56 = ThreefishEngine.rotlXor(rotlXor41, 25, j115);
                    long j116 = j108 + rotlXor53;
                    long rotlXor57 = ThreefishEngine.rotlXor(rotlXor53, 9, j116);
                    long j117 = j109 + rotlXor55;
                    long rotlXor58 = ThreefishEngine.rotlXor(rotlXor55, 48, j117);
                    long j118 = j111 + rotlXor54;
                    long rotlXor59 = ThreefishEngine.rotlXor(rotlXor54, 35, j118);
                    long j119 = j110 + rotlXor56;
                    long rotlXor60 = ThreefishEngine.rotlXor(rotlXor56, 52, j119);
                    long j120 = j113 + rotlXor52;
                    long rotlXor61 = ThreefishEngine.rotlXor(rotlXor52, 23, j120);
                    long j121 = j114 + rotlXor50;
                    long rotlXor62 = ThreefishEngine.rotlXor(rotlXor50, 31, j121);
                    long j122 = j115 + rotlXor51;
                    long rotlXor63 = ThreefishEngine.rotlXor(rotlXor51, 37, j122);
                    long j123 = j112 + rotlXor49;
                    long rotlXor64 = ThreefishEngine.rotlXor(rotlXor49, 20, j123);
                    long j124 = jArr3[i4];
                    long j125 = jArr3[i5];
                    j40 = j117 + jArr3[i6];
                    long j126 = jArr3[i7];
                    j21 = j119 + jArr3[i8];
                    j33 = rotlXor62 + jArr3[i9];
                    j23 = j118 + jArr3[i10];
                    j34 = rotlXor64 + jArr3[i11];
                    j25 = j121 + jArr3[i12];
                    j35 = rotlXor60 + jArr3[i13];
                    j27 = j122 + jArr3[i14];
                    j36 = rotlXor58 + jArr3[i15];
                    long j127 = jArr3[i16];
                    j37 = rotlXor59 + jArr3[i17] + jArr4[i18];
                    j32 = j120 + jArr3[i19] + jArr4[i3 + 2];
                    j38 = rotlXor57 + jArr3[i2 + 16] + j90 + 1;
                    j17 = j116 + j124;
                    j29 = j123 + j127;
                    j39 = j126 + rotlXor63;
                    i += 2;
                    j18 = rotlXor61 + j125;
                }
                jArr2[0] = j17;
                jArr2[1] = j18;
                jArr2[2] = j40;
                jArr2[3] = j39;
                jArr2[4] = j21;
                jArr2[5] = j33;
                jArr2[6] = j23;
                jArr2[7] = j34;
                jArr2[8] = j25;
                jArr2[9] = j35;
                jArr2[10] = j27;
                jArr2[11] = j36;
                jArr2[12] = j29;
                jArr2[13] = j37;
                jArr2[14] = j32;
                jArr2[15] = j38;
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher.class */
    private static final class Threefish256Cipher extends ThreefishCipher {
        private static final int ROTATION_0_0 = 14;
        private static final int ROTATION_0_1 = 16;
        private static final int ROTATION_1_0 = 52;
        private static final int ROTATION_1_1 = 57;
        private static final int ROTATION_2_0 = 23;
        private static final int ROTATION_2_1 = 40;
        private static final int ROTATION_3_0 = 5;
        private static final int ROTATION_3_1 = 37;
        private static final int ROTATION_4_0 = 25;
        private static final int ROTATION_4_1 = 33;
        private static final int ROTATION_5_0 = 46;
        private static final int ROTATION_5_1 = 12;
        private static final int ROTATION_6_0 = 58;
        private static final int ROTATION_6_1 = 22;
        private static final int ROTATION_7_0 = 32;
        private static final int ROTATION_7_1 = 32;

        public Threefish256Cipher(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        @Override // org.spongycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        void decryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.f1285kw;
            long[] jArr4 = this.f1286t;
            int[] iArr = ThreefishEngine.MOD5;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 9) {
                throw new IllegalArgumentException();
            } else if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            } else {
                long j = jArr[0];
                long j2 = jArr[1];
                long j3 = jArr[2];
                long j4 = jArr[3];
                for (int i = 17; i >= 1; i -= 2) {
                    int i2 = iArr[i];
                    int i3 = iArr2[i];
                    int i4 = i2 + 1;
                    long j5 = j - jArr3[i4];
                    int i5 = i2 + 2;
                    long j6 = jArr3[i5];
                    int i6 = i3 + 1;
                    long j7 = jArr4[i6];
                    int i7 = i2 + 3;
                    long j8 = j3 - (jArr3[i7] + jArr4[i3 + 2]);
                    long j9 = jArr3[i2 + 4];
                    long j10 = i;
                    long xorRotr = ThreefishEngine.xorRotr(j4 - ((j9 + j10) + 1), 32, j5);
                    long j11 = j5 - xorRotr;
                    long xorRotr2 = ThreefishEngine.xorRotr(j2 - (j6 + j7), 32, j8);
                    long j12 = j8 - xorRotr2;
                    long xorRotr3 = ThreefishEngine.xorRotr(xorRotr2, 58, j11);
                    long j13 = j11 - xorRotr3;
                    long xorRotr4 = ThreefishEngine.xorRotr(xorRotr, 22, j12);
                    long j14 = j12 - xorRotr4;
                    long xorRotr5 = ThreefishEngine.xorRotr(xorRotr4, 46, j13);
                    long j15 = j13 - xorRotr5;
                    long xorRotr6 = ThreefishEngine.xorRotr(xorRotr3, 12, j14);
                    long j16 = j14 - xorRotr6;
                    long xorRotr7 = ThreefishEngine.xorRotr(xorRotr6, 25, j15);
                    long xorRotr8 = ThreefishEngine.xorRotr(xorRotr5, 33, j16);
                    long j17 = (j15 - xorRotr7) - jArr3[i2];
                    long j18 = jArr3[i4];
                    long j19 = jArr4[i3];
                    long j20 = (j16 - xorRotr8) - (jArr3[i5] + jArr4[i6]);
                    long xorRotr9 = ThreefishEngine.xorRotr(xorRotr8 - (jArr3[i7] + j10), 5, j17);
                    long j21 = j17 - xorRotr9;
                    long xorRotr10 = ThreefishEngine.xorRotr(xorRotr7 - (j18 + j19), 37, j20);
                    long j22 = j20 - xorRotr10;
                    long xorRotr11 = ThreefishEngine.xorRotr(xorRotr10, 23, j21);
                    long j23 = j21 - xorRotr11;
                    long xorRotr12 = ThreefishEngine.xorRotr(xorRotr9, 40, j22);
                    long j24 = j22 - xorRotr12;
                    long xorRotr13 = ThreefishEngine.xorRotr(xorRotr12, 52, j23);
                    long j25 = j23 - xorRotr13;
                    long xorRotr14 = ThreefishEngine.xorRotr(xorRotr11, 57, j24);
                    long j26 = j24 - xorRotr14;
                    j2 = ThreefishEngine.xorRotr(xorRotr14, 14, j25);
                    j = j25 - j2;
                    j4 = ThreefishEngine.xorRotr(xorRotr13, 16, j26);
                    j3 = j26 - j4;
                }
                long j27 = jArr3[0];
                long j28 = jArr3[1];
                long j29 = jArr4[0];
                long j30 = jArr3[2];
                long j31 = jArr4[1];
                long j32 = jArr3[3];
                jArr2[0] = j - j27;
                jArr2[1] = j2 - (j28 + j29);
                jArr2[2] = j3 - (j30 + j31);
                jArr2[3] = j4 - j32;
            }
        }

        @Override // org.spongycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        void encryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.f1285kw;
            long[] jArr4 = this.f1286t;
            int[] iArr = ThreefishEngine.MOD5;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 9) {
                throw new IllegalArgumentException();
            } else if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            } else {
                long j = jArr[0];
                long j2 = jArr[1];
                long j3 = jArr[2];
                long j4 = jArr[3];
                long j5 = j + jArr3[0];
                long j6 = j2 + jArr3[1] + jArr4[0];
                long j7 = jArr3[2];
                long j8 = jArr4[1];
                long j9 = j4 + jArr3[3];
                long j10 = j3 + j7 + j8;
                for (int i = 1; i < 18; i += 2) {
                    int i2 = iArr[i];
                    int i3 = iArr2[i];
                    long j11 = j5 + j6;
                    long rotlXor = ThreefishEngine.rotlXor(j6, 14, j11);
                    long j12 = j10 + j9;
                    long rotlXor2 = ThreefishEngine.rotlXor(j9, 16, j12);
                    long j13 = j11 + rotlXor2;
                    long rotlXor3 = ThreefishEngine.rotlXor(rotlXor2, 52, j13);
                    long j14 = j12 + rotlXor;
                    long rotlXor4 = ThreefishEngine.rotlXor(rotlXor, 57, j14);
                    long j15 = j13 + rotlXor4;
                    long rotlXor5 = ThreefishEngine.rotlXor(rotlXor4, 23, j15);
                    long j16 = j14 + rotlXor3;
                    long rotlXor6 = ThreefishEngine.rotlXor(rotlXor3, 40, j16);
                    long j17 = j15 + rotlXor6;
                    long rotlXor7 = ThreefishEngine.rotlXor(rotlXor6, 5, j17);
                    long j18 = j16 + rotlXor5;
                    long rotlXor8 = ThreefishEngine.rotlXor(rotlXor5, 37, j18);
                    long j19 = jArr3[i2];
                    int i4 = i2 + 1;
                    long j20 = rotlXor8 + jArr3[i4] + jArr4[i3];
                    int i5 = i2 + 2;
                    long j21 = jArr3[i5];
                    int i6 = i3 + 1;
                    long j22 = jArr4[i6];
                    int i7 = i2 + 3;
                    long j23 = jArr3[i7];
                    long j24 = i;
                    long j25 = rotlXor7 + j23 + j24;
                    long j26 = j17 + j19 + j20;
                    long rotlXor9 = ThreefishEngine.rotlXor(j20, 25, j26);
                    long j27 = j18 + j21 + j22 + j25;
                    long rotlXor10 = ThreefishEngine.rotlXor(j25, 33, j27);
                    long j28 = j26 + rotlXor10;
                    long rotlXor11 = ThreefishEngine.rotlXor(rotlXor10, 46, j28);
                    long j29 = j27 + rotlXor9;
                    long rotlXor12 = ThreefishEngine.rotlXor(rotlXor9, 12, j29);
                    long j30 = j28 + rotlXor12;
                    long rotlXor13 = ThreefishEngine.rotlXor(rotlXor12, 58, j30);
                    long j31 = j29 + rotlXor11;
                    long rotlXor14 = ThreefishEngine.rotlXor(rotlXor11, 22, j31);
                    long j32 = j30 + rotlXor14;
                    long rotlXor15 = ThreefishEngine.rotlXor(rotlXor14, 32, j32);
                    long j33 = j31 + rotlXor13;
                    long rotlXor16 = ThreefishEngine.rotlXor(rotlXor13, 32, j33);
                    j5 = jArr3[i4] + j32;
                    j6 = rotlXor16 + jArr3[i5] + jArr4[i6];
                    j10 = j33 + jArr3[i7] + jArr4[i3 + 2];
                    j9 = rotlXor15 + jArr3[i2 + 4] + j24 + 1;
                }
                jArr2[0] = j5;
                jArr2[1] = j6;
                jArr2[2] = j10;
                jArr2[3] = j9;
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/ThreefishEngine$Threefish512Cipher.class */
    private static final class Threefish512Cipher extends ThreefishCipher {
        private static final int ROTATION_0_0 = 46;
        private static final int ROTATION_0_1 = 36;
        private static final int ROTATION_0_2 = 19;
        private static final int ROTATION_0_3 = 37;
        private static final int ROTATION_1_0 = 33;
        private static final int ROTATION_1_1 = 27;
        private static final int ROTATION_1_2 = 14;
        private static final int ROTATION_1_3 = 42;
        private static final int ROTATION_2_0 = 17;
        private static final int ROTATION_2_1 = 49;
        private static final int ROTATION_2_2 = 36;
        private static final int ROTATION_2_3 = 39;
        private static final int ROTATION_3_0 = 44;
        private static final int ROTATION_3_1 = 9;
        private static final int ROTATION_3_2 = 54;
        private static final int ROTATION_3_3 = 56;
        private static final int ROTATION_4_0 = 39;
        private static final int ROTATION_4_1 = 30;
        private static final int ROTATION_4_2 = 34;
        private static final int ROTATION_4_3 = 24;
        private static final int ROTATION_5_0 = 13;
        private static final int ROTATION_5_1 = 50;
        private static final int ROTATION_5_2 = 10;
        private static final int ROTATION_5_3 = 17;
        private static final int ROTATION_6_0 = 25;
        private static final int ROTATION_6_1 = 29;
        private static final int ROTATION_6_2 = 39;
        private static final int ROTATION_6_3 = 43;
        private static final int ROTATION_7_0 = 8;
        private static final int ROTATION_7_1 = 35;
        private static final int ROTATION_7_2 = 56;
        private static final int ROTATION_7_3 = 22;

        protected Threefish512Cipher(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        @Override // org.spongycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        public void decryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.f1285kw;
            long[] jArr4 = this.f1286t;
            int[] iArr = ThreefishEngine.MOD9;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 17) {
                throw new IllegalArgumentException();
            } else if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            } else {
                long j = jArr[0];
                long j2 = jArr[1];
                long j3 = jArr[2];
                long j4 = jArr[3];
                long j5 = jArr[4];
                long j6 = jArr[5];
                long j7 = jArr[6];
                long j8 = jArr[7];
                int i = 17;
                while (i >= 1) {
                    int i2 = iArr[i];
                    int i3 = iArr2[i];
                    int i4 = i2 + 1;
                    long j9 = j - jArr3[i4];
                    int i5 = i2 + 2;
                    long j10 = jArr3[i5];
                    int i6 = i2 + 3;
                    long j11 = j3 - jArr3[i6];
                    int i7 = i2 + 4;
                    long j12 = jArr3[i7];
                    int i8 = i2 + 5;
                    long j13 = j5 - jArr3[i8];
                    int i9 = i2 + 6;
                    long j14 = jArr3[i9];
                    int i10 = i3 + 1;
                    long j15 = jArr4[i10];
                    int i11 = i2 + 7;
                    long j16 = j7 - (jArr3[i11] + jArr4[i3 + 2]);
                    long j17 = jArr3[i2 + 8];
                    long j18 = i;
                    long xorRotr = ThreefishEngine.xorRotr(j2 - j10, 8, j16);
                    long j19 = j16 - xorRotr;
                    long xorRotr2 = ThreefishEngine.xorRotr(j8 - ((j17 + j18) + 1), 35, j9);
                    long j20 = j9 - xorRotr2;
                    long xorRotr3 = ThreefishEngine.xorRotr(j6 - (j14 + j15), 56, j11);
                    long j21 = j11 - xorRotr3;
                    long xorRotr4 = ThreefishEngine.xorRotr(j4 - j12, 22, j13);
                    long j22 = j13 - xorRotr4;
                    long xorRotr5 = ThreefishEngine.xorRotr(xorRotr, 25, j22);
                    long j23 = j22 - xorRotr5;
                    long xorRotr6 = ThreefishEngine.xorRotr(xorRotr4, 29, j19);
                    long j24 = j19 - xorRotr6;
                    long xorRotr7 = ThreefishEngine.xorRotr(xorRotr3, 39, j20);
                    long j25 = j20 - xorRotr7;
                    long xorRotr8 = ThreefishEngine.xorRotr(xorRotr2, 43, j21);
                    long j26 = j21 - xorRotr8;
                    long xorRotr9 = ThreefishEngine.xorRotr(xorRotr5, 13, j26);
                    long j27 = j26 - xorRotr9;
                    long xorRotr10 = ThreefishEngine.xorRotr(xorRotr8, 50, j23);
                    long j28 = j23 - xorRotr10;
                    long xorRotr11 = ThreefishEngine.xorRotr(xorRotr7, 10, j24);
                    long j29 = j24 - xorRotr11;
                    long xorRotr12 = ThreefishEngine.xorRotr(xorRotr6, 17, j25);
                    long j30 = j25 - xorRotr12;
                    long xorRotr13 = ThreefishEngine.xorRotr(xorRotr9, 39, j30);
                    long xorRotr14 = ThreefishEngine.xorRotr(xorRotr12, 30, j27);
                    long xorRotr15 = ThreefishEngine.xorRotr(xorRotr11, 34, j28);
                    long xorRotr16 = ThreefishEngine.xorRotr(xorRotr10, 24, j29);
                    long j31 = (j30 - xorRotr13) - jArr3[i2];
                    long j32 = jArr3[i4];
                    long j33 = (j27 - xorRotr14) - jArr3[i5];
                    long j34 = jArr3[i6];
                    long j35 = (j28 - xorRotr15) - jArr3[i7];
                    long j36 = jArr3[i8];
                    long j37 = jArr4[i3];
                    long j38 = (j29 - xorRotr16) - (jArr3[i9] + jArr4[i10]);
                    long j39 = jArr3[i11];
                    long xorRotr17 = ThreefishEngine.xorRotr(xorRotr13 - j32, 44, j38);
                    long j40 = j38 - xorRotr17;
                    long xorRotr18 = ThreefishEngine.xorRotr(xorRotr16 - (j39 + j18), 9, j31);
                    long j41 = j31 - xorRotr18;
                    long xorRotr19 = ThreefishEngine.xorRotr(xorRotr15 - (j36 + j37), 54, j33);
                    long j42 = j33 - xorRotr19;
                    long xorRotr20 = ThreefishEngine.xorRotr(xorRotr14 - j34, 56, j35);
                    long j43 = j35 - xorRotr20;
                    long xorRotr21 = ThreefishEngine.xorRotr(xorRotr17, 17, j43);
                    long j44 = j43 - xorRotr21;
                    long xorRotr22 = ThreefishEngine.xorRotr(xorRotr20, 49, j40);
                    long j45 = j40 - xorRotr22;
                    long xorRotr23 = ThreefishEngine.xorRotr(xorRotr19, 36, j41);
                    long j46 = j41 - xorRotr23;
                    long xorRotr24 = ThreefishEngine.xorRotr(xorRotr18, 39, j42);
                    long j47 = j42 - xorRotr24;
                    long xorRotr25 = ThreefishEngine.xorRotr(xorRotr21, 33, j47);
                    long j48 = j47 - xorRotr25;
                    long xorRotr26 = ThreefishEngine.xorRotr(xorRotr24, 27, j44);
                    long j49 = j44 - xorRotr26;
                    long xorRotr27 = ThreefishEngine.xorRotr(xorRotr23, 14, j45);
                    long j50 = j45 - xorRotr27;
                    long xorRotr28 = ThreefishEngine.xorRotr(xorRotr22, 42, j46);
                    long j51 = j46 - xorRotr28;
                    j2 = ThreefishEngine.xorRotr(xorRotr25, 46, j51);
                    j4 = ThreefishEngine.xorRotr(xorRotr28, 36, j48);
                    j3 = j48 - j4;
                    j6 = ThreefishEngine.xorRotr(xorRotr27, 19, j49);
                    j5 = j49 - j6;
                    j8 = ThreefishEngine.xorRotr(xorRotr26, 37, j50);
                    j7 = j50 - j8;
                    i -= 2;
                    j = j51 - j2;
                }
                long j52 = jArr3[0];
                long j53 = jArr3[1];
                long j54 = jArr3[2];
                long j55 = jArr3[3];
                long j56 = jArr3[4];
                long j57 = jArr3[5];
                long j58 = jArr4[0];
                long j59 = jArr3[6];
                long j60 = jArr4[1];
                long j61 = jArr3[7];
                jArr2[0] = j - j52;
                jArr2[1] = j2 - j53;
                jArr2[2] = j3 - j54;
                jArr2[3] = j4 - j55;
                jArr2[4] = j5 - j56;
                jArr2[5] = j6 - (j57 + j58);
                jArr2[6] = j7 - (j59 + j60);
                jArr2[7] = j8 - j61;
            }
        }

        @Override // org.spongycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        public void encryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.f1285kw;
            long[] jArr4 = this.f1286t;
            int[] iArr = ThreefishEngine.MOD9;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 17) {
                throw new IllegalArgumentException();
            } else if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            } else {
                long j = jArr[0];
                long j2 = jArr[1];
                long j3 = jArr[2];
                long j4 = jArr[3];
                long j5 = jArr[4];
                long j6 = jArr[5];
                long j7 = jArr[6];
                long j8 = jArr[7];
                long j9 = j + jArr3[0];
                long j10 = j2 + jArr3[1];
                long j11 = j3 + jArr3[2];
                long j12 = jArr3[3];
                long j13 = j5 + jArr3[4];
                long j14 = jArr3[5];
                long j15 = jArr4[0];
                long j16 = j7 + jArr3[6] + jArr4[1];
                long j17 = j4 + j12;
                long j18 = j6 + j14 + j15;
                long j19 = j8 + jArr3[7];
                int i = 1;
                while (i < 18) {
                    int i2 = iArr[i];
                    int i3 = iArr2[i];
                    long j20 = j9 + j10;
                    long rotlXor = ThreefishEngine.rotlXor(j10, 46, j20);
                    long j21 = j11 + j17;
                    long rotlXor2 = ThreefishEngine.rotlXor(j17, 36, j21);
                    long j22 = j13 + j18;
                    long rotlXor3 = ThreefishEngine.rotlXor(j18, 19, j22);
                    long j23 = j16 + j19;
                    long rotlXor4 = ThreefishEngine.rotlXor(j19, 37, j23);
                    long j24 = j21 + rotlXor;
                    long rotlXor5 = ThreefishEngine.rotlXor(rotlXor, 33, j24);
                    long j25 = j22 + rotlXor4;
                    long rotlXor6 = ThreefishEngine.rotlXor(rotlXor4, 27, j25);
                    long j26 = j23 + rotlXor3;
                    long rotlXor7 = ThreefishEngine.rotlXor(rotlXor3, 14, j26);
                    long j27 = j20 + rotlXor2;
                    long rotlXor8 = ThreefishEngine.rotlXor(rotlXor2, 42, j27);
                    long j28 = j25 + rotlXor5;
                    long rotlXor9 = ThreefishEngine.rotlXor(rotlXor5, 17, j28);
                    long j29 = j26 + rotlXor8;
                    long rotlXor10 = ThreefishEngine.rotlXor(rotlXor8, 49, j29);
                    long j30 = j27 + rotlXor7;
                    long rotlXor11 = ThreefishEngine.rotlXor(rotlXor7, 36, j30);
                    long j31 = j24 + rotlXor6;
                    long rotlXor12 = ThreefishEngine.rotlXor(rotlXor6, 39, j31);
                    long j32 = j29 + rotlXor9;
                    long rotlXor13 = ThreefishEngine.rotlXor(rotlXor9, 44, j32);
                    long j33 = j30 + rotlXor12;
                    long rotlXor14 = ThreefishEngine.rotlXor(rotlXor12, 9, j33);
                    long j34 = j31 + rotlXor11;
                    long rotlXor15 = ThreefishEngine.rotlXor(rotlXor11, 54, j34);
                    long j35 = j28 + rotlXor10;
                    long rotlXor16 = ThreefishEngine.rotlXor(rotlXor10, 56, j35);
                    long j36 = jArr3[i2];
                    int i4 = i2 + 1;
                    long j37 = rotlXor13 + jArr3[i4];
                    int i5 = i2 + 2;
                    long j38 = jArr3[i5];
                    int i6 = i2 + 3;
                    long j39 = rotlXor16 + jArr3[i6];
                    int i7 = i2 + 4;
                    long j40 = jArr3[i7];
                    int i8 = i2 + 5;
                    long j41 = rotlXor15 + jArr3[i8] + jArr4[i3];
                    int i9 = i2 + 6;
                    long j42 = jArr3[i9];
                    int i10 = i3 + 1;
                    long j43 = jArr4[i10];
                    int i11 = i2 + 7;
                    long j44 = jArr3[i11];
                    long j45 = i;
                    long j46 = rotlXor14 + j44 + j45;
                    long j47 = j33 + j36 + j37;
                    long rotlXor17 = ThreefishEngine.rotlXor(j37, 39, j47);
                    long j48 = j34 + j38 + j39;
                    long rotlXor18 = ThreefishEngine.rotlXor(j39, 30, j48);
                    long j49 = j35 + j40 + j41;
                    long rotlXor19 = ThreefishEngine.rotlXor(j41, 34, j49);
                    long j50 = j32 + j42 + j43 + j46;
                    long rotlXor20 = ThreefishEngine.rotlXor(j46, 24, j50);
                    long j51 = j48 + rotlXor17;
                    long rotlXor21 = ThreefishEngine.rotlXor(rotlXor17, 13, j51);
                    long j52 = j49 + rotlXor20;
                    long rotlXor22 = ThreefishEngine.rotlXor(rotlXor20, 50, j52);
                    long j53 = j50 + rotlXor19;
                    long rotlXor23 = ThreefishEngine.rotlXor(rotlXor19, 10, j53);
                    long j54 = j47 + rotlXor18;
                    long rotlXor24 = ThreefishEngine.rotlXor(rotlXor18, 17, j54);
                    long j55 = j52 + rotlXor21;
                    long rotlXor25 = ThreefishEngine.rotlXor(rotlXor21, 25, j55);
                    long j56 = j53 + rotlXor24;
                    long rotlXor26 = ThreefishEngine.rotlXor(rotlXor24, 29, j56);
                    long j57 = j54 + rotlXor23;
                    long rotlXor27 = ThreefishEngine.rotlXor(rotlXor23, 39, j57);
                    long j58 = j51 + rotlXor22;
                    long rotlXor28 = ThreefishEngine.rotlXor(rotlXor22, 43, j58);
                    long j59 = j56 + rotlXor25;
                    long rotlXor29 = ThreefishEngine.rotlXor(rotlXor25, 8, j59);
                    long j60 = j57 + rotlXor28;
                    long rotlXor30 = ThreefishEngine.rotlXor(rotlXor28, 35, j60);
                    long j61 = j58 + rotlXor27;
                    long rotlXor31 = ThreefishEngine.rotlXor(rotlXor27, 56, j61);
                    long j62 = j55 + rotlXor26;
                    long rotlXor32 = ThreefishEngine.rotlXor(rotlXor26, 22, j62);
                    long j63 = jArr3[i4];
                    long j64 = jArr3[i5];
                    j11 = j61 + jArr3[i6];
                    long j65 = jArr3[i7];
                    long j66 = jArr3[i8];
                    j18 = rotlXor31 + jArr3[i9] + jArr4[i10];
                    j16 = j59 + jArr3[i11] + jArr4[i3 + 2];
                    j19 = rotlXor30 + jArr3[i2 + 8] + j45 + 1;
                    i += 2;
                    j13 = j62 + j66;
                    j17 = j65 + rotlXor32;
                    j10 = rotlXor29 + j64;
                    j9 = j60 + j63;
                }
                jArr2[0] = j9;
                jArr2[1] = j10;
                jArr2[2] = j11;
                jArr2[3] = j17;
                jArr2[4] = j13;
                jArr2[5] = j18;
                jArr2[6] = j16;
                jArr2[7] = j19;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher.class */
    public static abstract class ThreefishCipher {

        /* renamed from: kw */
        protected final long[] f1285kw;

        /* renamed from: t */
        protected final long[] f1286t;

        protected ThreefishCipher(long[] jArr, long[] jArr2) {
            this.f1285kw = jArr;
            this.f1286t = jArr2;
        }

        abstract void decryptBlock(long[] jArr, long[] jArr2);

        abstract void encryptBlock(long[] jArr, long[] jArr2);
    }

    static {
        for (int i = 0; i < MOD9.length; i++) {
            MOD17[i] = i % 17;
            MOD9[i] = i % 9;
            MOD5[i] = i % 5;
            MOD3[i] = i % 3;
        }
    }

    public ThreefishEngine(int i) {
        this.blocksizeBytes = i / 8;
        this.blocksizeWords = this.blocksizeBytes / 8;
        this.currentBlock = new long[this.blocksizeWords];
        this.f1283kw = new long[(this.blocksizeWords * 2) + 1];
        if (i == 256) {
            this.cipher = new Threefish256Cipher(this.f1283kw, this.f1284t);
        } else if (i == 512) {
            this.cipher = new Threefish512Cipher(this.f1283kw, this.f1284t);
        } else if (i != 1024) {
            throw new IllegalArgumentException("Invalid blocksize - Threefish is defined with block size of 256, 512, or 1024 bits");
        } else {
            this.cipher = new Threefish1024Cipher(this.f1283kw, this.f1284t);
        }
    }

    public static long bytesToWord(byte[] bArr, int i) {
        if (i + 8 > bArr.length) {
            throw new IllegalArgumentException();
        }
        int i2 = i + 1;
        long j = bArr[i];
        int i3 = i2 + 1;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        return ((bArr[i7 + 1] & 255) << 56) | (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((j5 & 255) << 32) | ((bArr[i6] & 255) << 40) | ((bArr[i7] & 255) << 48);
    }

    static long rotlXor(long j, int i, long j2) {
        return ((j >>> (-i)) | (j << i)) ^ j2;
    }

    private void setKey(long[] jArr) {
        if (jArr.length != this.blocksizeWords) {
            throw new IllegalArgumentException("Threefish key must be same size as block (" + this.blocksizeWords + " words)");
        }
        long j = C_240;
        for (int i = 0; i < this.blocksizeWords; i++) {
            this.f1283kw[i] = jArr[i];
            j ^= this.f1283kw[i];
        }
        this.f1283kw[this.blocksizeWords] = j;
        System.arraycopy(this.f1283kw, 0, this.f1283kw, this.blocksizeWords + 1, this.blocksizeWords);
    }

    private void setTweak(long[] jArr) {
        if (jArr.length != 2) {
            throw new IllegalArgumentException("Tweak must be 2 words.");
        }
        this.f1284t[0] = jArr[0];
        this.f1284t[1] = jArr[1];
        this.f1284t[2] = this.f1284t[0] ^ this.f1284t[1];
        this.f1284t[3] = this.f1284t[0];
        this.f1284t[4] = this.f1284t[1];
    }

    public static void wordToBytes(long j, byte[] bArr, int i) {
        if (i + 8 > bArr.length) {
            throw new IllegalArgumentException();
        }
        int i2 = i + 1;
        bArr[i] = (byte) j;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (j >> 8);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (j >> 16);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (j >> 24);
        int i6 = i5 + 1;
        bArr[i5] = (byte) (j >> 32);
        int i7 = i6 + 1;
        bArr[i6] = (byte) (j >> 40);
        bArr[i7] = (byte) (j >> 48);
        bArr[i7 + 1] = (byte) (j >> 56);
    }

    static long xorRotr(long j, int i, long j2) {
        long j3 = j ^ j2;
        return (j3 << (-i)) | (j3 >>> i);
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Threefish-" + (this.blocksizeBytes * 8);
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.blocksizeBytes;
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        byte[] bArr;
        byte[] bArr2;
        long[] jArr;
        long[] jArr2 = null;
        if (cipherParameters instanceof TweakableBlockCipherParameters) {
            TweakableBlockCipherParameters tweakableBlockCipherParameters = (TweakableBlockCipherParameters) cipherParameters;
            bArr = tweakableBlockCipherParameters.getKey().getKey();
            bArr2 = tweakableBlockCipherParameters.getTweak();
        } else if (cipherParameters instanceof KeyParameter) {
            bArr = ((KeyParameter) cipherParameters).getKey();
            bArr2 = null;
        } else {
            throw new IllegalArgumentException("Invalid parameter passed to Threefish init - " + cipherParameters.getClass().getName());
        }
        if (bArr != null) {
            if (bArr.length == this.blocksizeBytes) {
                long[] jArr3 = new long[this.blocksizeWords];
                int i = 0;
                while (true) {
                    jArr = jArr3;
                    if (i >= jArr3.length) {
                        break;
                    }
                    jArr3[i] = bytesToWord(bArr, i * 8);
                    i++;
                }
            } else {
                throw new IllegalArgumentException("Threefish key must be same size as block (" + this.blocksizeBytes + " bytes)");
            }
        } else {
            jArr = null;
        }
        if (bArr2 != null) {
            if (bArr2.length != 16) {
                throw new IllegalArgumentException("Threefish tweak must be 16 bytes");
            }
            jArr2 = new long[]{bytesToWord(bArr2, 0), bytesToWord(bArr2, 8)};
        }
        init(z, jArr, jArr2);
    }

    public void init(boolean z, long[] jArr, long[] jArr2) {
        this.forEncryption = z;
        if (jArr != null) {
            setKey(jArr);
        }
        if (jArr2 != null) {
            setTweak(jArr2);
        }
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        if (this.blocksizeBytes + i > bArr.length) {
            throw new DataLengthException("Input buffer too short");
        } else if (this.blocksizeBytes + i2 > bArr2.length) {
            throw new OutputLengthException("Output buffer too short");
        } else {
            for (int i3 = 0; i3 < this.blocksizeBytes; i3 += 8) {
                this.currentBlock[i3 >> 3] = bytesToWord(bArr, i + i3);
            }
            processBlock(this.currentBlock, this.currentBlock);
            for (int i4 = 0; i4 < this.blocksizeBytes; i4 += 8) {
                wordToBytes(this.currentBlock[i4 >> 3], bArr2, i2 + i4);
            }
            return this.blocksizeBytes;
        }
    }

    public int processBlock(long[] jArr, long[] jArr2) throws DataLengthException, IllegalStateException {
        if (this.f1283kw[this.blocksizeWords] == 0) {
            throw new IllegalStateException("Threefish engine not initialised");
        } else if (jArr.length != this.blocksizeWords) {
            throw new DataLengthException("Input buffer too short");
        } else if (jArr2.length != this.blocksizeWords) {
            throw new OutputLengthException("Output buffer too short");
        } else {
            if (this.forEncryption) {
                this.cipher.encryptBlock(jArr, jArr2);
            } else {
                this.cipher.decryptBlock(jArr, jArr2);
            }
            return this.blocksizeWords;
        }
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void reset() {
    }
}
