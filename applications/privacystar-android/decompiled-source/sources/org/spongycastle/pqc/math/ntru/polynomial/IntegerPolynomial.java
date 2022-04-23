package org.spongycastle.pqc.math.ntru.polynomial;

import com.privacystar.core.p011ui.call_center.CallCenterService;
import com.privacystar.core.util.text.Characters;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.text.Typography;
import org.spongycastle.pqc.math.ntru.euclid.BigIntEuclidean;
import org.spongycastle.pqc.math.ntru.util.ArrayEncoder;
import org.spongycastle.pqc.math.ntru.util.Util;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial.class */
public class IntegerPolynomial implements Polynomial {
    private static final int NUM_EQUAL_RESULTANTS = 3;
    public int[] coeffs;
    private static final int[] PRIMES = {4507, 4513, 4517, 4519, 4523, 4547, 4549, 4561, 4567, 4583, 4591, 4597, 4603, 4621, 4637, 4639, 4643, 4649, 4651, 4657, 4663, 4673, 4679, 4691, 4703, 4721, 4723, 4729, 4733, 4751, 4759, 4783, 4787, 4789, 4793, 4799, 4801, 4813, 4817, 4831, 4861, 4871, 4877, 4889, 4903, 4909, 4919, 4931, 4933, 4937, 4943, 4951, 4957, 4967, 4969, 4973, 4987, 4993, 4999, 5003, 5009, 5011, 5021, 5023, 5039, 5051, 5059, 5077, 5081, 5087, 5099, 5101, 5107, 5113, 5119, 5147, 5153, 5167, 5171, 5179, 5189, 5197, 5209, 5227, 5231, 5233, 5237, 5261, 5273, 5279, 5281, 5297, 5303, 5309, 5323, 5333, 5347, 5351, 5381, 5387, 5393, 5399, 5407, 5413, 5417, 5419, 5431, 5437, 5441, 5443, 5449, 5471, 5477, 5479, 5483, 5501, 5503, 5507, 5519, 5521, 5527, 5531, 5557, 5563, 5569, 5573, 5581, 5591, 5623, 5639, 5641, 5647, 5651, 5653, 5657, 5659, 5669, 5683, 5689, 5693, 5701, 5711, 5717, 5737, 5741, 5743, 5749, 5779, 5783, 5791, 5801, 5807, 5813, 5821, 5827, 5839, 5843, 5849, 5851, 5857, 5861, 5867, 5869, 5879, 5881, 5897, 5903, 5923, 5927, 5939, 5953, 5981, 5987, 6007, 6011, 6029, 6037, 6043, 6047, 6053, 6067, 6073, 6079, 6089, 6091, 6101, 6113, 6121, 6131, 6133, 6143, 6151, 6163, 6173, 6197, 6199, 6203, 6211, 6217, 6221, 6229, 6247, 6257, 6263, 6269, 6271, 6277, 6287, 6299, 6301, 6311, 6317, 6323, 6329, 6337, 6343, 6353, 6359, 6361, 6367, 6373, 6379, 6389, 6397, 6421, 6427, 6449, 6451, 6469, 6473, 6481, 6491, 6521, 6529, 6547, 6551, 6553, 6563, 6569, 6571, 6577, 6581, 6599, 6607, 6619, 6637, 6653, 6659, 6661, 6673, 6679, 6689, 6691, 6701, 6703, 6709, 6719, 6733, 6737, 6761, 6763, 6779, 6781, 6791, 6793, 6803, 6823, 6827, 6829, 6833, 6841, 6857, 6863, 6869, 6871, 6883, 6899, 6907, 6911, 6917, 6947, 6949, 6959, 6961, 6967, 6971, 6977, 6983, 6991, 6997, 7001, 7013, 7019, 7027, 7039, 7043, 7057, 7069, 7079, 7103, 7109, 7121, 7127, 7129, 7151, 7159, 7177, 7187, 7193, 7207, 7211, 7213, 7219, 7229, 7237, 7243, 7247, 7253, 7283, 7297, 7307, 7309, 7321, 7331, 7333, 7349, 7351, 7369, 7393, 7411, 7417, 7433, 7451, 7457, 7459, 7477, 7481, 7487, 7489, 7499, 7507, 7517, 7523, 7529, 7537, 7541, 7547, 7549, 7559, 7561, 7573, 7577, 7583, 7589, 7591, 7603, 7607, 7621, 7639, 7643, 7649, 7669, 7673, 7681, 7687, 7691, 7699, 7703, 7717, 7723, 7727, 7741, 7753, 7757, 7759, 7789, 7793, 7817, 7823, 7829, 7841, 7853, 7867, 7873, 7877, 7879, 7883, 7901, 7907, 7919, 7927, 7933, 7937, 7949, 7951, 7963, 7993, 8009, 8011, 8017, 8039, 8053, 8059, 8069, 8081, 8087, 8089, 8093, 8101, 8111, 8117, 8123, 8147, 8161, 8167, 8171, 8179, 8191, Characters.NON_BREAKING_HYPHEN, 8219, 8221, 8231, 8233, 8237, Typography.doublePrime, 8263, 8269, 8273, 8287, 8291, 8293, 8297, 8311, 8317, 8329, 8353, 8363, 8369, 8377, 8387, 8389, 8419, 8423, 8429, 8431, 8443, 8447, 8461, 8467, 8501, 8513, 8521, 8527, 8537, 8539, 8543, 8563, 8573, 8581, 8597, 8599, 8609, 8623, 8627, 8629, 8641, 8647, 8663, 8669, 8677, 8681, 8689, 8693, 8699, 8707, 8713, 8719, 8731, 8737, 8741, 8747, 8753, 8761, 8779, 8783, 8803, 8807, 8819, 8821, 8831, 8837, 8839, 8849, 8861, 8863, 8867, 8887, 8893, 8923, 8929, 8933, 8941, 8951, 8963, 8969, 8971, 8999, 9001, 9007, 9011, 9013, 9029, 9041, 9043, 9049, 9059, 9067, 9091, 9103, 9109, 9127, 9133, 9137, 9151, 9157, 9161, 9173, 9181, 9187, 9199, 9203, 9209, 9221, 9227, 9239, 9241, 9257, 9277, 9281, 9283, 9293, 9311, 9319, 9323, 9337, 9341, 9343, 9349, 9371, 9377, 9391, 9397, 9403, 9413, 9419, 9421, 9431, 9433, 9437, 9439, 9461, 9463, 9467, 9473, 9479, 9491, 9497, 9511, 9521, 9533, 9539, 9547, 9551, 9587, 9601, 9613, 9619, 9623, 9629, 9631, 9643, 9649, 9661, 9677, 9679, 9689, 9697, 9719, 9721, 9733, 9739, 9743, 9749, 9767, 9769, 9781, 9787, 9791, 9803, 9811, 9817, 9829, 9833, 9839, 9851, 9857, 9859, 9871, 9883, 9887, CallCenterService.SERVICE_ID, 9907, 9923, 9929, 9931, 9941, 9949, 9967, 9973};
    private static final List BIGINT_PRIMES = new ArrayList();

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$CombineTask.class */
    private class CombineTask implements Callable<ModularResultant> {
        private ModularResultant modRes1;
        private ModularResultant modRes2;

