package org.spongycastle.openpgp;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.bcpg.BCPGInputStream;
import org.spongycastle.bcpg.BCPGOutputStream;
import org.spongycastle.bcpg.OnePassSignaturePacket;
import org.spongycastle.openpgp.operator.PGPContentVerifier;
import org.spongycastle.openpgp.operator.PGPContentVerifierBuilderProvider;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPOnePassSignature.class */
public class PGPOnePassSignature {
    private byte lastb;
    private OutputStream sigOut;
    private OnePassSignaturePacket sigPack;
    private int signatureType;
    private PGPContentVerifier verifier;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PGPOnePassSignature(BCPGInputStream bCPGInputStream) throws IOException, PGPException {
        this((OnePassSignaturePacket) bCPGInputStream.readPacket());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PGPOnePassSignature(OnePassSignaturePacket onePassSignaturePacket) throws PGPException {
        this.sigPack = onePassSignaturePacket;
        this.signatureType = onePassSignaturePacket.getSignatureType();
    }

    private void blockUpdate(byte[] bArr, int i, int i2) {
        try {
            this.sigOut.write(bArr, i, i2);
        } catch (IOException e) {
            throw new PGPRuntimeOperationException(e.getMessage(), e);
        }
    }

    private void byteUpdate(byte b) {
        try {
            this.sigOut.write(b);
        } catch (IOException e) {
            throw new PGPRuntimeOperationException(e.getMessage(), e);
        }
    }

    public void encode(OutputStream outputStream) throws IOException {
        (outputStream instanceof BCPGOutputStream ? (BCPGOutputStream) outputStream : new BCPGOutputStream(outputStream)).writePacket(this.sigPack);
    }

    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        encode(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public int getHashAlgorithm() {
        return this.sigPack.getHashAlgorithm();
    }

    public int getKeyAlgorithm() {
        return this.sigPack.getKeyAlgorithm();
    }

    public long getKeyID() {
        return this.sigPack.getKeyID();
    }

    public int getSignatureType() {
        return this.sigPack.getSignatureType();
    }

    public void init(PGPContentVerifierBuilderProvider pGPContentVerifierBuilderProvider, PGPPublicKey pGPPublicKey) throws PGPException {
        this.verifier = pGPContentVerifierBuilderProvider.get(this.sigPack.getKeyAlgorithm(), this.sigPack.getHashAlgorithm()).build(pGPPublicKey);
        this.lastb = (byte) 0;
        this.sigOut = this.verifier.getOutputStream();
    }

    public void update(byte b) {
        if (this.signatureType == 1) {
            if (b == 13) {
                byteUpdate((byte) 13);
                byteUpdate((byte) 10);
            } else if (b != 10) {
                byteUpdate(b);
            } else if (this.lastb != 13) {
                byteUpdate((byte) 13);
                byteUpdate((byte) 10);
            }
            this.lastb = b;
            return;
        }
        byteUpdate(b);
    }

    public void update(byte[] bArr) {
        if (this.signatureType == 1) {
            for (int i = 0; i != bArr.length; i++) {
                update(bArr[i]);
            }
            return;
        }
        blockUpdate(bArr, 0, bArr.length);
    }

    public void update(byte[] bArr, int i, int i2) {
        if (this.signatureType == 1) {
            for (int i3 = i; i3 != i2 + i; i3++) {
                update(bArr[i3]);
            }
            return;
        }
        blockUpdate(bArr, i, i2);
    }

    public boolean verify(PGPSignature pGPSignature) throws PGPException {
        try {
            this.sigOut.write(pGPSignature.getSignatureTrailer());
            this.sigOut.close();
            return this.verifier.verify(pGPSignature.getSignature());
        } catch (IOException e) {
            throw new PGPException("unable to add trailer: " + e.getMessage(), e);
        }
    }
}
