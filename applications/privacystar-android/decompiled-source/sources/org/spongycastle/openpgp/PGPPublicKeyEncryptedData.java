package org.spongycastle.openpgp;

import java.io.EOFException;
import java.io.InputStream;
import org.spongycastle.bcpg.BCPGInputStream;
import org.spongycastle.bcpg.InputStreamPacket;
import org.spongycastle.bcpg.PublicKeyEncSessionPacket;
import org.spongycastle.bcpg.SymmetricEncIntegrityPacket;
import org.spongycastle.openpgp.PGPEncryptedData;
import org.spongycastle.openpgp.operator.PGPDataDecryptor;
import org.spongycastle.openpgp.operator.PublicKeyDataDecryptorFactory;
import org.spongycastle.util.p039io.TeeInputStream;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPPublicKeyEncryptedData.class */
public class PGPPublicKeyEncryptedData extends PGPEncryptedData {
    PublicKeyEncSessionPacket keyData;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PGPPublicKeyEncryptedData(PublicKeyEncSessionPacket publicKeyEncSessionPacket, InputStreamPacket inputStreamPacket) {
        super(inputStreamPacket);
        this.keyData = publicKeyEncSessionPacket;
    }

    private boolean confirmCheckSum(byte[] bArr) {
        int i = 0;
        for (int i2 = 1; i2 != bArr.length - 2; i2++) {
            i += bArr[i2] & 255;
        }
        boolean z = false;
        if (bArr[bArr.length - 2] == ((byte) (i >> 8))) {
            z = false;
            if (bArr[bArr.length - 1] == ((byte) i)) {
                z = true;
            }
        }
        return z;
    }

    public InputStream getDataStream(PublicKeyDataDecryptorFactory publicKeyDataDecryptorFactory) throws PGPException {
        byte[] recoverSessionData = publicKeyDataDecryptorFactory.recoverSessionData(this.keyData.getAlgorithm(), this.keyData.getEncSessionKey());
        if (!confirmCheckSum(recoverSessionData)) {
            throw new PGPKeyValidationException("key checksum failed");
        }
        if (recoverSessionData[0] == 0) {
            return this.encData.getInputStream();
        }
        try {
            boolean z = this.encData instanceof SymmetricEncIntegrityPacket;
            byte[] bArr = new byte[recoverSessionData.length - 3];
            System.arraycopy(recoverSessionData, 1, bArr, 0, bArr.length);
            PGPDataDecryptor createDataDecryptor = publicKeyDataDecryptorFactory.createDataDecryptor(z, recoverSessionData[0] & 255, bArr);
            this.encStream = new BCPGInputStream(createDataDecryptor.getInputStream(this.encData.getInputStream()));
            if (z) {
                this.truncStream = new PGPEncryptedData.TruncatedStream(this.encStream);
                this.integrityCalculator = createDataDecryptor.getIntegrityCalculator();
                this.encStream = new TeeInputStream(this.truncStream, this.integrityCalculator.getOutputStream());
            }
            byte[] bArr2 = new byte[createDataDecryptor.getBlockSize()];
            for (int i = 0; i != bArr2.length; i++) {
                int read = this.encStream.read();
                if (read < 0) {
                    throw new EOFException("unexpected end of stream.");
                }
                bArr2[i] = (byte) read;
            }
            int read2 = this.encStream.read();
            int read3 = this.encStream.read();
            if (read2 >= 0 && read3 >= 0) {
                return this.encStream;
            }
            throw new EOFException("unexpected end of stream.");
        } catch (PGPException e) {
            throw e;
        } catch (Exception e2) {
            throw new PGPException("Exception starting decryption", e2);
        }
    }

    public long getKeyID() {
        return this.keyData.getKeyID();
    }

    public int getSymmetricAlgorithm(PublicKeyDataDecryptorFactory publicKeyDataDecryptorFactory) throws PGPException {
        return publicKeyDataDecryptorFactory.recoverSessionData(this.keyData.getAlgorithm(), this.keyData.getEncSessionKey())[0];
    }
}
