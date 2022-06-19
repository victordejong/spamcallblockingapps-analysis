package org.bouncycastle.crypto.tls;

import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import org.bouncycastle.asn1.x509.KeyUsage;
import org.bouncycastle.asn1.x509.X509CertificateStructure;
import org.bouncycastle.asn1.x509.X509Extension;
import org.bouncycastle.asn1.x509.X509Extensions;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.MD5Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.p013io.Streams;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/TlsUtils.class */
public class TlsUtils {
    public static byte[] PRF(byte[] bArr, String str, byte[] bArr2, int i) {
        byte[] bArr3;
        byte[] byteArray = Strings.toByteArray(str);
        int length = (bArr.length + 1) / 2;
        byte[] bArr4 = new byte[length];
        byte[] bArr5 = new byte[length];
        System.arraycopy(bArr, 0, bArr4, 0, length);
        System.arraycopy(bArr, bArr.length - length, bArr5, 0, length);
        byte[] concat = concat(byteArray, bArr2);
        byte[] bArr6 = new byte[i];
        hmac_hash(new MD5Digest(), bArr4, concat, new byte[i]);
        hmac_hash(new SHA1Digest(), bArr5, concat, bArr6);
        for (int i2 = 0; i2 < i; i2++) {
            bArr6[i2] = (byte) (bArr6[i2] ^ bArr3[i2]);
        }
        return bArr6;
    }

    public static void checkVersion(InputStream inputStream, TlsProtocolHandler tlsProtocolHandler) {
        int read = inputStream.read();
        int read2 = inputStream.read();
        if (read == 3 && read2 == 1) {
            return;
        }
        throw new TlsFatalAlert((short) 70);
    }

    public static void checkVersion(byte[] bArr, TlsProtocolHandler tlsProtocolHandler) {
        if (bArr[0] == 3 && bArr[1] == 1) {
            return;
        }
        throw new TlsFatalAlert((short) 70);
    }

    public static byte[] concat(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    private static void hmac_hash(Digest digest, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        HMac hMac = new HMac(digest);
        KeyParameter keyParameter = new KeyParameter(bArr);
        int digestSize = digest.getDigestSize();
        int length = ((bArr3.length + digestSize) - 1) / digestSize;
        int macSize = hMac.getMacSize();
        byte[] bArr4 = new byte[macSize];
        byte[] bArr5 = new byte[hMac.getMacSize()];
        byte[] bArr6 = bArr2;
        int i = 0;
        while (i < length) {
            hMac.init(keyParameter);
            hMac.update(bArr6, 0, bArr6.length);
            hMac.doFinal(bArr4, 0);
            hMac.init(keyParameter);
            hMac.update(bArr4, 0, macSize);
            hMac.update(bArr2, 0, bArr2.length);
            hMac.doFinal(bArr5, 0);
            int i2 = digestSize * i;
            System.arraycopy(bArr5, 0, bArr3, i2, Math.min(digestSize, bArr3.length - i2));
            i++;
            bArr6 = bArr4;
        }
    }

    public static void readFully(byte[] bArr, InputStream inputStream) {
        if (Streams.readFully(inputStream, bArr) == bArr.length) {
            return;
        }
        throw new EOFException();
    }

    public static byte[] readOpaque16(InputStream inputStream) {
        byte[] bArr = new byte[readUint16(inputStream)];
        readFully(bArr, inputStream);
        return bArr;
    }

    public static byte[] readOpaque8(InputStream inputStream) {
        byte[] bArr = new byte[readUint8(inputStream)];
        readFully(bArr, inputStream);
        return bArr;
    }

    public static int readUint16(InputStream inputStream) {
        int read = inputStream.read();
        int read2 = inputStream.read();
        if ((read | read2) >= 0) {
            return read2 | (read << 8);
        }
        throw new EOFException();
    }

    public static int readUint24(InputStream inputStream) {
        int read = inputStream.read();
        int read2 = inputStream.read();
        int read3 = inputStream.read();
        if ((read | read2 | read3) >= 0) {
            return read3 | (read << 16) | (read2 << 8);
        }
        throw new EOFException();
    }

    public static long readUint32(InputStream inputStream) {
        int read = inputStream.read();
        int read2 = inputStream.read();
        int read3 = inputStream.read();
        int read4 = inputStream.read();
        if ((read | read2 | read3 | read4) >= 0) {
            return (read2 << 16) | (read << 24) | (read3 << 8) | read4;
        }
        throw new EOFException();
    }

    public static short readUint8(InputStream inputStream) {
        int read = inputStream.read();
        if (read != -1) {
            return (short) read;
        }
        throw new EOFException();
    }

    public static void validateKeyUsage(X509CertificateStructure x509CertificateStructure, int i) {
        X509Extension extension;
        X509Extensions extensions = x509CertificateStructure.getTBSCertificate().getExtensions();
        if (extensions == null || (extension = extensions.getExtension(X509Extension.keyUsage)) == null || (KeyUsage.getInstance(extension).getBytes()[0] & 255 & i) == i) {
            return;
        }
        throw new TlsFatalAlert((short) 46);
    }

    public static void writeGMTUnixTime(byte[] bArr, int i) {
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        bArr[i] = (byte) (currentTimeMillis >> 24);
        bArr[i + 1] = (byte) (currentTimeMillis >> 16);
        bArr[i + 2] = (byte) (currentTimeMillis >> 8);
        bArr[i + 3] = (byte) currentTimeMillis;
    }

    public static void writeOpaque16(byte[] bArr, OutputStream outputStream) {
        writeUint16(bArr.length, outputStream);
        outputStream.write(bArr);
    }

    public static void writeOpaque24(byte[] bArr, OutputStream outputStream) {
        writeUint24(bArr.length, outputStream);
        outputStream.write(bArr);
    }

    public static void writeOpaque8(byte[] bArr, OutputStream outputStream) {
        writeUint8((short) bArr.length, outputStream);
        outputStream.write(bArr);
    }

    public static void writeUint16(int i, OutputStream outputStream) {
        outputStream.write(i >> 8);
        outputStream.write(i);
    }

    public static void writeUint16(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >> 8);
        bArr[i2 + 1] = (byte) i;
    }

