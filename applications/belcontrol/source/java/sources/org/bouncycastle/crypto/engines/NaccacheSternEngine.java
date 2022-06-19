package org.bouncycastle.crypto.engines;

import java.io.PrintStream;
import java.math.BigInteger;
import java.util.Vector;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.params.NaccacheSternKeyParameters;
import org.bouncycastle.crypto.params.NaccacheSternPrivateKeyParameters;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/NaccacheSternEngine.class */
public class NaccacheSternEngine implements AsymmetricBlockCipher {
    private boolean forEncryption;
    private NaccacheSternKeyParameters key;
    private static BigInteger ZERO = BigInteger.valueOf(0);
    private static BigInteger ONE = BigInteger.valueOf(1);
    private Vector[] lookup = null;
    private boolean debug = false;

    private static BigInteger chineseRemainder(Vector vector, Vector vector2) {
        BigInteger bigInteger;
        int i;
        BigInteger bigInteger2 = ZERO;
        BigInteger bigInteger3 = ONE;
        int i2 = 0;
        while (true) {
            bigInteger = bigInteger2;
            if (i2 < vector2.size()) {
                bigInteger3 = bigInteger3.multiply((BigInteger) vector2.elementAt(i2));
                i2++;
            }
        }
        for (i = 0; i < vector2.size(); i++) {
            BigInteger bigInteger4 = (BigInteger) vector2.elementAt(i);
            BigInteger divide = bigInteger3.divide(bigInteger4);
            bigInteger = bigInteger.add(divide.multiply(divide.modInverse(bigInteger4)).multiply((BigInteger) vector.elementAt(i)));
        }
        return bigInteger.mod(bigInteger3);
    }

    public byte[] addCryptedBlocks(byte[] bArr, byte[] bArr2) {
        if (this.forEncryption) {
            if (bArr.length > getOutputBlockSize() || bArr2.length > getOutputBlockSize()) {
                throw new InvalidCipherTextException("BlockLength too large for simple addition.\n");
            }
        } else if (bArr.length > getInputBlockSize() || bArr2.length > getInputBlockSize()) {
            throw new InvalidCipherTextException("BlockLength too large for simple addition.\n");
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        BigInteger bigInteger2 = new BigInteger(1, bArr2);
        BigInteger mod = bigInteger.multiply(bigInteger2).mod(this.key.getModulus());
        if (this.debug) {
            PrintStream printStream = System.out;
            printStream.println("c(m1) as BigInteger:....... " + bigInteger);
            PrintStream printStream2 = System.out;
            printStream2.println("c(m2) as BigInteger:....... " + bigInteger2);
            PrintStream printStream3 = System.out;
            printStream3.println("c(m1)*c(m2)%n = c(m1+m2)%n: " + mod);
        }
        byte[] byteArray = this.key.getModulus().toByteArray();
        Arrays.fill(byteArray, (byte) 0);
        System.arraycopy(mod.toByteArray(), 0, byteArray, byteArray.length - mod.toByteArray().length, mod.toByteArray().length);
        return byteArray;
    }

    public byte[] encrypt(BigInteger bigInteger) {
        byte[] byteArray = this.key.getModulus().toByteArray();
        Arrays.fill(byteArray, (byte) 0);
        byte[] byteArray2 = this.key.getG().modPow(bigInteger, this.key.getModulus()).toByteArray();
        System.arraycopy(byteArray2, 0, byteArray, byteArray.length - byteArray2.length, byteArray2.length);
        if (this.debug) {
            PrintStream printStream = System.out;
            printStream.println("Encrypted value is:  " + new BigInteger(byteArray));
        }
        return byteArray;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        return this.forEncryption ? ((this.key.getLowerSigmaBound() + 7) / 8) - 1 : this.key.getModulus().toByteArray().length;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        return this.forEncryption ? this.key.getModulus().toByteArray().length : ((this.key.getLowerSigmaBound() + 7) / 8) - 1;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        this.forEncryption = z;
        CipherParameters cipherParameters2 = cipherParameters;
        if (cipherParameters instanceof ParametersWithRandom) {
            cipherParameters2 = ((ParametersWithRandom) cipherParameters).getParameters();
        }
        this.key = (NaccacheSternKeyParameters) cipherParameters2;
        if (!this.forEncryption) {
            if (this.debug) {
                System.out.println("Constructing lookup Array");
            }
            NaccacheSternPrivateKeyParameters naccacheSternPrivateKeyParameters = (NaccacheSternPrivateKeyParameters) this.key;
            Vector smallPrimes = naccacheSternPrivateKeyParameters.getSmallPrimes();
            this.lookup = new Vector[smallPrimes.size()];
            for (int i = 0; i < smallPrimes.size(); i++) {
                BigInteger bigInteger = (BigInteger) smallPrimes.elementAt(i);
                int intValue = bigInteger.intValue();
                this.lookup[i] = new Vector();
                this.lookup[i].addElement(ONE);
                if (this.debug) {
                    System.out.println("Constructing lookup ArrayList for " + intValue);
                }
                BigInteger bigInteger2 = ZERO;
                for (int i2 = 1; i2 < intValue; i2++) {
                    bigInteger2 = bigInteger2.add(naccacheSternPrivateKeyParameters.getPhi_n());
                    this.lookup[i].addElement(naccacheSternPrivateKeyParameters.getG().modPow(bigInteger2.divide(bigInteger), naccacheSternPrivateKeyParameters.getModulus()));
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
        if (r9 != r7.length) goto L16;
     */
    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] processBlock(byte[] r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 681
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.engines.NaccacheSternEngine.processBlock(byte[], int, int):byte[]");
    }

    public byte[] processData(byte[] bArr) {
        byte[] bArr2;
        if (this.debug) {
            System.out.println();
        }
        if (bArr.length <= getInputBlockSize()) {
            if (this.debug) {
                System.out.println("data size is less then input block size, processing directly");
            }
            return processBlock(bArr, 0, bArr.length);
        }
        int inputBlockSize = getInputBlockSize();
        int outputBlockSize = getOutputBlockSize();
        if (this.debug) {
            System.out.println("Input blocksize is:  " + inputBlockSize + " bytes");
            System.out.println("Output blocksize is: " + outputBlockSize + " bytes");
            System.out.println("Data has length:.... " + bArr.length + " bytes");
        }
        byte[] bArr3 = new byte[((bArr.length / inputBlockSize) + 1) * outputBlockSize];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= bArr.length) {
                byte[] bArr4 = new byte[i3];
                System.arraycopy(bArr3, 0, bArr4, 0, i3);
                if (this.debug) {
                    System.out.println("returning " + i3 + " bytes");
                }
                return bArr4;
            }
            int i4 = i + inputBlockSize;
            if (i4 < bArr.length) {
                bArr2 = processBlock(bArr, i, inputBlockSize);
                i = i4;
            } else {
                bArr2 = processBlock(bArr, i, bArr.length - i);
                i += bArr.length - i;
            }
            if (this.debug) {
                System.out.println("new datapos is " + i);
            }
            if (bArr2 == null) {
                if (this.debug) {
                    System.out.println("cipher returned null");
                }
                throw new InvalidCipherTextException("cipher returned null");
            }
            System.arraycopy(bArr2, 0, bArr3, i3, bArr2.length);
            i2 = i3 + bArr2.length;
        }
    }

    public void setDebug(boolean z) {
        this.debug = z;
    }
}
