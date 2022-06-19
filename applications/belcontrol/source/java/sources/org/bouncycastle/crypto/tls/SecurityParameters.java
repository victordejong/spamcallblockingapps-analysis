package org.bouncycastle.crypto.tls;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/tls/SecurityParameters.class */
public class SecurityParameters {
    public byte[] clientRandom = null;
    public byte[] serverRandom = null;
    public byte[] masterSecret = null;

    public byte[] getClientRandom() {
        return this.clientRandom;
    }

    public byte[] getMasterSecret() {
        return this.masterSecret;
    }

    public byte[] getServerRandom() {
        return this.serverRandom;
    }
}
