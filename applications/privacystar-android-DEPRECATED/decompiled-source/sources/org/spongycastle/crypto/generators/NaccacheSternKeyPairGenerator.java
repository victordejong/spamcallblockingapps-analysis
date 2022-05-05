package org.spongycastle.crypto.generators;

import android.support.p001v4.view.InputDeviceCompat;
import com.mixpanel.android.java_websocket.WebSocket;
import com.privacystar.core.util.pdus.PduHeaders;
import com.zendesk.service.HttpConstants;
import java.io.PrintStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Vector;
import okhttp3.internal.http.StatusLine;
import org.mozilla.classfile.ByteCode;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.NaccacheSternKeyGenerationParameters;
import org.spongycastle.crypto.params.NaccacheSternKeyParameters;
import org.spongycastle.crypto.params.NaccacheSternPrivateKeyParameters;
import org.spongycastle.math.Primes;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/generators/NaccacheSternKeyPairGenerator.class */
public class NaccacheSternKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private NaccacheSternKeyGenerationParameters param;
    private static int[] smallPrimes = {3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, ByteCode.IFNONNULL, Primes.SMALL_FACTOR_LIMIT, 223, 227, PduHeaders.RESPONSE_STATUS_ERROR_PERMANENT_CONTENT_NOT_ACCEPTED, PduHeaders.RESPONSE_STATUS_ERROR_PERMANENT_REPLY_CHARGING_NOT_SUPPORTED, 239, 241, 251, InputDeviceCompat.SOURCE_KEYBOARD, 263, 269, 271, 277, 281, 283, 293, StatusLine.HTTP_TEMP_REDIRECT, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, HttpConstants.HTTP_UNAUTHORIZED, HttpConstants.HTTP_CONFLICT, 419, 421, 431, 433, 439, WebSocket.DEFAULT_WSS_PORT, 449, 457, 461, 463, 467, 479, 487, 491, 499, HttpConstants.HTTP_UNAVAILABLE, 509, 521, 523, 541, 547, 557};
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
        while (bigInteger.bitLength() != i) {
            bigInteger = new BigInteger(i, i2, secureRandom);
        }
        return bigInteger;
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
        vector3.removeElementAt(0);
        while (vector3.size() != 0) {
            vector2.insertElementAt(vector3.elementAt(0), getInt(secureRandom, vector2.size() + 1));
            vector3.removeElementAt(0);
        }
        return vector2;
    }

    @Override // org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        BigInteger generatePrime;
        BigInteger add;
        BigInteger generatePrime2;
        BigInteger add2;
        BigInteger bigInteger;
        boolean z;
        BigInteger bigInteger2;
        int strength = this.param.getStrength();
        SecureRandom random = this.param.getRandom();
        int certainty = this.param.getCertainty();
        boolean isDebug = this.param.isDebug();
        if (isDebug) {
            PrintStream printStream = System.out;
            printStream.println("Fetching first " + this.param.getCntSmallPrimes() + " primes.");
        }
        Vector permuteList = permuteList(findFirstPrimes(this.param.getCntSmallPrimes()), random);
        BigInteger bigInteger3 = ONE;
        BigInteger bigInteger4 = ONE;
        for (int i = 0; i < permuteList.size() / 2; i++) {
            bigInteger3 = bigInteger3.multiply((BigInteger) permuteList.elementAt(i));
        }
        for (int size = permuteList.size() / 2; size < permuteList.size(); size++) {
            bigInteger4 = bigInteger4.multiply((BigInteger) permuteList.elementAt(size));
        }
        BigInteger multiply = bigInteger3.multiply(bigInteger4);
        int bitLength = (((strength - multiply.bitLength()) - 48) / 2) + 1;
        BigInteger generatePrime3 = generatePrime(bitLength, certainty, random);
        BigInteger generatePrime4 = generatePrime(bitLength, certainty, random);
        if (isDebug) {
            System.out.println("generating p and q");
        }
        BigInteger shiftLeft = generatePrime3.multiply(bigInteger3).shiftLeft(1);
        BigInteger shiftLeft2 = generatePrime4.multiply(bigInteger4).shiftLeft(1);
        long j = 0;
        while (true) {
            j++;
            generatePrime = generatePrime(24, certainty, random);
            add = generatePrime.multiply(shiftLeft).add(ONE);
            BigInteger bigInteger5 = shiftLeft2;
            if (add.isProbablePrime(certainty)) {
                while (true) {
                    generatePrime2 = generatePrime(24, certainty, random);
                    if (!generatePrime.equals(generatePrime2)) {
                        add2 = generatePrime2.multiply(bigInteger5).add(ONE);
                        if (add2.isProbablePrime(certainty)) {
                            break;
                        }
                        bigInteger5 = bigInteger5;
                    }
                }
                if (multiply.gcd(generatePrime.multiply(generatePrime2)).equals(ONE)) {
                    if (add.multiply(add2).bitLength() >= strength) {
                        break;
                    }
                    shiftLeft2 = bigInteger5;
                    if (isDebug) {
                        PrintStream printStream2 = System.out;
                        printStream2.println("key size too small. Should be " + strength + " but is actually " + add.multiply(add2).bitLength());
                        shiftLeft2 = bigInteger5;
                    }
                } else {
                    shiftLeft2 = bigInteger5;
                }
            } else {
                shiftLeft2 = shiftLeft2;
            }
        }
        if (isDebug) {
            PrintStream printStream3 = System.out;
            printStream3.println("needed " + j + " tries to generate p and q.");
        }
        BigInteger multiply2 = add.multiply(add2);
        BigInteger multiply3 = add.subtract(ONE).multiply(add2.subtract(ONE));
        if (isDebug) {
            System.out.println("generating g");
        }
        long j2 = 0;
        while (true) {
            Vector vector = new Vector();
            for (int i2 = 0; i2 != permuteList.size(); i2++) {
                BigInteger divide = multiply3.divide((BigInteger) permuteList.elementAt(i2));
                do {
                    j2++;
                    bigInteger2 = new BigInteger(strength, certainty, random);
                } while (bigInteger2.modPow(divide, multiply2).equals(ONE));
                vector.addElement(bigInteger2);
            }
            bigInteger = ONE;
            for (int i3 = 0; i3 < permuteList.size(); i3++) {
                bigInteger = bigInteger.multiply(((BigInteger) vector.elementAt(i3)).modPow(multiply.divide((BigInteger) permuteList.elementAt(i3)), multiply2)).mod(multiply2);
            }
            int i4 = 0;
            while (true) {
                if (i4 >= permuteList.size()) {
                    z = false;
                    break;
                } else if (bigInteger.modPow(multiply3.divide((BigInteger) permuteList.elementAt(i4)), multiply2).equals(ONE)) {
                    if (isDebug) {
                        PrintStream printStream4 = System.out;
                        printStream4.println("g has order phi(n)/" + permuteList.elementAt(i4) + "\n g: " + bigInteger);
                    }
                    z = true;
                } else {
                    i4++;
                }
            }
            if (!z) {
                if (!bigInteger.modPow(multiply3.divide(BigInteger.valueOf(4L)), multiply2).equals(ONE)) {
                    if (!bigInteger.modPow(multiply3.divide(generatePrime), multiply2).equals(ONE)) {
                        if (!bigInteger.modPow(multiply3.divide(generatePrime2), multiply2).equals(ONE)) {
                            if (!bigInteger.modPow(multiply3.divide(generatePrime3), multiply2).equals(ONE)) {
                                if (!bigInteger.modPow(multiply3.divide(generatePrime4), multiply2).equals(ONE)) {
                                    break;
                                } else if (isDebug) {
                                    PrintStream printStream5 = System.out;
                                    printStream5.println("g has order phi(n)/b\n g: " + bigInteger);
                                }
                            } else if (isDebug) {
                                PrintStream printStream6 = System.out;
                                printStream6.println("g has order phi(n)/a\n g: " + bigInteger);
                            }
                        } else if (isDebug) {
                            PrintStream printStream7 = System.out;
                            printStream7.println("g has order phi(n)/q'\n g: " + bigInteger);
                        }
                    } else if (isDebug) {
                        PrintStream printStream8 = System.out;
                        printStream8.println("g has order phi(n)/p'\n g: " + bigInteger);
                    }
                } else if (isDebug) {
                    PrintStream printStream9 = System.out;
                    printStream9.println("g has order phi(n)/4\n g:" + bigInteger);
                }
            }
        }
        if (isDebug) {
            PrintStream printStream10 = System.out;
            printStream10.println("needed " + j2 + " tries to generate g");
            System.out.println();
            System.out.println("found new NaccacheStern cipher variables:");
            PrintStream printStream11 = System.out;
            printStream11.println("smallPrimes: " + permuteList);
            PrintStream printStream12 = System.out;
            printStream12.println("sigma:...... " + multiply + " (" + multiply.bitLength() + " bits)");
            PrintStream printStream13 = System.out;
            StringBuilder sb = new StringBuilder();
            sb.append("a:.......... ");
            sb.append(generatePrime3);
            printStream13.println(sb.toString());
            PrintStream printStream14 = System.out;
            printStream14.println("b:.......... " + generatePrime4);
            PrintStream printStream15 = System.out;
            printStream15.println("p':......... " + generatePrime);
            PrintStream printStream16 = System.out;
            printStream16.println("q':......... " + generatePrime2);
            PrintStream printStream17 = System.out;
            printStream17.println("p:.......... " + add);
            PrintStream printStream18 = System.out;
            printStream18.println("q:.......... " + add2);
            PrintStream printStream19 = System.out;
            printStream19.println("n:.......... " + multiply2);
            PrintStream printStream20 = System.out;
            printStream20.println("phi(n):..... " + multiply3);
            PrintStream printStream21 = System.out;
            printStream21.println("g:.......... " + bigInteger);
            System.out.println();
        }
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new NaccacheSternKeyParameters(false, bigInteger, multiply2, multiply.bitLength()), (AsymmetricKeyParameter) new NaccacheSternPrivateKeyParameters(bigInteger, multiply2, multiply.bitLength(), permuteList, multiply3));
    }

    @Override // org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.param = (NaccacheSternKeyGenerationParameters) keyGenerationParameters;
    }
}
