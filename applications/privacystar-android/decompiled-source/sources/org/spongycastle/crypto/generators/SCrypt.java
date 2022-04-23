package org.spongycastle.crypto.generators;

import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.engines.Salsa20Engine;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/generators/SCrypt.class */
public class SCrypt {
    private static void BlockMix(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int i) {
        System.arraycopy(iArr, iArr.length - 16, iArr2, 0, 16);
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = i * 2; i4 > 0; i4--) {
            Xor(iArr2, iArr, i2, iArr3);
            Salsa20Engine.salsaCore(8, iArr3, iArr2);
            System.arraycopy(iArr2, 0, iArr4, i3, 16);
            i3 = ((length >>> 1) + i2) - i3;
            i2 += 16;
        }
        System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
    }

    private static void Clear(byte[] bArr) {
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
        }
    }

    private static void Clear(int[] iArr) {
        if (iArr != null) {
            Arrays.fill(iArr, 0);
        }
    }

    private static void ClearAll(int[][] iArr) {
        for (int[] iArr2 : iArr) {
            Clear(iArr2);
        }
    }

    private static byte[] MFcrypt(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4) {
        int[] iArr;
        Throwable th;
        int length;
        int i5 = i2 * 128;
        byte[] SingleIterationPBKDF2 = SingleIterationPBKDF2(bArr, bArr2, i3 * i5);
        try {
            length = SingleIterationPBKDF2.length >>> 2;
            iArr = new int[length];
        } catch (Throwable th2) {
            th = th2;
            iArr = null;
        }
        try {
            Pack.littleEndianToInt(SingleIterationPBKDF2, 0, iArr);
            for (int i6 = 0; i6 < length; i6 += i5 >>> 2) {
                SMix(iArr, i6, i, i2);
            }
            Pack.intToLittleEndian(iArr, SingleIterationPBKDF2, 0);
            byte[] SingleIterationPBKDF22 = SingleIterationPBKDF2(bArr, SingleIterationPBKDF2, i4);
            Clear(SingleIterationPBKDF2);
            Clear(iArr);
            return SingleIterationPBKDF22;
        } catch (Throwable th3) {
            th = th3;
            Clear(SingleIterationPBKDF2);
            Clear(iArr);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [int[], int[][]] */
    /* JADX WARN: Type inference failed for: r0v14, types: [int[], int[][]] */
    /* JADX WARN: Type inference failed for: r0v24, types: [int[], int[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void SMix(int[] r6, int r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.crypto.generators.SCrypt.SMix(int[], int, int, int):void");
    }

    private static byte[] SingleIterationPBKDF2(byte[] bArr, byte[] bArr2, int i) {
        PKCS5S2ParametersGenerator pKCS5S2ParametersGenerator = new PKCS5S2ParametersGenerator(new SHA256Digest());
        pKCS5S2ParametersGenerator.init(bArr, bArr2, 1);
        return ((KeyParameter) pKCS5S2ParametersGenerator.generateDerivedMacParameters(i * 8)).getKey();
    }

    private static void Xor(int[] iArr, int[] iArr2, int i, int[] iArr3) {
        for (int length = iArr3.length - 1; length >= 0; length--) {
            iArr3[length] = iArr[length] ^ iArr2[i + length];
        }
    }

    public static byte[] generate(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4) {
        if (bArr == null) {
            throw new IllegalArgumentException("Passphrase P must be provided.");
        } else if (bArr2 == null) {
            throw new IllegalArgumentException("Salt S must be provided.");
        } else if (i <= 1) {
            throw new IllegalArgumentException("Cost parameter N must be > 1.");
        } else if (i2 == 1 && i > 65536) {
            throw new IllegalArgumentException("Cost parameter N must be > 1 and < 65536.");
        } else if (i2 < 1) {
            throw new IllegalArgumentException("Block size r must be >= 1.");
        } else {
            int i5 = Integer.MAX_VALUE / ((i2 * 128) * 8);
            if (i3 < 1 || i3 > i5) {
                throw new IllegalArgumentException("Parallelisation parameter p must be >= 1 and <= " + i5 + " (based on block size r of " + i2 + ")");
            } else if (i4 >= 1) {
                return MFcrypt(bArr, bArr2, i, i2, i3, i4);
            } else {
                throw new IllegalArgumentException("Generated key length dkLen must be >= 1.");
            }
        }
    }
}
