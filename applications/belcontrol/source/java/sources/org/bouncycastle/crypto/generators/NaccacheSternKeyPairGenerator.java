package org.bouncycastle.crypto.generators;

import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import com.millennialmedia.BidRequestErrorStatus;
import java.io.PrintStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Vector;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.NaccacheSternKeyGenerationParameters;
import org.bouncycastle.crypto.params.NaccacheSternKeyParameters;
import org.bouncycastle.crypto.params.NaccacheSternPrivateKeyParameters;
import org.bouncycastle.crypto.tls.CipherSuite;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/generators/NaccacheSternKeyPairGenerator.class */
public class NaccacheSternKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private NaccacheSternKeyGenerationParameters param;
    private static int[] smallPrimes = {3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, CipherSuite.TLS_PSK_WITH_3DES_EDE_CBC_SHA, CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, HighLevelEncoder.LATCH_TO_TEXT, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, BidRequestErrorStatus.INVALID_BID_PRICE, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557};
    private static final BigInteger ONE = BigInteger.valueOf(1);

    private static Vector findFirstPrimes(int i) {
        Vector vector = new Vector(i);
        for (int i2 = 0; i2 != i; i2++) {
            vector.addElement(BigInteger.valueOf(smallPrimes[i2]));
        }
        return vector;
    }

    private static BigInteger generatePrime(int i, int i2, SecureRandom secureRandom) {
        BigInteger bigInteger = new BigInteger(i, i2, secureRandom);
        while (true) {
            BigInteger bigInteger2 = bigInteger;
            if (bigInteger2.bitLength() != i) {
                bigInteger = new BigInteger(i, i2, secureRandom);
            } else {
                return bigInteger2;
            }
        }
    }

    private static int getInt(SecureRandom secureRandom, int i) {
        int nextInt;
        int i2;
        if (((-i) & i) == i) {
            return (int) ((i * (secureRandom.nextInt() & Integer.MAX_VALUE)) >> 31);
        }
        do {
            nextInt = secureRandom.nextInt() & Integer.MAX_VALUE;
            i2 = nextInt % i;
        } while ((nextInt - i2) + (i - 1) < 0);
        return i2;
    }

    private static Vector permuteList(Vector vector, SecureRandom secureRandom) {
        Vector vector2 = new Vector();
        Vector vector3 = new Vector();
        for (int i = 0; i < vector.size(); i++) {
            vector3.addElement(vector.elementAt(i));
        }
        vector2.addElement(vector3.elementAt(0));
        while (true) {
            vector3.removeElementAt(0);
            if (vector3.size() != 0) {
                vector2.insertElementAt(vector3.elementAt(0), getInt(secureRandom, vector2.size() + 1));
            } else {
                return vector2;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v268, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        BigInteger generatePrime;
        BigInteger add;
        BigInteger bigInteger;
        BigInteger generatePrime2;
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        BigInteger add2;
        BigInteger bigInteger4;
        boolean z;
        PrintStream printStream;
        StringBuilder sb;
        String str;
        BigInteger bigInteger5;
        int strength = this.param.getStrength();
        SecureRandom random = this.param.getRandom();
        int certainty = this.param.getCertainty();
        boolean isDebug = this.param.isDebug();
        if (isDebug) {
            System.out.println("Fetching first " + this.param.getCntSmallPrimes() + " primes.");
        }
        Vector permuteList = permuteList(findFirstPrimes(this.param.getCntSmallPrimes()), random);
        BigInteger bigInteger6 = ONE;
        BigInteger bigInteger7 = bigInteger6;
        for (int i = 0; i < permuteList.size() / 2; i++) {
            bigInteger7 = bigInteger7.multiply((BigInteger) permuteList.elementAt(i));
        }
        for (int size = permuteList.size() / 2; size < permuteList.size(); size++) {
            bigInteger6 = bigInteger6.multiply((BigInteger) permuteList.elementAt(size));
        }
        BigInteger multiply = bigInteger7.multiply(bigInteger6);
        int bitLength = (((strength - multiply.bitLength()) - 48) / 2) + 1;
        BigInteger generatePrime3 = generatePrime(bitLength, certainty, random);
        BigInteger generatePrime4 = generatePrime(bitLength, certainty, random);
        if (isDebug) {
            System.out.println("generating p and q");
        }
        BigInteger shiftLeft = generatePrime3.multiply(bigInteger7).shiftLeft(1);
        BigInteger shiftLeft2 = generatePrime4.multiply(bigInteger6).shiftLeft(1);
        char c = 0;
        while (true) {
            c++;
            generatePrime = generatePrime(24, certainty, random);
            add = generatePrime.multiply(shiftLeft).add(ONE);
            BigInteger bigInteger8 = shiftLeft2;
            if (add.isProbablePrime(certainty)) {
                while (true) {
                    generatePrime2 = generatePrime(24, certainty, random);
                    if (!generatePrime.equals(generatePrime2)) {
                        BigInteger multiply2 = generatePrime2.multiply(bigInteger8);
                        bigInteger2 = bigInteger8;
                        bigInteger3 = ONE;
                        add2 = multiply2.add(bigInteger3);
                        if (add2.isProbablePrime(certainty)) {
                            break;
                        }
                        bigInteger8 = bigInteger2;
                    }
                }
                if (multiply.gcd(generatePrime.multiply(generatePrime2)).equals(bigInteger3)) {
                    if (add.multiply(add2).bitLength() >= strength) {
                        break;
                    }
                    bigInteger = bigInteger2;
                    if (isDebug) {
                        System.out.println("key size too small. Should be " + strength + " but is actually " + add.multiply(add2).bitLength());
                        bigInteger = bigInteger2;
                    }
                } else {
                    bigInteger = bigInteger2;
                }
            } else {
                bigInteger = shiftLeft2;
            }
            shiftLeft2 = bigInteger;
        }
        if (isDebug) {
            System.out.println("needed " + ((long) c) + " tries to generate p and q.");
        }
        BigInteger multiply3 = add.multiply(add2);
        BigInteger multiply4 = add.subtract(bigInteger3).multiply(add2.subtract(bigInteger3));
        if (isDebug) {
            System.out.println("generating g");
        }
        char c2 = 0;
        while (true) {
            Vector vector = new Vector();
            for (int i2 = 0; i2 != permuteList.size(); i2++) {
                BigInteger divide = multiply4.divide((BigInteger) permuteList.elementAt(i2));
                do {
                    c2++;
                    bigInteger5 = new BigInteger(strength, certainty, random);
                } while (bigInteger5.modPow(divide, multiply3).equals(ONE));
                vector.addElement(bigInteger5);
            }
            bigInteger4 = ONE;
            for (int i3 = 0; i3 < permuteList.size(); i3++) {
                bigInteger4 = bigInteger4.multiply(((BigInteger) vector.elementAt(i3)).modPow(multiply.divide((BigInteger) permuteList.elementAt(i3)), multiply3)).mod(multiply3);
            }
            int i4 = 0;
            while (true) {
                if (i4 >= permuteList.size()) {
                    z = false;
                    break;
                } else if (bigInteger4.modPow(multiply4.divide((BigInteger) permuteList.elementAt(i4)), multiply3).equals(ONE)) {
                    if (isDebug) {
                        System.out.println("g has order phi(n)/" + permuteList.elementAt(i4) + "\n g: " + bigInteger4);
                    }
                    z = true;
                } else {
                    i4++;
                }
            }
            if (!z) {
                BigInteger modPow = bigInteger4.modPow(multiply4.divide(BigInteger.valueOf(4L)), multiply3);
                BigInteger bigInteger9 = ONE;
                if (!modPow.equals(bigInteger9)) {
                    if (!bigInteger4.modPow(multiply4.divide(generatePrime), multiply3).equals(bigInteger9)) {
                        if (!bigInteger4.modPow(multiply4.divide(generatePrime2), multiply3).equals(bigInteger9)) {
                            if (!bigInteger4.modPow(multiply4.divide(generatePrime3), multiply3).equals(bigInteger9)) {
                                if (!bigInteger4.modPow(multiply4.divide(generatePrime4), multiply3).equals(bigInteger9)) {
                                    break;
                                } else if (isDebug) {
                                    System.out.println("g has order phi(n)/b\n g: " + bigInteger4);
                                }
                            } else if (isDebug) {
                                System.out.println("g has order phi(n)/a\n g: " + bigInteger4);
                            }
                        } else if (isDebug) {
                            printStream = System.out;
                            sb = new StringBuilder();
                            str = "g has order phi(n)/q'\n g: ";
                            sb.append(str);
                            sb.append(bigInteger4);
                            printStream.println(sb.toString());
                        }
                    } else if (isDebug) {
                        printStream = System.out;
                        sb = new StringBuilder();
                        str = "g has order phi(n)/p'\n g: ";
                        sb.append(str);
                        sb.append(bigInteger4);
                        printStream.println(sb.toString());
                    }
                } else if (isDebug) {
                    printStream = System.out;
                    sb = new StringBuilder();
                    str = "g has order phi(n)/4\n g:";
                    sb.append(str);
                    sb.append(bigInteger4);
                    printStream.println(sb.toString());
                }
            }
        }
        if (isDebug) {
            System.out.println("needed " + ((long) c2) + " tries to generate g");
            System.out.println();
            System.out.println("found new NaccacheStern cipher variables:");
            System.out.println("smallPrimes: " + permuteList);
            System.out.println("sigma:...... " + multiply + " (" + multiply.bitLength() + " bits)");
            PrintStream printStream2 = System.out;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("a:.......... ");
            sb2.append(generatePrime3);
            printStream2.println(sb2.toString());
            System.out.println("b:.......... " + generatePrime4);
            System.out.println("p':......... " + generatePrime);
            System.out.println("q':......... " + generatePrime2);
            System.out.println("p:.......... " + add);
            System.out.println("q:.......... " + add2);
            System.out.println("n:.......... " + multiply3);
            System.out.println("phi(n):..... " + multiply4);
            System.out.println("g:.......... " + bigInteger4);
            System.out.println();
        }
        return new AsymmetricCipherKeyPair(new NaccacheSternKeyParameters(false, bigInteger4, multiply3, multiply.bitLength()), new NaccacheSternPrivateKeyParameters(bigInteger4, multiply3, multiply.bitLength(), permuteList, multiply4));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.param = (NaccacheSternKeyGenerationParameters) keyGenerationParameters;
    }
}
