package org.spongycastle.crypto.tls;

import java.io.IOException;
import org.spongycastle.asn1.cmc.BodyPartID;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.engines.ChaCha7539Engine;
import org.spongycastle.crypto.macs.Poly1305;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/Chacha20Poly1305.class */
public class Chacha20Poly1305 implements TlsCipher {
    private static final byte[] ZEROES = new byte[15];
    protected TlsContext context;
    protected ChaCha7539Engine decryptCipher;
    protected byte[] decryptIV;
    protected ChaCha7539Engine encryptCipher;
    protected byte[] encryptIV;

    public Chacha20Poly1305(TlsContext tlsContext) throws IOException {
        KeyParameter keyParameter;
        if (!TlsUtils.isTLSv12(tlsContext)) {
            throw new TlsFatalAlert((short) 80);
        }
        this.context = tlsContext;
        byte[] calculateKeyBlock = TlsUtils.calculateKeyBlock(tlsContext, 88);
        KeyParameter keyParameter2 = new KeyParameter(calculateKeyBlock, 0, 32);
        KeyParameter keyParameter3 = new KeyParameter(calculateKeyBlock, 32, 32);
        byte[] copyOfRange = Arrays.copyOfRange(calculateKeyBlock, 64, 76);
        byte[] copyOfRange2 = Arrays.copyOfRange(calculateKeyBlock, 76, 88);
        this.encryptCipher = new ChaCha7539Engine();
        this.decryptCipher = new ChaCha7539Engine();
        if (tlsContext.isServer()) {
            this.encryptIV = copyOfRange2;
            this.decryptIV = copyOfRange;
            keyParameter = keyParameter3;
            keyParameter3 = keyParameter2;
        } else {
            this.encryptIV = copyOfRange;
            this.decryptIV = copyOfRange2;
            keyParameter = keyParameter2;
        }
        this.encryptCipher.init(true, new ParametersWithIV(keyParameter, this.encryptIV));
        this.decryptCipher.init(false, new ParametersWithIV(keyParameter3, this.decryptIV));
    }

    protected byte[] calculateNonce(long j, byte[] bArr) {
        byte[] bArr2 = new byte[12];
        TlsUtils.writeUint64(j, bArr2, 4);
        for (int i = 0; i < 12; i++) {
            bArr2[i] = (byte) (bArr2[i] ^ bArr[i]);
        }
        return bArr2;
    }

    protected byte[] calculateRecordMAC(KeyParameter keyParameter, byte[] bArr, byte[] bArr2, int i, int i2) {
        Poly1305 poly1305 = new Poly1305();
        poly1305.init(keyParameter);
        updateRecordMACText(poly1305, bArr, 0, bArr.length);
        updateRecordMACText(poly1305, bArr2, i, i2);
        updateRecordMACLength(poly1305, bArr.length);
        updateRecordMACLength(poly1305, i2);
        byte[] bArr3 = new byte[poly1305.getMacSize()];
        poly1305.doFinal(bArr3, 0);
        return bArr3;
    }

    @Override // org.spongycastle.crypto.tls.TlsCipher
    public byte[] decodeCiphertext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        if (getPlaintextLimit(i2) < 0) {
            throw new TlsFatalAlert((short) 50);
        }
        int i3 = i2 - 16;
        if (!Arrays.constantTimeAreEqual(calculateRecordMAC(initRecord(this.decryptCipher, false, j, this.decryptIV), getAdditionalData(j, s, i3), bArr, i, i3), Arrays.copyOfRange(bArr, i + i3, i + i2))) {
            throw new TlsFatalAlert((short) 20);
        }
        byte[] bArr2 = new byte[i3];
        this.decryptCipher.processBytes(bArr, i, i3, bArr2, 0);
        return bArr2;
    }

    @Override // org.spongycastle.crypto.tls.TlsCipher
    public byte[] encodePlaintext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        KeyParameter initRecord = initRecord(this.encryptCipher, true, j, this.encryptIV);
        byte[] bArr2 = new byte[i2 + 16];
        this.encryptCipher.processBytes(bArr, i, i2, bArr2, 0);
        byte[] calculateRecordMAC = calculateRecordMAC(initRecord, getAdditionalData(j, s, i2), bArr2, 0, i2);
        System.arraycopy(calculateRecordMAC, 0, bArr2, i2, calculateRecordMAC.length);
        return bArr2;
    }

    protected KeyParameter generateRecordMACKey(StreamCipher streamCipher) {
        byte[] bArr = new byte[64];
        streamCipher.processBytes(bArr, 0, bArr.length, bArr, 0);
        KeyParameter keyParameter = new KeyParameter(bArr, 0, 32);
        Arrays.fill(bArr, (byte) 0);
        return keyParameter;
    }

    protected byte[] getAdditionalData(long j, short s, int i) throws IOException {
        byte[] bArr = new byte[13];
        TlsUtils.writeUint64(j, bArr, 0);
        TlsUtils.writeUint8(s, bArr, 8);
        TlsUtils.writeVersion(this.context.getServerVersion(), bArr, 9);
        TlsUtils.writeUint16(i, bArr, 11);
        return bArr;
    }

    @Override // org.spongycastle.crypto.tls.TlsCipher
    public int getPlaintextLimit(int i) {
        return i - 16;
    }

    protected KeyParameter initRecord(StreamCipher streamCipher, boolean z, long j, byte[] bArr) {
        streamCipher.init(z, new ParametersWithIV(null, calculateNonce(j, bArr)));
        return generateRecordMACKey(streamCipher);
    }

    protected void updateRecordMACLength(Mac mac, int i) {
        byte[] longToLittleEndian = Pack.longToLittleEndian(i & BodyPartID.bodyIdMax);
        mac.update(longToLittleEndian, 0, longToLittleEndian.length);
    }

    protected void updateRecordMACText(Mac mac, byte[] bArr, int i, int i2) {
        mac.update(bArr, i, i2);
        int i3 = i2 % 16;
        if (i3 != 0) {
            mac.update(ZEROES, 0, 16 - i3);
        }
    }
}
