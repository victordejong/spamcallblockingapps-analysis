package org.spongycastle.bcpg;

import java.io.IOException;
import java.math.BigInteger;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/ECSecretBCPGKey.class */
public class ECSecretBCPGKey extends BCPGObject implements BCPGKey {

    /* renamed from: x */
    MPInteger f976x;

    public ECSecretBCPGKey(BigInteger bigInteger) {
        this.f976x = new MPInteger(bigInteger);
    }

    public ECSecretBCPGKey(BCPGInputStream bCPGInputStream) throws IOException {
        this.f976x = new MPInteger(bCPGInputStream);
    }

    @Override // org.spongycastle.bcpg.BCPGObject
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        bCPGOutputStream.writeObject(this.f976x);
    }

    @Override // org.spongycastle.bcpg.BCPGObject, org.spongycastle.util.Encodable
    public byte[] getEncoded() {
        try {
            return super.getEncoded();
        } catch (IOException e) {
            return null;
        }
    }

    @Override // org.spongycastle.bcpg.BCPGKey
    public String getFormat() {
        return "PGP";
    }

    public BigInteger getX() {
        return this.f976x.getValue();
    }
}