        private CombineTask(ModularResultant modularResultant, ModularResultant modularResultant2) {
            this.modRes1 = modularResultant;
            this.modRes2 = modularResultant2;
        }

        @Override // java.util.concurrent.Callable
        public ModularResultant call() {
            return ModularResultant.combineRho(this.modRes1, this.modRes2);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$ModResultantTask.class */
    private class ModResultantTask implements Callable<ModularResultant> {
        private int modulus;

        private ModResultantTask(int i) {
            this.modulus = i;
        }

        @Override // java.util.concurrent.Callable
        public ModularResultant call() {
            return IntegerPolynomial.this.resultant(this.modulus);
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$PrimeGenerator.class */
    private class PrimeGenerator {
        private int index;
        private BigInteger prime;

        private PrimeGenerator() {
            this.index = 0;
        }

        public BigInteger nextPrime() {
            if (this.index < IntegerPolynomial.BIGINT_PRIMES.size()) {
                List list = IntegerPolynomial.BIGINT_PRIMES;
                int i = this.index;
                this.index = i + 1;
                this.prime = (BigInteger) list.get(i);
            } else {
                this.prime = this.prime.nextProbablePrime();
            }
            return this.prime;
        }
    }

    static {
        for (int i = 0; i != PRIMES.length; i++) {
            BIGINT_PRIMES.add(BigInteger.valueOf(PRIMES[i]));
        }
    }

    public IntegerPolynomial(int i) {
        this.coeffs = new int[i];
    }

    public IntegerPolynomial(BigIntPolynomial bigIntPolynomial) {
        this.coeffs = new int[bigIntPolynomial.coeffs.length];
        for (int i = 0; i < bigIntPolynomial.coeffs.length; i++) {
            this.coeffs[i] = bigIntPolynomial.coeffs[i].intValue();
        }
    }

    public IntegerPolynomial(int[] iArr) {
        this.coeffs = iArr;
    }

    private boolean equalsAbsOne() {
        boolean z = true;
        for (int i = 1; i < this.coeffs.length; i++) {
            if (this.coeffs[i] != 0) {
                return false;
            }
        }
        if (Math.abs(this.coeffs[0]) != 1) {
            z = false;
        }
        return z;
    }

    private boolean equalsZero() {
        for (int i = 0; i < this.coeffs.length; i++) {
            if (this.coeffs[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static IntegerPolynomial fromBinary(InputStream inputStream, int i, int i2) throws IOException {
        return new IntegerPolynomial(ArrayEncoder.decodeModQ(inputStream, i, i2));
    }

    public static IntegerPolynomial fromBinary(byte[] bArr, int i, int i2) {
        return new IntegerPolynomial(ArrayEncoder.decodeModQ(bArr, i, i2));
    }

    public static IntegerPolynomial fromBinary3Sves(byte[] bArr, int i) {
        return new IntegerPolynomial(ArrayEncoder.decodeMod3Sves(bArr, i));
    }

    public static IntegerPolynomial fromBinary3Tight(InputStream inputStream, int i) throws IOException {
        return new IntegerPolynomial(ArrayEncoder.decodeMod3Tight(inputStream, i));
    }

    public static IntegerPolynomial fromBinary3Tight(byte[] bArr, int i) {
        return new IntegerPolynomial(ArrayEncoder.decodeMod3Tight(bArr, i));
    }

    private IntegerPolynomial mod2ToModq(IntegerPolynomial integerPolynomial, int i) {
        int i2 = 2;
        int i3 = 2;
        IntegerPolynomial integerPolynomial2 = integerPolynomial;
        if (Util.is64BitJVM()) {
            i3 = 2;
            integerPolynomial2 = integerPolynomial;
            if (i == 2048) {
                LongPolynomial2 longPolynomial2 = new LongPolynomial2(this);
                LongPolynomial2 longPolynomial22 = new LongPolynomial2(integerPolynomial);
                while (i2 < i) {
                    i2 *= 2;
                    LongPolynomial2 longPolynomial23 = (LongPolynomial2) longPolynomial22.clone();
                    int i4 = i2 - 1;
                    longPolynomial23.mult2And(i4);
                    longPolynomial23.subAnd(longPolynomial2.mult(longPolynomial22).mult(longPolynomial22), i4);
                    longPolynomial22 = longPolynomial23;
                }
                return longPolynomial22.toIntegerPolynomial();
            }
        }
        while (i3 < i) {
            i3 *= 2;
            IntegerPolynomial integerPolynomial3 = new IntegerPolynomial(Arrays.copyOf(integerPolynomial2.coeffs, integerPolynomial2.coeffs.length));
            integerPolynomial3.mult2(i3);
            integerPolynomial3.sub(mult(integerPolynomial2, i3).mult(integerPolynomial2, i3), i3);
            integerPolynomial2 = integerPolynomial3;
        }
        return integerPolynomial2;
    }

    private void mult2(int i) {
        for (int i2 = 0; i2 < this.coeffs.length; i2++) {
            int[] iArr = this.coeffs;
            iArr[i2] = iArr[i2] * 2;
            int[] iArr2 = this.coeffs;
            iArr2[i2] = iArr2[i2] % i;
        }
    }

    private IntegerPolynomial multRecursive(IntegerPolynomial integerPolynomial) {
        int[] iArr = this.coeffs;
        int[] iArr2 = integerPolynomial.coeffs;
        int length = integerPolynomial.coeffs.length;
        if (length <= 32) {
            int i = (length * 2) - 1;
            IntegerPolynomial integerPolynomial2 = new IntegerPolynomial(new int[i]);
            for (int i2 = 0; i2 < i; i2++) {
                for (int max = Math.max(0, (i2 - length) + 1); max <= Math.min(i2, length - 1); max++) {
                    int[] iArr3 = integerPolynomial2.coeffs;
                    iArr3[i2] = iArr3[i2] + (iArr2[max] * iArr[i2 - max]);
                }
            }
            return integerPolynomial2;
        }
        int i3 = length / 2;
        IntegerPolynomial integerPolynomial3 = new IntegerPolynomial(Arrays.copyOf(iArr, i3));
        IntegerPolynomial integerPolynomial4 = new IntegerPolynomial(Arrays.copyOfRange(iArr, i3, length));
        IntegerPolynomial integerPolynomial5 = new IntegerPolynomial(Arrays.copyOf(iArr2, i3));
        IntegerPolynomial integerPolynomial6 = new IntegerPolynomial(Arrays.copyOfRange(iArr2, i3, length));
        IntegerPolynomial integerPolynomial7 = (IntegerPolynomial) integerPolynomial3.clone();
        integerPolynomial7.add(integerPolynomial4);
        IntegerPolynomial integerPolynomial8 = (IntegerPolynomial) integerPolynomial5.clone();
        integerPolynomial8.add(integerPolynomial6);
        IntegerPolynomial multRecursive = integerPolynomial3.multRecursive(integerPolynomial5);
        IntegerPolynomial multRecursive2 = integerPolynomial4.multRecursive(integerPolynomial6);
        IntegerPolynomial multRecursive3 = integerPolynomial7.multRecursive(integerPolynomial8);
        multRecursive3.sub(multRecursive);
        multRecursive3.sub(multRecursive2);
        IntegerPolynomial integerPolynomial9 = new IntegerPolynomial((length * 2) - 1);
        for (int i4 = 0; i4 < multRecursive.coeffs.length; i4++) {
            integerPolynomial9.coeffs[i4] = multRecursive.coeffs[i4];
        }
        for (int i5 = 0; i5 < multRecursive3.coeffs.length; i5++) {
            int[] iArr4 = integerPolynomial9.coeffs;
            int i6 = i3 + i5;
            iArr4[i6] = iArr4[i6] + multRecursive3.coeffs[i5];
        }
        for (int i7 = 0; i7 < multRecursive2.coeffs.length; i7++) {
            int[] iArr5 = integerPolynomial9.coeffs;
            int i8 = (i3 * 2) + i7;
            iArr5[i8] = iArr5[i8] + multRecursive2.coeffs[i7];
        }
        return integerPolynomial9;
    }

    private void multShiftSub(IntegerPolynomial integerPolynomial, int i, int i2, int i3) {
        int length = this.coeffs.length;
        for (int i4 = i2; i4 < length; i4++) {
            this.coeffs[i4] = (this.coeffs[i4] - (integerPolynomial.coeffs[i4 - i2] * i)) % i3;
        }
    }

    private void sort(int[] iArr) {
        boolean z = true;
        while (z) {
            int i = 0;
            z = false;
            while (i != iArr.length - 1) {
                int i2 = i + 1;
                if (iArr[i] > iArr[i2]) {
                    int i3 = iArr[i];
                    iArr[i] = iArr[i2];
                    iArr[i2] = i3;
                    z = true;
                }
                i = i2;
            }
        }
    }

    private BigInteger squareSum() {
        BigInteger bigInteger = Constants.BIGINT_ZERO;
        for (int i = 0; i < this.coeffs.length; i++) {
            bigInteger = bigInteger.add(BigInteger.valueOf(this.coeffs[i] * this.coeffs[i]));
        }
        return bigInteger;
    }

    public void add(IntegerPolynomial integerPolynomial) {
        if (integerPolynomial.coeffs.length > this.coeffs.length) {
            this.coeffs = Arrays.copyOf(this.coeffs, integerPolynomial.coeffs.length);
        }
        for (int i = 0; i < integerPolynomial.coeffs.length; i++) {
            int[] iArr = this.coeffs;
            iArr[i] = iArr[i] + integerPolynomial.coeffs[i];
        }
    }

    public void add(IntegerPolynomial integerPolynomial, int i) {
        add(integerPolynomial);
        mod(i);
    }

    public void center0(int i) {
        for (int i2 = 0; i2 < this.coeffs.length; i2++) {
            while (this.coeffs[i2] < (-i) / 2) {
                int[] iArr = this.coeffs;
                iArr[i2] = iArr[i2] + i;
            }
            while (this.coeffs[i2] > i / 2) {
                int[] iArr2 = this.coeffs;
                iArr2[i2] = iArr2[i2] - i;
            }
        }
    }

    public long centeredNormSq(int i) {
        int length = this.coeffs.length;
        IntegerPolynomial integerPolynomial = (IntegerPolynomial) clone();
        integerPolynomial.shiftGap(i);
        long j = 0;
        long j2 = 0;
        for (int i2 = 0; i2 != integerPolynomial.coeffs.length; i2++) {
            int i3 = integerPolynomial.coeffs[i2];
            j += i3;
            j2 += i3 * i3;
        }
        return j2 - ((j * j) / length);
    }

    public void clear() {
        for (int i = 0; i < this.coeffs.length; i++) {
            this.coeffs[i] = 0;
        }
    }

    public Object clone() {
        return new IntegerPolynomial((int[]) this.coeffs.clone());
    }

    public int count(int i) {
        int i2 = 0;
        for (int i3 = 0; i3 != this.coeffs.length; i3++) {
            i2 = i2;
            if (this.coeffs[i3] == i) {
                i2++;
            }
        }
        return i2;
    }

    int degree() {
        int length = this.coeffs.length - 1;
        while (length > 0 && this.coeffs[length] == 0) {
            length--;
        }
        return length;
    }

    public void div(int i) {
        int i2 = (i + 1) / 2;
        for (int i3 = 0; i3 < this.coeffs.length; i3++) {
            int[] iArr = this.coeffs;
            iArr[i3] = iArr[i3] + (this.coeffs[i3] > 0 ? i2 : -i2);
            int[] iArr2 = this.coeffs;
            iArr2[i3] = iArr2[i3] / i;
        }
    }

    public void ensurePositive(int i) {
        for (int i2 = 0; i2 < this.coeffs.length; i2++) {
            while (this.coeffs[i2] < 0) {
                int[] iArr = this.coeffs;
                iArr[i2] = iArr[i2] + i;
            }
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof IntegerPolynomial) {
            return Arrays.areEqual(this.coeffs, ((IntegerPolynomial) obj).coeffs);
        }
        return false;
    }

    public boolean equalsOne() {
        boolean z = true;
        for (int i = 1; i < this.coeffs.length; i++) {
            if (this.coeffs[i] != 0) {
                return false;
            }
        }
        if (this.coeffs[0] != 1) {
            z = false;
        }
        return z;
    }

    public IntegerPolynomial invertF3() {
        int length = this.coeffs.length;
        int i = length + 1;
        IntegerPolynomial integerPolynomial = new IntegerPolynomial(i);
        integerPolynomial.coeffs[0] = 1;
        IntegerPolynomial integerPolynomial2 = new IntegerPolynomial(i);
        IntegerPolynomial integerPolynomial3 = new IntegerPolynomial(i);
        integerPolynomial3.coeffs = Arrays.copyOf(this.coeffs, i);
        integerPolynomial3.modPositive(3);
        IntegerPolynomial integerPolynomial4 = new IntegerPolynomial(i);
        integerPolynomial4.coeffs[0] = -1;
        integerPolynomial4.coeffs[length] = 1;
        int i2 = 0;
        while (true) {
            if (integerPolynomial3.coeffs[0] == 0) {
                for (int i3 = 1; i3 <= length; i3++) {
                    integerPolynomial3.coeffs[i3 - 1] = integerPolynomial3.coeffs[i3];
                    integerPolynomial2.coeffs[i - i3] = integerPolynomial2.coeffs[length - i3];
                }
                integerPolynomial3.coeffs[length] = 0;
                integerPolynomial2.coeffs[0] = 0;
                i2++;
                if (integerPolynomial3.equalsZero()) {
                    return null;
                }
            } else if (!integerPolynomial3.equalsAbsOne()) {
                IntegerPolynomial integerPolynomial5 = integerPolynomial2;
                IntegerPolynomial integerPolynomial6 = integerPolynomial3;
                IntegerPolynomial integerPolynomial7 = integerPolynomial4;
                IntegerPolynomial integerPolynomial8 = integerPolynomial;
                if (integerPolynomial3.degree() < integerPolynomial4.degree()) {
                    integerPolynomial8 = integerPolynomial2;
                    integerPolynomial7 = integerPolynomial3;
                    integerPolynomial6 = integerPolynomial4;
                    integerPolynomial5 = integerPolynomial;
                }
                if (integerPolynomial6.coeffs[0] == integerPolynomial7.coeffs[0]) {
                    integerPolynomial6.sub(integerPolynomial7, 3);
                    integerPolynomial8.sub(integerPolynomial5, 3);
                    integerPolynomial2 = integerPolynomial5;
                    integerPolynomial3 = integerPolynomial6;
                    integerPolynomial4 = integerPolynomial7;
                    integerPolynomial = integerPolynomial8;
                } else {
                    integerPolynomial6.add(integerPolynomial7, 3);
                    integerPolynomial8.add(integerPolynomial5, 3);
                    integerPolynomial2 = integerPolynomial5;
                    integerPolynomial3 = integerPolynomial6;
                    integerPolynomial4 = integerPolynomial7;
                    integerPolynomial = integerPolynomial8;
                }
            } else if (integerPolynomial.coeffs[length] != 0) {
                return null;
            } else {
                IntegerPolynomial integerPolynomial9 = new IntegerPolynomial(length);
                for (int i4 = length - 1; i4 >= 0; i4--) {
                    int i5 = i4 - (i2 % length);
                    int i6 = i5;
                    if (i5 < 0) {
                        i6 = i5 + length;
                    }
                    integerPolynomial9.coeffs[i6] = integerPolynomial3.coeffs[0] * integerPolynomial.coeffs[i4];
                }
                integerPolynomial9.ensurePositive(3);
                return integerPolynomial9;
            }
        }
    }

    public IntegerPolynomial invertFq(int i) {
        int length = this.coeffs.length;
        int i2 = length + 1;
        IntegerPolynomial integerPolynomial = new IntegerPolynomial(i2);
        integerPolynomial.coeffs[0] = 1;
        IntegerPolynomial integerPolynomial2 = new IntegerPolynomial(i2);
        IntegerPolynomial integerPolynomial3 = new IntegerPolynomial(i2);
        integerPolynomial3.coeffs = Arrays.copyOf(this.coeffs, i2);
        integerPolynomial3.modPositive(2);
        IntegerPolynomial integerPolynomial4 = new IntegerPolynomial(i2);
        integerPolynomial4.coeffs[0] = 1;
        integerPolynomial4.coeffs[length] = 1;
        int i3 = 0;
        while (true) {
            if (integerPolynomial3.coeffs[0] == 0) {
                for (int i4 = 1; i4 <= length; i4++) {
                    integerPolynomial3.coeffs[i4 - 1] = integerPolynomial3.coeffs[i4];
                    integerPolynomial2.coeffs[i2 - i4] = integerPolynomial2.coeffs[length - i4];
                }
                integerPolynomial3.coeffs[length] = 0;
                integerPolynomial2.coeffs[0] = 0;
                i3++;
                if (integerPolynomial3.equalsZero()) {
                    return null;
                }
            } else if (!integerPolynomial3.equalsOne()) {
                IntegerPolynomial integerPolynomial5 = integerPolynomial2;
                IntegerPolynomial integerPolynomial6 = integerPolynomial3;
                IntegerPolynomial integerPolynomial7 = integerPolynomial4;
                IntegerPolynomial integerPolynomial8 = integerPolynomial;
                if (integerPolynomial3.degree() < integerPolynomial4.degree()) {
                    integerPolynomial8 = integerPolynomial2;
                    integerPolynomial7 = integerPolynomial3;
                    integerPolynomial6 = integerPolynomial4;
                    integerPolynomial5 = integerPolynomial;
                }
                integerPolynomial6.add(integerPolynomial7, 2);
                integerPolynomial8.add(integerPolynomial5, 2);
                integerPolynomial2 = integerPolynomial5;
                integerPolynomial3 = integerPolynomial6;
                integerPolynomial4 = integerPolynomial7;
                integerPolynomial = integerPolynomial8;
            } else if (integerPolynomial.coeffs[length] != 0) {
                return null;
            } else {
                IntegerPolynomial integerPolynomial9 = new IntegerPolynomial(length);
                for (int i5 = length - 1; i5 >= 0; i5--) {
                    int i6 = i5 - (i3 % length);
                    int i7 = i6;
                    if (i6 < 0) {
                        i7 = i6 + length;
                    }
                    integerPolynomial9.coeffs[i7] = integerPolynomial.coeffs[i5];
                }
                return mod2ToModq(integerPolynomial9, i);
            }
        }
    }

    public void mod(int i) {
        for (int i2 = 0; i2 < this.coeffs.length; i2++) {
            int[] iArr = this.coeffs;
            iArr[i2] = iArr[i2] % i;
        }
    }

    public void mod3() {
        for (int i = 0; i < this.coeffs.length; i++) {
            int[] iArr = this.coeffs;
            iArr[i] = iArr[i] % 3;
            if (this.coeffs[i] > 1) {
                int[] iArr2 = this.coeffs;
                iArr2[i] = iArr2[i] - 3;
            }
            if (this.coeffs[i] < -1) {
                int[] iArr3 = this.coeffs;
                iArr3[i] = iArr3[i] + 3;
            }
        }
    }

    void modCenter(int i) {
        int i2;
        mod(i);
        for (int i3 = 0; i3 < this.coeffs.length; i3++) {
            while (true) {
                i2 = i / 2;
                if (this.coeffs[i3] < i2) {
                    int[] iArr = this.coeffs;
                    iArr[i3] = iArr[i3] + i;
                }
            }
            while (this.coeffs[i3] >= i2) {
                int[] iArr2 = this.coeffs;
                iArr2[i3] = iArr2[i3] - i;
            }
        }
    }

    public void modPositive(int i) {
        mod(i);
        ensurePositive(i);
    }

    @Override // org.spongycastle.pqc.math.ntru.polynomial.Polynomial
    public BigIntPolynomial mult(BigIntPolynomial bigIntPolynomial) {
        return new BigIntPolynomial(this).mult(bigIntPolynomial);
    }

    @Override // org.spongycastle.pqc.math.ntru.polynomial.Polynomial
    public IntegerPolynomial mult(IntegerPolynomial integerPolynomial) {
        int length = this.coeffs.length;
        if (integerPolynomial.coeffs.length != length) {
            throw new IllegalArgumentException("Number of coefficients must be the same");
        }
        IntegerPolynomial multRecursive = multRecursive(integerPolynomial);
        if (multRecursive.coeffs.length > length) {
            for (int i = length; i < multRecursive.coeffs.length; i++) {
                int[] iArr = multRecursive.coeffs;
                int i2 = i - length;
                iArr[i2] = iArr[i2] + multRecursive.coeffs[i];
            }
            multRecursive.coeffs = Arrays.copyOf(multRecursive.coeffs, length);
        }
        return multRecursive;
    }

    @Override // org.spongycastle.pqc.math.ntru.polynomial.Polynomial
    public IntegerPolynomial mult(IntegerPolynomial integerPolynomial, int i) {
        IntegerPolynomial mult = mult(integerPolynomial);
        mult.mod(i);
        return mult;
    }

    public void mult(int i) {
        for (int i2 = 0; i2 < this.coeffs.length; i2++) {
            int[] iArr = this.coeffs;
            iArr[i2] = iArr[i2] * i;
        }
    }

    public void mult3(int i) {
        for (int i2 = 0; i2 < this.coeffs.length; i2++) {
            int[] iArr = this.coeffs;
            iArr[i2] = iArr[i2] * 3;
            int[] iArr2 = this.coeffs;
            iArr2[i2] = iArr2[i2] % i;
        }
    }

    public ModularResultant resultant(int i) {
        int[] copyOf = Arrays.copyOf(this.coeffs, this.coeffs.length + 1);
        IntegerPolynomial integerPolynomial = new IntegerPolynomial(copyOf);
        int length = copyOf.length;
        IntegerPolynomial integerPolynomial2 = new IntegerPolynomial(length);
        integerPolynomial2.coeffs[0] = -1;
        int i2 = length - 1;
        integerPolynomial2.coeffs[i2] = 1;
        IntegerPolynomial integerPolynomial3 = new IntegerPolynomial(integerPolynomial.coeffs);
        IntegerPolynomial integerPolynomial4 = new IntegerPolynomial(length);
        IntegerPolynomial integerPolynomial5 = new IntegerPolynomial(length);
        integerPolynomial5.coeffs[0] = 1;
        int degree = integerPolynomial3.degree();
        int i3 = 1;
        int i4 = i2;
        int i5 = i2;
        while (degree > 0) {
            int invert = (Util.invert(integerPolynomial3.coeffs[degree], i) * integerPolynomial2.coeffs[i4]) % i;
            int i6 = i4 - degree;
            integerPolynomial2.multShiftSub(integerPolynomial3, invert, i6, i);
            integerPolynomial4.multShiftSub(integerPolynomial5, invert, i6, i);
            int degree2 = integerPolynomial2.degree();
            i4 = degree2;
            integerPolynomial3 = integerPolynomial3;
            integerPolynomial5 = integerPolynomial5;
            if (degree2 < degree) {
                int pow = (i3 * Util.pow(integerPolynomial3.coeffs[degree], i5 - degree2, i)) % i;
                i3 = pow;
                if (i5 % 2 == 1) {
                    i3 = pow;
                    if (degree % 2 == 1) {
                        i3 = (-pow) % i;
                    }
                }
                i5 = degree;
                degree = degree2;
                i4 = i5;
                integerPolynomial3 = integerPolynomial2;
                integerPolynomial2 = integerPolynomial3;
                integerPolynomial5 = integerPolynomial4;
                integerPolynomial4 = integerPolynomial5;
            }
        }
        int pow2 = (i3 * Util.pow(integerPolynomial3.coeffs[0], i4, i)) % i;
        integerPolynomial5.mult(Util.invert(integerPolynomial3.coeffs[0], i));
        integerPolynomial5.mod(i);
        integerPolynomial5.mult(pow2);
        integerPolynomial5.mod(i);
        integerPolynomial5.coeffs = Arrays.copyOf(integerPolynomial5.coeffs, integerPolynomial5.coeffs.length - 1);
        return new ModularResultant(new BigIntPolynomial(integerPolynomial5), BigInteger.valueOf(pow2), BigInteger.valueOf(i));
    }

    public Resultant resultant() {
        BigInteger multiply;
        BigInteger bigInteger;
        int length = this.coeffs.length;
        LinkedList linkedList = new LinkedList();
        BigInteger bigInteger2 = Constants.BIGINT_ONE;
        BigInteger bigInteger3 = Constants.BIGINT_ONE;
        PrimeGenerator primeGenerator = new PrimeGenerator();
        int i = 1;
        while (true) {
            BigInteger nextPrime = primeGenerator.nextPrime();
            ModularResultant resultant = resultant(nextPrime.intValue());
            linkedList.add(resultant);
            multiply = bigInteger2.multiply(nextPrime);
            BigIntEuclidean calculate = BigIntEuclidean.calculate(nextPrime, bigInteger2);
            BigInteger mod = bigInteger3.multiply(calculate.f1806x.multiply(nextPrime)).add(resultant.res.multiply(calculate.f1807y.multiply(bigInteger2))).mod(multiply);
            BigInteger divide = multiply.divide(BigInteger.valueOf(2L));
            BigInteger negate = divide.negate();
            if (mod.compareTo(divide) > 0) {
                bigInteger = mod.subtract(multiply);
            } else {
                bigInteger = mod;
                if (mod.compareTo(negate) < 0) {
                    bigInteger = mod.add(multiply);
                }
            }
            if (bigInteger.equals(bigInteger3)) {
                int i2 = i + 1;
                i = i2;
                if (i2 >= 3) {
                    break;
                }
            } else {
                i = 1;
            }
            bigInteger3 = bigInteger;
            bigInteger2 = multiply;
        }
        while (linkedList.size() > 1) {
            linkedList.addLast(ModularResultant.combineRho((ModularResultant) linkedList.removeFirst(), (ModularResultant) linkedList.removeFirst()));
        }
        BigIntPolynomial bigIntPolynomial = ((ModularResultant) linkedList.getFirst()).rho;
        BigInteger divide2 = multiply.divide(BigInteger.valueOf(2L));
        BigInteger negate2 = divide2.negate();
        BigInteger bigInteger4 = bigInteger;
        if (bigInteger.compareTo(divide2) > 0) {
            bigInteger4 = bigInteger.subtract(multiply);
        }
        BigInteger bigInteger5 = bigInteger4;
        if (bigInteger4.compareTo(negate2) < 0) {
            bigInteger5 = bigInteger4.add(multiply);
        }
        for (int i3 = 0; i3 < length; i3++) {
            BigInteger bigInteger6 = bigIntPolynomial.coeffs[i3];
            if (bigInteger6.compareTo(divide2) > 0) {
                bigIntPolynomial.coeffs[i3] = bigInteger6.subtract(multiply);
            }
            if (bigInteger6.compareTo(negate2) < 0) {
                bigIntPolynomial.coeffs[i3] = bigInteger6.add(multiply);
            }
        }
        return new Resultant(bigIntPolynomial, bigInteger5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00cf, code lost:
        r11 = (org.spongycastle.pqc.math.ntru.polynomial.ModularResultant) r0.get();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.spongycastle.pqc.math.ntru.polynomial.Resultant resultantMultiThread() {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.math.ntru.polynomial.IntegerPolynomial.resultantMultiThread():org.spongycastle.pqc.math.ntru.polynomial.Resultant");
    }

    public void rotate1() {
        int i = this.coeffs[this.coeffs.length - 1];
        for (int length = this.coeffs.length - 1; length > 0; length--) {
            this.coeffs[length] = this.coeffs[length - 1];
        }
        this.coeffs[0] = i;
    }

    void shiftGap(int i) {
        modCenter(i);
        int[] clone = Arrays.clone(this.coeffs);
        sort(clone);
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < clone.length - 1) {
            int i5 = i2 + 1;
            int i6 = clone[i5] - clone[i2];
            i3 = i3;
            if (i6 > i3) {
                i4 = clone[i2];
                i3 = i6;
            }
            i2 = i5;
        }
        int i7 = clone[0];
        int i8 = clone[clone.length - 1];
        sub((i - i8) + i7 > i3 ? (i8 + i7) / 2 : i4 + (i3 / 2) + (i / 2));
    }

    void sub(int i) {
        for (int i2 = 0; i2 < this.coeffs.length; i2++) {
            int[] iArr = this.coeffs;
            iArr[i2] = iArr[i2] - i;
        }
    }

    public void sub(IntegerPolynomial integerPolynomial) {
        if (integerPolynomial.coeffs.length > this.coeffs.length) {
            this.coeffs = Arrays.copyOf(this.coeffs, integerPolynomial.coeffs.length);
        }
        for (int i = 0; i < integerPolynomial.coeffs.length; i++) {
            int[] iArr = this.coeffs;
            iArr[i] = iArr[i] - integerPolynomial.coeffs[i];
        }
    }

    public void sub(IntegerPolynomial integerPolynomial, int i) {
        sub(integerPolynomial);
        mod(i);
    }

    public int sumCoeffs() {
        int i = 0;
        for (int i2 = 0; i2 < this.coeffs.length; i2++) {
            i += this.coeffs[i2];
        }
        return i;
    }

    public byte[] toBinary(int i) {
        return ArrayEncoder.encodeModQ(this.coeffs, i);
    }

    public byte[] toBinary3Sves() {
        return ArrayEncoder.encodeMod3Sves(this.coeffs);
    }

    public byte[] toBinary3Tight() {
        BigInteger bigInteger = Constants.BIGINT_ZERO;
        for (int length = this.coeffs.length - 1; length >= 0; length--) {
            bigInteger = bigInteger.multiply(BigInteger.valueOf(3L)).add(BigInteger.valueOf(this.coeffs[length] + 1));
        }
        int bitLength = (BigInteger.valueOf(3L).pow(this.coeffs.length).bitLength() + 7) / 8;
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < bitLength) {
            byte[] bArr = new byte[bitLength];
            System.arraycopy(byteArray, 0, bArr, bitLength - byteArray.length, byteArray.length);
            return bArr;
        }
        byte[] bArr2 = byteArray;
        if (byteArray.length > bitLength) {
            bArr2 = Arrays.copyOfRange(byteArray, 1, byteArray.length);
        }
        return bArr2;
    }

    @Override // org.spongycastle.pqc.math.ntru.polynomial.Polynomial
    public IntegerPolynomial toIntegerPolynomial() {
        return (IntegerPolynomial) clone();
    }
}