    public static void writeUint16Array(int[] iArr, OutputStream outputStream) {
        for (int i : iArr) {
            writeUint16(i, outputStream);
        }
    }

    public static void writeUint24(int i, OutputStream outputStream) {
        outputStream.write(i >> 16);
        outputStream.write(i >> 8);
        outputStream.write(i);
    }

    public static void writeUint24(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >> 16);
        bArr[i2 + 1] = (byte) (i >> 8);
        bArr[i2 + 2] = (byte) i;
    }

    public static void writeUint32(long j, OutputStream outputStream) {
        outputStream.write((int) (j >> 24));
        outputStream.write((int) (j >> 16));
        outputStream.write((int) (j >> 8));
        outputStream.write((int) j);
    }

    public static void writeUint32(long j, byte[] bArr, int i) {
        bArr[i] = (byte) (j >> 24);
        bArr[i + 1] = (byte) (j >> 16);
        bArr[i + 2] = (byte) (j >> 8);
        bArr[i + 3] = (byte) j;
    }

    public static void writeUint64(long j, OutputStream outputStream) {
        outputStream.write((int) (j >> 56));
        outputStream.write((int) (j >> 48));
        outputStream.write((int) (j >> 40));
        outputStream.write((int) (j >> 32));
        outputStream.write((int) (j >> 24));
        outputStream.write((int) (j >> 16));
        outputStream.write((int) (j >> 8));
        outputStream.write((int) j);
    }

    public static void writeUint64(long j, byte[] bArr, int i) {
        bArr[i] = (byte) (j >> 56);
        bArr[i + 1] = (byte) (j >> 48);
        bArr[i + 2] = (byte) (j >> 40);
        bArr[i + 3] = (byte) (j >> 32);
        bArr[i + 4] = (byte) (j >> 24);
        bArr[i + 5] = (byte) (j >> 16);
        bArr[i + 6] = (byte) (j >> 8);
        bArr[i + 7] = (byte) j;
    }

    public static void writeUint8(short s, OutputStream outputStream) {
        outputStream.write(s);
    }

    public static void writeUint8(short s, byte[] bArr, int i) {
        bArr[i] = (byte) s;
    }

    public static void writeUint8Array(short[] sArr, OutputStream outputStream) {
        for (short s : sArr) {
            writeUint8(s, outputStream);
        }
    }

    public static void writeVersion(OutputStream outputStream) {
        outputStream.write(3);
        outputStream.write(1);
    }

    public static void writeVersion(byte[] bArr, int i) {
        bArr[i] = (byte) 3;
        bArr[i + 1] = (byte) 1;
    }
}
