package org.spongycastle.openpgp.examples;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Security;
import java.security.SignatureException;
import java.util.Iterator;
import org.spongycastle.bcpg.ArmoredOutputStream;
import org.spongycastle.bcpg.BCPGOutputStream;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPrivateKey;
import org.spongycastle.openpgp.PGPSecretKey;
import org.spongycastle.openpgp.PGPSignature;
import org.spongycastle.openpgp.PGPSignatureGenerator;
import org.spongycastle.openpgp.PGPSignatureSubpacketGenerator;
import org.spongycastle.openpgp.PGPUtil;
import org.spongycastle.openpgp.operator.jcajce.JcaPGPContentSignerBuilder;
import org.spongycastle.openpgp.operator.jcajce.JcePBESecretKeyDecryptorBuilder;
import org.spongycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/examples/ClearSignedFileProcessor.class */
public class ClearSignedFileProcessor {
    private static int getLengthWithoutSeparatorOrTrailingWhitespace(byte[] bArr) {
        int length = bArr.length - 1;
        while (length >= 0 && isWhiteSpace(bArr[length])) {
            length--;
        }
        return length + 1;
    }

    private static int getLengthWithoutWhiteSpace(byte[] bArr) {
        int length = bArr.length - 1;
        while (length >= 0 && isWhiteSpace(bArr[length])) {
            length--;
        }
        return length + 1;
    }

