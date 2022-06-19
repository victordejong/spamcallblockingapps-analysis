package org.bouncycastle.crypto.tls;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/RecordStream.class */
public class RecordStream {
    private TlsProtocolHandler handler;

    /* renamed from: is */
    private InputStream f7600is;

    /* renamed from: os */
    private OutputStream f7601os;
    private TlsCipher readCipher;
    private TlsCompression readCompression;
    private TlsCipher writeCipher;
    private TlsCompression writeCompression;
    private ByteArrayOutputStream buffer = new ByteArrayOutputStream();
    private CombinedHash hash = new CombinedHash();

    public RecordStream(TlsProtocolHandler tlsProtocolHandler, InputStream inputStream, OutputStream outputStream) {
        this.readCompression = null;
        this.writeCompression = null;
        this.readCipher = null;
        this.writeCipher = null;
        this.handler = tlsProtocolHandler;
        this.f7600is = inputStream;
        this.f7601os = outputStream;
        TlsNullCompression tlsNullCompression = new TlsNullCompression();
        this.readCompression = tlsNullCompression;
        this.writeCompression = tlsNullCompression;
        TlsNullCipher tlsNullCipher = new TlsNullCipher();
        this.readCipher = tlsNullCipher;
        this.writeCipher = tlsNullCipher;
    }

    private static byte[] doFinal(CombinedHash combinedHash) {
        byte[] bArr = new byte[combinedHash.getDigestSize()];
        combinedHash.doFinal(bArr, 0);
        return bArr;
    }

    private byte[] getBufferContents() {
        byte[] byteArray = this.buffer.toByteArray();
        this.buffer.reset();
        return byteArray;
    }

    public void clientCipherSpecDecided(TlsCompression tlsCompression, TlsCipher tlsCipher) {
        this.writeCompression = tlsCompression;
        this.writeCipher = tlsCipher;
    }

    public void close() {
        IOException e;
        try {
            this.f7600is.close();
            e = null;
        } catch (IOException e2) {
            e = e2;
        }
        try {
            this.f7601os.close();
        } catch (IOException e3) {
            e = e3;
        }
        if (e == null) {
            return;
        }
        throw e;
    }

    public byte[] decodeAndVerify(short s, InputStream inputStream, int i) {
        byte[] bArr = new byte[i];
        TlsUtils.readFully(bArr, inputStream);
        byte[] decodeCiphertext = this.readCipher.decodeCiphertext(s, bArr, 0, i);
        OutputStream decompress = this.readCompression.decompress(this.buffer);
        if (decompress == this.buffer) {
            return decodeCiphertext;
        }
        decompress.write(decodeCiphertext, 0, decodeCiphertext.length);
        decompress.flush();
        return getBufferContents();
    }

    public void flush() {
        this.f7601os.flush();
    }

    public byte[] getCurrentHash() {
        return doFinal(new CombinedHash(this.hash));
    }

    public void readData() {
        short readUint8 = TlsUtils.readUint8(this.f7600is);
        TlsUtils.checkVersion(this.f7600is, this.handler);
        byte[] decodeAndVerify = decodeAndVerify(readUint8, this.f7600is, TlsUtils.readUint16(this.f7600is));
        this.handler.processData(readUint8, decodeAndVerify, 0, decodeAndVerify.length);
    }

    public void serverClientSpecReceived() {
        this.readCompression = this.writeCompression;
        this.readCipher = this.writeCipher;
    }

    public void updateHandshakeData(byte[] bArr, int i, int i2) {
        this.hash.update(bArr, i, i2);
    }

    public void writeMessage(short s, byte[] bArr, int i, int i2) {
        byte[] bArr2;
        if (s == 22) {
            updateHandshakeData(bArr, i, i2);
        }
        OutputStream compress = this.writeCompression.compress(this.buffer);
        if (compress == this.buffer) {
            bArr2 = this.writeCipher.encodePlaintext(s, bArr, i, i2);
        } else {
            compress.write(bArr, i, i2);
            compress.flush();
            byte[] bufferContents = getBufferContents();
            bArr2 = this.writeCipher.encodePlaintext(s, bufferContents, 0, bufferContents.length);
        }
        byte[] bArr3 = new byte[bArr2.length + 5];
        TlsUtils.writeUint8(s, bArr3, 0);
        TlsUtils.writeVersion(bArr3, 1);
        TlsUtils.writeUint16(bArr2.length, bArr3, 3);
        System.arraycopy(bArr2, 0, bArr3, 5, bArr2.length);
        this.f7601os.write(bArr3);
        this.f7601os.flush();
    }
}
