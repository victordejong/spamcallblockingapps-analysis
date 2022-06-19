package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.params.GOST3410Parameters;
import org.bouncycastle.crypto.params.GOST3410ValidationParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/generators/GOST3410ParametersGenerator.class */
public class GOST3410ParametersGenerator {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private SecureRandom init_random;
    private int size;
    private int typeproc;

    private int procedure_A(int i, int i2, BigInteger[] bigIntegerArr, int i3) {
        BigInteger bigInteger;
        while (true) {
            if (i < 0 || i > 65536) {
                i = this.init_random.nextInt() / 32768;
            }
        }
        while (true) {
            if (i2 >= 0 && i2 <= 65536 && i2 / 2 != 0) {
                break;
            }
            i2 = (this.init_random.nextInt() / 32768) + 1;
        }
        BigInteger bigInteger2 = new BigInteger(Integer.toString(i2));
        BigInteger bigInteger3 = new BigInteger("19381");
        BigInteger[] bigIntegerArr2 = {new BigInteger(Integer.toString(i))};
        int[] iArr = {i3};
        int i4 = 0;
        int i5 = 0;
        while (iArr[i4] >= 17) {
            int length = iArr.length + 1;
            int[] iArr2 = new int[length];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            iArr = new int[length];
            System.arraycopy(iArr2, 0, iArr, 0, length);
            i5 = i4 + 1;
            iArr[i5] = iArr[i4] / 2;
            i4 = i5;
        }
        BigInteger[] bigIntegerArr3 = new BigInteger[i5 + 1];
        bigIntegerArr3[i5] = new BigInteger("8003", 16);
        int i6 = i5 - 1;
        int i7 = 0;
        while (true) {
            if (i7 >= i5) {
                bigInteger = bigIntegerArr2[0];
                break;
            }
            int i8 = iArr[i6] / 16;
            while (true) {
                int length2 = bigIntegerArr2.length;
                BigInteger[] bigIntegerArr4 = new BigInteger[length2];
                System.arraycopy(bigIntegerArr2, 0, bigIntegerArr4, 0, bigIntegerArr2.length);
                bigIntegerArr2 = new BigInteger[i8 + 1];
                System.arraycopy(bigIntegerArr4, 0, bigIntegerArr2, 0, length2);
                int i9 = 0;
                while (true) {
                    int i10 = i9;
                    if (i10 >= i8) {
                        break;
                    }
                    int i11 = i10 + 1;
                    bigIntegerArr2[i11] = bigIntegerArr2[i10].multiply(bigInteger3).add(bigInteger2).mod(TWO.pow(16));
                    i9 = i11;
                }
                BigInteger bigInteger4 = new BigInteger("0");
                for (int i12 = 0; i12 < i8; i12++) {
                    bigInteger4 = bigInteger4.add(bigIntegerArr2[i12].multiply(TWO.pow(i12 * 16)));
                }
                bigIntegerArr2[0] = bigIntegerArr2[i8];
                BigInteger bigInteger5 = TWO;
                BigInteger pow = bigInteger5.pow(iArr[i6] - 1);
                int i13 = i6 + 1;
                BigInteger add = pow.divide(bigIntegerArr3[i13]).add(bigInteger5.pow(iArr[i6] - 1).multiply(bigInteger4).divide(bigIntegerArr3[i13].multiply(bigInteger5.pow(i8 * 16))));
                BigInteger mod = add.mod(bigInteger5);
                BigInteger bigInteger6 = ONE;
                BigInteger bigInteger7 = add;
                if (mod.compareTo(bigInteger6) == 0) {
                    bigInteger7 = add.add(bigInteger6);
                }
                int i14 = 0;
                while (true) {
                    BigInteger bigInteger8 = bigIntegerArr3[i13];
                    long j = i14;
                    BigInteger multiply = bigInteger8.multiply(bigInteger7.add(BigInteger.valueOf(j)));
                    BigInteger bigInteger9 = ONE;
                    bigIntegerArr3[i6] = multiply.add(bigInteger9);
                    BigInteger bigInteger10 = bigIntegerArr3[i6];
                    BigInteger bigInteger11 = TWO;
                    if (bigInteger10.compareTo(bigInteger11.pow(iArr[i6])) == 1) {
                        break;
                    }
                    if (bigInteger11.modPow(bigIntegerArr3[i13].multiply(bigInteger7.add(BigInteger.valueOf(j))), bigIntegerArr3[i6]).compareTo(bigInteger9) == 0 && bigInteger11.modPow(bigInteger7.add(BigInteger.valueOf(j)), bigIntegerArr3[i6]).compareTo(bigInteger9) != 0) {
                        break;
                    }
                    i14 += 2;
                }
            }
            i6--;
            if (i6 < 0) {
                bigIntegerArr[0] = bigIntegerArr3[0];
                bigIntegerArr[1] = bigIntegerArr3[1];
                bigInteger = bigIntegerArr2[0];
                break;
            }
            i7++;
        }
        return bigInteger.intValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r8 = r8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long procedure_Aa(long r8, long r10, java.math.BigInteger[] r12, int r13) {
        /*
            Method dump skipped, instructions count: 739
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.generators.GOST3410ParametersGenerator.procedure_Aa(long, long, java.math.BigInteger[], int):long");
    }

    private void procedure_B(int i, int i2, BigInteger[] bigIntegerArr) {
        while (true) {
            if (i < 0 || i > 65536) {
                i = this.init_random.nextInt() / 32768;
            }
        }
        while (true) {
            if (i2 >= 0 && i2 <= 65536 && i2 / 2 != 0) {
                break;
            }
            i2 = (this.init_random.nextInt() / 32768) + 1;
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[2];
        BigInteger bigInteger = new BigInteger(Integer.toString(i2));
        BigInteger bigInteger2 = new BigInteger("19381");
        int procedure_A = procedure_A(i, i2, bigIntegerArr2, 256);
        BigInteger bigInteger3 = bigIntegerArr2[0];
        int procedure_A2 = procedure_A(procedure_A, i2, bigIntegerArr2, 512);
        BigInteger bigInteger4 = bigIntegerArr2[0];
        BigInteger[] bigIntegerArr3 = new BigInteger[65];
        bigIntegerArr3[0] = new BigInteger(Integer.toString(procedure_A2));
        while (true) {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 >= 64) {
                    break;
                }
                int i5 = i4 + 1;
                bigIntegerArr3[i5] = bigIntegerArr3[i4].multiply(bigInteger2).add(bigInteger).mod(TWO.pow(16));
                i3 = i5;
            }
            BigInteger bigInteger5 = new BigInteger("0");
            for (int i6 = 0; i6 < 64; i6++) {
                bigInteger5 = bigInteger5.add(bigIntegerArr3[i6].multiply(TWO.pow(i6 * 16)));
            }
            bigIntegerArr3[0] = bigIntegerArr3[64];
            BigInteger bigInteger6 = TWO;
            BigInteger add = bigInteger6.pow(1023).divide(bigInteger3.multiply(bigInteger4)).add(bigInteger6.pow(1023).multiply(bigInteger5).divide(bigInteger3.multiply(bigInteger4).multiply(bigInteger6.pow(1024))));
            BigInteger mod = add.mod(bigInteger6);
            BigInteger bigInteger7 = ONE;
            BigInteger bigInteger8 = add;
            if (mod.compareTo(bigInteger7) == 0) {
                bigInteger8 = add.add(bigInteger7);
            }
            int i7 = 0;
            while (true) {
                BigInteger multiply = bigInteger3.multiply(bigInteger4);
                long j = i7;
                BigInteger multiply2 = multiply.multiply(bigInteger8.add(BigInteger.valueOf(j)));
                BigInteger bigInteger9 = ONE;
                BigInteger add2 = multiply2.add(bigInteger9);
                BigInteger bigInteger10 = TWO;
                if (add2.compareTo(bigInteger10.pow(1024)) == 1) {
                    break;
                } else if (bigInteger10.modPow(bigInteger3.multiply(bigInteger4).multiply(bigInteger8.add(BigInteger.valueOf(j))), add2).compareTo(bigInteger9) == 0 && bigInteger10.modPow(bigInteger3.multiply(bigInteger8.add(BigInteger.valueOf(j))), add2).compareTo(bigInteger9) != 0) {
                    bigIntegerArr[0] = add2;
                    bigIntegerArr[1] = bigInteger3;
                    return;
                } else {
                    i7 += 2;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r9 = r9;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r8v0, types: [org.bouncycastle.crypto.generators.GOST3410ParametersGenerator] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void procedure_Bb(long r9, long r11, java.math.BigInteger[] r13) {
        /*
            Method dump skipped, instructions count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.generators.GOST3410ParametersGenerator.procedure_Bb(long, long, java.math.BigInteger[]):void");
    }

    private BigInteger procedure_C(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger subtract = bigInteger.subtract(ONE);
        BigInteger divide = subtract.divide(bigInteger2);
        int bitLength = bigInteger.bitLength();
        while (true) {
            BigInteger bigInteger3 = new BigInteger(bitLength, this.init_random);
            BigInteger bigInteger4 = ONE;
            if (bigInteger3.compareTo(bigInteger4) > 0 && bigInteger3.compareTo(subtract) < 0) {
                BigInteger modPow = bigInteger3.modPow(divide, bigInteger);
                if (modPow.compareTo(bigInteger4) != 0) {
                    return modPow;
                }
            }
        }
    }

    public GOST3410Parameters generateParameters() {
        BigInteger[] bigIntegerArr = new BigInteger[2];
        if (this.typeproc == 1) {
            int nextInt = this.init_random.nextInt();
            int nextInt2 = this.init_random.nextInt();
            int i = this.size;
            if (i == 512) {
                procedure_A(nextInt, nextInt2, bigIntegerArr, 512);
            } else if (i != 1024) {
                throw new IllegalArgumentException("Ooops! key size 512 or 1024 bit.");
            } else {
                procedure_B(nextInt, nextInt2, bigIntegerArr);
            }
            BigInteger bigInteger = bigIntegerArr[0];
            BigInteger bigInteger2 = bigIntegerArr[1];
            return new GOST3410Parameters(bigInteger, bigInteger2, procedure_C(bigInteger, bigInteger2), new GOST3410ValidationParameters(nextInt, nextInt2));
        }
        long nextLong = this.init_random.nextLong();
        long nextLong2 = this.init_random.nextLong();
        int i2 = this.size;
        if (i2 == 512) {
            procedure_Aa(nextLong, nextLong2, bigIntegerArr, 512);
        } else if (i2 != 1024) {
            throw new IllegalStateException("Ooops! key size 512 or 1024 bit.");
        } else {
            procedure_Bb(nextLong, nextLong2, bigIntegerArr);
        }
        BigInteger bigInteger3 = bigIntegerArr[0];
        BigInteger bigInteger4 = bigIntegerArr[1];
        return new GOST3410Parameters(bigInteger3, bigInteger4, procedure_C(bigInteger3, bigInteger4), new GOST3410ValidationParameters(nextLong, nextLong2));
    }

    public void init(int i, int i2, SecureRandom secureRandom) {
        this.size = i;
        this.typeproc = i2;
        this.init_random = secureRandom;
    }
}
