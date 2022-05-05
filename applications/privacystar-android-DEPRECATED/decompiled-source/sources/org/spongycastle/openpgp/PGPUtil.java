package org.spongycastle.openpgp;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;
import java.util.Date;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.bcpg.ArmoredInputStream;
import org.spongycastle.bcpg.HashAlgorithmTags;
import org.spongycastle.bcpg.MPInteger;
import org.spongycastle.util.encoders.Base64;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPUtil.class */
public class PGPUtil implements HashAlgorithmTags {
    private static final int READ_AHEAD = 60;
    private static String defProvider = "SC";

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPUtil$BufferedInputStreamExt.class */
    static class BufferedInputStreamExt extends BufferedInputStream {
        BufferedInputStreamExt(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
        public int available() throws IOException {
            int i;
            synchronized (this) {
                int available = super.available();
                i = available;
                if (available < 0) {
                    i = Integer.MAX_VALUE;
                }
            }
            return i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MPInteger[] dsaSigToMpi(byte[] bArr) throws PGPException {
        try {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) new ASN1InputStream(bArr).readObject();
            return new MPInteger[]{new MPInteger(((ASN1Integer) aSN1Sequence.getObjectAt(0)).getValue()), new MPInteger(((ASN1Integer) aSN1Sequence.getObjectAt(1)).getValue())};
        } catch (IOException e) {
            throw new PGPException("exception encoding signature", e);
        }
    }

    public static InputStream getDecoderStream(InputStream inputStream) throws IOException {
        int read;
        InputStream inputStream2 = inputStream;
        if (!inputStream.markSupported()) {
            inputStream2 = new BufferedInputStreamExt(inputStream);
        }
        inputStream2.mark(60);
        int read2 = inputStream2.read();
        if ((read2 & 128) != 0) {
            inputStream2.reset();
            return inputStream2;
        } else if (!isPossiblyBase64(read2)) {
            inputStream2.reset();
            return new ArmoredInputStream(inputStream2);
        } else {
            byte[] bArr = new byte[60];
            bArr[0] = (byte) read2;
            int i = 1;
            int i2 = 1;
            while (i != 60 && (read = inputStream2.read()) >= 0) {
                if (!isPossiblyBase64(read)) {
                    inputStream2.reset();
                    return new ArmoredInputStream(inputStream2);
                }
                i2 = i2;
                if (read != 10) {
                    i2 = i2;
                    if (read != 13) {
                        bArr[i2] = (byte) read;
                        i2++;
                    }
                }
                i++;
            }
            inputStream2.reset();
            if (i < 4) {
                return new ArmoredInputStream(inputStream2);
            }
            byte[] bArr2 = new byte[8];
            System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
            return (Base64.decode(bArr2)[0] & 128) != 0 ? new ArmoredInputStream(inputStream2, false) : new ArmoredInputStream(inputStream2);
        }
    }

    public static String getDefaultProvider() {
        return defProvider;
    }

    private static boolean isPossiblyBase64(int i) {
        return (i >= 65 && i <= 90) || (i >= 97 && i <= 122) || ((i >= 48 && i <= 57) || i == 43 || i == 47 || i == 13 || i == 10);
    }

    public static byte[] makeRandomKey(int i, SecureRandom secureRandom) throws PGPException {
        int i2 = 128;
        switch (i) {
            case 1:
            case 3:
            case 4:
            case 5:
            case 7:
            case 11:
                break;
            case 2:
            case 8:
            case 12:
                i2 = 192;
                break;
            case 6:
                i2 = 64;
                break;
            case 9:
            case 10:
            case 13:
                i2 = 256;
                break;
            default:
                throw new PGPException("unknown symmetric algorithm: " + i);
        }
        byte[] bArr = new byte[(i2 + 7) / 8];
        secureRandom.nextBytes(bArr);
        return bArr;
    }

    private static void pipeFileContents(File file, OutputStream outputStream, int i) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[i];
        while (true) {
            int read = fileInputStream.read(bArr);
            if (read > 0) {
                outputStream.write(bArr, 0, read);
            } else {
                outputStream.close();
                fileInputStream.close();
                return;
            }
        }
    }

    public static void setDefaultProvider(String str) {
        defProvider = str;
    }

    public static void writeFileToLiteralData(OutputStream outputStream, char c, File file) throws IOException {
        pipeFileContents(file, new PGPLiteralDataGenerator().open(outputStream, c, file), 4096);
    }

    public static void writeFileToLiteralData(OutputStream outputStream, char c, File file, byte[] bArr) throws IOException {
        pipeFileContents(file, new PGPLiteralDataGenerator().open(outputStream, c, file.getName(), new Date(file.lastModified()), bArr), bArr.length);
    }
}
