package org.bouncycastle.crypto.examples;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.engines.DESedeEngine;
import org.bouncycastle.crypto.generators.DESedeKeyGenerator;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.encoders.Hex;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/examples/DESExample.class */
public class DESExample {
    private PaddedBufferedBlockCipher cipher;
    private boolean encrypt;

    /* renamed from: in */
    private BufferedInputStream f7517in;
    private byte[] key;
    private BufferedOutputStream out;

    public DESExample() {
        this.encrypt = true;
        this.cipher = null;
        this.f7517in = null;
        this.out = null;
        this.key = null;
    }

    public DESExample(String str, String str2, String str3, boolean z) {
        SecureRandom secureRandom;
        PrintStream printStream;
        StringBuilder sb;
        String str4;
        this.encrypt = true;
        this.cipher = null;
        this.f7517in = null;
        this.out = null;
        this.key = null;
        this.encrypt = z;
        try {
            this.f7517in = new BufferedInputStream(new FileInputStream(str));
        } catch (FileNotFoundException e) {
            System.err.println("Input file not found [" + str + "]");
            System.exit(1);
        }
        try {
            this.out = new BufferedOutputStream(new FileOutputStream(str2));
        } catch (IOException e2) {
            System.err.println("Output file not created [" + str2 + "]");
            System.exit(1);
        }
        if (z) {
            try {
                secureRandom = new SecureRandom();
                try {
                    secureRandom.setSeed("www.bouncycastle.org".getBytes());
                } catch (Exception e3) {
                    try {
                        System.err.println("Hmmm, no SHA1PRNG, you need the Sun implementation");
                        System.exit(1);
                        KeyGenerationParameters keyGenerationParameters = new KeyGenerationParameters(secureRandom, 192);
                        DESedeKeyGenerator dESedeKeyGenerator = new DESedeKeyGenerator();
                        dESedeKeyGenerator.init(keyGenerationParameters);
                        this.key = dESedeKeyGenerator.generateKey();
                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str3));
                        byte[] encode = Hex.encode(this.key);
                        bufferedOutputStream.write(encode, 0, encode.length);
                        bufferedOutputStream.flush();
                        bufferedOutputStream.close();
                        return;
                    } catch (IOException e4) {
                        printStream = System.err;
                        sb = new StringBuilder();
                        str4 = "Could not decryption create key file [";
                    }
                }
            } catch (Exception e5) {
                secureRandom = null;
            }
            KeyGenerationParameters keyGenerationParameters2 = new KeyGenerationParameters(secureRandom, 192);
            DESedeKeyGenerator dESedeKeyGenerator2 = new DESedeKeyGenerator();
            dESedeKeyGenerator2.init(keyGenerationParameters2);
            this.key = dESedeKeyGenerator2.generateKey();
            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(str3));
            byte[] encode2 = Hex.encode(this.key);
            bufferedOutputStream2.write(encode2, 0, encode2.length);
            bufferedOutputStream2.flush();
            bufferedOutputStream2.close();
            return;
        }
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str3));
            int available = bufferedInputStream.available();
            byte[] bArr = new byte[available];
            bufferedInputStream.read(bArr, 0, available);
            this.key = Hex.decode(bArr);
            return;
        } catch (IOException e6) {
            printStream = System.err;
            sb = new StringBuilder();
            str4 = "Decryption key file not found, or not valid [";
        }
        sb.append(str4);
        sb.append(str3);
        sb.append("]");
        printStream.println(sb.toString());
        System.exit(1);
    }

    public static void main(String[] strArr) {
        String str;
        boolean z = true;
        if (strArr.length < 2) {
            new DESExample();
            System.err.println("Usage: java " + DESExample.class.getName() + " infile outfile [keyfile]");
            System.exit(1);
        }
        String str2 = strArr[0];
        String str3 = strArr[1];
        if (strArr.length > 2) {
            str = strArr[2];
            z = false;
        } else {
            str = "deskey.dat";
        }
        new DESExample(str2, str3, str, z).process();
    }

    private void performDecrypt(byte[] bArr) {
        this.cipher.init(false, new KeyParameter(bArr));
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f7517in));
        byte[] bArr2 = null;
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    try {
                        break;
                    } catch (CryptoException e) {
                        return;
                    }
                }
                byte[] decode = Hex.decode(readLine);
                byte[] bArr3 = new byte[this.cipher.getOutputSize(decode.length)];
                int processBytes = this.cipher.processBytes(decode, 0, decode.length, bArr3, 0);
                bArr2 = bArr3;
                if (processBytes > 0) {
                    this.out.write(bArr3, 0, processBytes);
                    bArr2 = bArr3;
                }
            } catch (IOException e2) {
                e2.printStackTrace();
                return;
            }
        }
        int doFinal = this.cipher.doFinal(bArr2, 0);
        if (doFinal > 0) {
            this.out.write(bArr2, 0, doFinal);
        }
    }

    private void performEncrypt(byte[] bArr) {
        this.cipher.init(true, new KeyParameter(bArr));
        byte[] bArr2 = new byte[47];
        byte[] bArr3 = new byte[this.cipher.getOutputSize(47)];
        while (true) {
            try {
                int read = this.f7517in.read(bArr2, 0, 47);
                if (read <= 0) {
                    try {
                        break;
                    } catch (CryptoException e) {
                        return;
                    }
                }
                int processBytes = this.cipher.processBytes(bArr2, 0, read, bArr3, 0);
                if (processBytes > 0) {
                    byte[] encode = Hex.encode(bArr3, 0, processBytes);
                    this.out.write(encode, 0, encode.length);
                    this.out.write(10);
                }
            } catch (IOException e2) {
                e2.printStackTrace();
                return;
            }
        }
        int doFinal = this.cipher.doFinal(bArr3, 0);
        if (doFinal > 0) {
            byte[] encode2 = Hex.encode(bArr3, 0, doFinal);
            this.out.write(encode2, 0, encode2.length);
            this.out.write(10);
        }
    }

    private void process() {
        this.cipher = new PaddedBufferedBlockCipher(new CBCBlockCipher(new DESedeEngine()));
        if (this.encrypt) {
            performEncrypt(this.key);
        } else {
            performDecrypt(this.key);
        }
        try {
            this.f7517in.close();
            this.out.flush();
            this.out.close();
        } catch (IOException e) {
        }
    }
}
