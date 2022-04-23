package org.spongycastle.bcpg;

import java.io.IOException;
import java.math.BigInteger;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/ElGamalPublicBCPGKey.class */
public class ElGamalPublicBCPGKey extends BCPGObject implements BCPGKey {

    /* renamed from: g */
    MPInteger f977g;

    /* renamed from: p */
    MPInteger f978p;

    /* renamed from: y */
    MPInteger f979y;

    public ElGamalPublicBCPGKey(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f978p = new MPInteger(bigInteger);
        this.f977g = new MPInteger(bigInteger2);
        this.f979y = new MPInteger(bigInteger3);
    }

    public ElGamalPublicBCPGKey(BCPGInputStream bCPGInputStream) throws IOException {
        this.f978p = new MPInteger(bCPGInputStream);
        this.f977g = new MPInteger(bCPGInputStream);
        this.f979y = new MPInteger(bCPGInputStream);
    }

    @Override // org.spongycastle.bcpg.BCPGObject
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        bCPGOutputStream.writeObject(this.f978p);
        bCPGOutputStream.writeObject(this.f977g);
        bCPGOutputStream.writeObject(this.f979y);
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

    public BigInteger getG() {
        return this.f977g.getValue();
    }

    public BigInteger getP() {
        return this.f978p.getValue();
    }

    public BigInteger getY() {
        return this.f979y.getValue();
    }
}
