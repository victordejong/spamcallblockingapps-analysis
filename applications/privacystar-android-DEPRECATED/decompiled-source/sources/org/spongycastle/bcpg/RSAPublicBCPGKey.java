package org.spongycastle.bcpg;

import java.io.IOException;
import java.math.BigInteger;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/RSAPublicBCPGKey.class */
public class RSAPublicBCPGKey extends BCPGObject implements BCPGKey {

    /* renamed from: e */
    MPInteger f983e;

    /* renamed from: n */
    MPInteger f984n;

    public RSAPublicBCPGKey(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f984n = new MPInteger(bigInteger);
        this.f983e = new MPInteger(bigInteger2);
    }

    public RSAPublicBCPGKey(BCPGInputStream bCPGInputStream) throws IOException {
        this.f984n = new MPInteger(bCPGInputStream);
        this.f983e = new MPInteger(bCPGInputStream);
    }

    @Override // org.spongycastle.bcpg.BCPGObject
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        bCPGOutputStream.writeObject(this.f984n);
        bCPGOutputStream.writeObject(this.f983e);
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

    public BigInteger getModulus() {
        return this.f984n.getValue();
    }

    public BigInteger getPublicExponent() {
        return this.f983e.getValue();
    }
}
