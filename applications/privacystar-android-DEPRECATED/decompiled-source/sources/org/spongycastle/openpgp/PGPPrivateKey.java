package org.spongycastle.openpgp;

import org.spongycastle.bcpg.BCPGKey;
import org.spongycastle.bcpg.PublicKeyPacket;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPPrivateKey.class */
public class PGPPrivateKey {
    private long keyID;
    private BCPGKey privateKeyDataPacket;
    private PublicKeyPacket publicKeyPacket;

    public PGPPrivateKey(long j, PublicKeyPacket publicKeyPacket, BCPGKey bCPGKey) {
        this.keyID = j;
        this.publicKeyPacket = publicKeyPacket;
        this.privateKeyDataPacket = bCPGKey;
    }

    public long getKeyID() {
        return this.keyID;
    }

    public BCPGKey getPrivateKeyDataPacket() {
        return this.privateKeyDataPacket;
    }

    public PublicKeyPacket getPublicKeyPacket() {
        return this.publicKeyPacket;
    }
}