    private static byte[] getLineSeparator() {
        String lineSeparator = Strings.lineSeparator();
        byte[] bArr = new byte[lineSeparator.length()];
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = (byte) lineSeparator.charAt(i);
        }
        return bArr;
    }

    private static boolean isLineEnding(byte b) {
        return b == 13 || b == 10;
    }

    private static boolean isWhiteSpace(byte b) {
        return isLineEnding(b) || b == 9 || b == 32;
    }

    public static void main(String[] strArr) throws Exception {
        Security.addProvider(new BouncyCastleProvider());
        if (strArr[0].equals("-s")) {
            InputStream decoderStream = PGPUtil.getDecoderStream(new FileInputStream(strArr[2]));
            FileOutputStream fileOutputStream = new FileOutputStream(strArr[1] + ".asc");
            if (strArr.length == 4) {
                signFile(strArr[1], decoderStream, fileOutputStream, strArr[3].toCharArray(), "SHA1");
            } else {
                signFile(strArr[1], decoderStream, fileOutputStream, strArr[3].toCharArray(), strArr[4]);
            }
        } else if (strArr[0].equals("-v")) {
            if (strArr[1].indexOf(".asc") < 0) {
                System.err.println("file needs to end in \".asc\"");
                System.exit(1);
            }
            verifyFile(new FileInputStream(strArr[1]), PGPUtil.getDecoderStream(new FileInputStream(strArr[2])), strArr[1].substring(0, strArr[1].length() - 4));
        } else {
            System.err.println("usage: ClearSignedFileProcessor [-s file keyfile passPhrase]|[-v sigFile keyFile]");
        }
    }

    private static void processLine(OutputStream outputStream, PGPSignatureGenerator pGPSignatureGenerator, byte[] bArr) throws SignatureException, IOException {
        int lengthWithoutWhiteSpace = getLengthWithoutWhiteSpace(bArr);
        if (lengthWithoutWhiteSpace > 0) {
            pGPSignatureGenerator.update(bArr, 0, lengthWithoutWhiteSpace);
        }
        outputStream.write(bArr, 0, bArr.length);
    }

    private static void processLine(PGPSignature pGPSignature, byte[] bArr) throws SignatureException, IOException {
        int lengthWithoutWhiteSpace = getLengthWithoutWhiteSpace(bArr);
        if (lengthWithoutWhiteSpace > 0) {
            pGPSignature.update(bArr, 0, lengthWithoutWhiteSpace);
        }
    }

    private static int readInputLine(ByteArrayOutputStream byteArrayOutputStream, int i, InputStream inputStream) throws IOException {
        int read;
        byteArrayOutputStream.reset();
        int i2 = i;
        do {
            byteArrayOutputStream.write(i2);
            if (i2 == 13 || i2 == 10) {
                i = readPassedEOL(byteArrayOutputStream, i2, inputStream);
                break;
            }
            read = inputStream.read();
            i2 = read;
        } while (read >= 0);
        i2 = read;
        if (i2 < 0) {
            i = -1;
        }
        return i;
    }

    private static int readInputLine(ByteArrayOutputStream byteArrayOutputStream, InputStream inputStream) throws IOException {
        int read;
        int i;
        byteArrayOutputStream.reset();
        do {
            read = inputStream.read();
            if (read < 0) {
                i = -1;
                break;
            }
            byteArrayOutputStream.write(read);
            if (read == 13) {
                break;
            }
        } while (read != 10);
        i = readPassedEOL(byteArrayOutputStream, read, inputStream);
        return i;
    }

    private static int readPassedEOL(ByteArrayOutputStream byteArrayOutputStream, int i, InputStream inputStream) throws IOException {
        int read = inputStream.read();
        int i2 = read;
        if (i == 13) {
            i2 = read;
            if (read == 10) {
                byteArrayOutputStream.write(read);
                i2 = inputStream.read();
            }
        }
        return i2;
    }

    private static void signFile(String str, InputStream inputStream, OutputStream outputStream, char[] cArr, String str2) throws IOException, NoSuchAlgorithmException, NoSuchProviderException, PGPException, SignatureException {
        int readInputLine;
        int i = str2.equals("SHA256") ? 8 : str2.equals("SHA384") ? 9 : str2.equals("SHA512") ? 10 : str2.equals("MD5") ? 1 : str2.equals("RIPEMD160") ? 3 : 2;
        PGPSecretKey readSecretKey = PGPExampleUtil.readSecretKey(inputStream);
        PGPPrivateKey extractPrivateKey = readSecretKey.extractPrivateKey(new JcePBESecretKeyDecryptorBuilder().setProvider(BouncyCastleProvider.PROVIDER_NAME).build(cArr));
        PGPSignatureGenerator pGPSignatureGenerator = new PGPSignatureGenerator(new JcaPGPContentSignerBuilder(readSecretKey.getPublicKey().getAlgorithm(), i).setProvider(BouncyCastleProvider.PROVIDER_NAME));
        PGPSignatureSubpacketGenerator pGPSignatureSubpacketGenerator = new PGPSignatureSubpacketGenerator();
        pGPSignatureGenerator.init(1, extractPrivateKey);
        Iterator userIDs = readSecretKey.getPublicKey().getUserIDs();
        if (userIDs.hasNext()) {
            pGPSignatureSubpacketGenerator.setSignerUserID(false, (String) userIDs.next());
            pGPSignatureGenerator.setHashedSubpackets(pGPSignatureSubpacketGenerator.generate());
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
        ArmoredOutputStream armoredOutputStream = new ArmoredOutputStream(outputStream);
        armoredOutputStream.beginClearText(i);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int readInputLine2 = readInputLine(byteArrayOutputStream, bufferedInputStream);
        processLine(armoredOutputStream, pGPSignatureGenerator, byteArrayOutputStream.toByteArray());
        if (readInputLine2 != -1) {
            do {
                readInputLine = readInputLine(byteArrayOutputStream, readInputLine2, bufferedInputStream);
                pGPSignatureGenerator.update((byte) 13);
                pGPSignatureGenerator.update((byte) 10);
                processLine(armoredOutputStream, pGPSignatureGenerator, byteArrayOutputStream.toByteArray());
                readInputLine2 = readInputLine;
            } while (readInputLine != -1);
            bufferedInputStream.close();
            armoredOutputStream.endClearText();
            pGPSignatureGenerator.generate().encode(new BCPGOutputStream(armoredOutputStream));
            armoredOutputStream.close();
        }
        bufferedInputStream.close();
        armoredOutputStream.endClearText();
        pGPSignatureGenerator.generate().encode(new BCPGOutputStream(armoredOutputStream));
        armoredOutputStream.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x014f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void verifyFile(java.io.InputStream r6, java.io.InputStream r7, java.lang.String r8) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.openpgp.examples.ClearSignedFileProcessor.verifyFile(java.io.InputStream, java.io.InputStream, java.lang.String):void");
    }
}
