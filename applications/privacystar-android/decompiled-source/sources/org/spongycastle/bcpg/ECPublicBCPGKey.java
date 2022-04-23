package org.spongycastle.bcpg;

import java.io.IOException;
import java.math.BigInteger;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.math.p032ec.ECPoint;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/ECPublicBCPGKey.class */
public abstract class ECPublicBCPGKey extends BCPGObject implements BCPGKey {
    ASN1ObjectIdentifier oid;
    BigInteger point;

    /* JADX INFO: Access modifiers changed from: protected */
    public ECPublicBCPGKey(ASN1ObjectIdentifier aSN1ObjectIdentifier, BigInteger bigInteger) throws IOException {
        this.point = bigInteger;
        this.oid = aSN1ObjectIdentifier;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ECPublicBCPGKey(ASN1ObjectIdentifier aSN1ObjectIdentifier, ECPoint eCPoint) {
        this.point = new BigInteger(1, eCPoint.getEncoded());
        this.oid = aSN1ObjectIdentifier;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ECPublicBCPGKey(BCPGInputStream bCPGInputStream) throws IOException {
        this.oid = ASN1ObjectIdentifier.getInstance(ASN1Primitive.fromByteArray(readBytesOfEncodedLength(bCPGInputStream)));
        this.point = new MPInteger(bCPGInputStream).getValue();
    }

    protected static byte[] readBytesOfEncodedLength(BCPGInputStream bCPGInputStream) throws IOException {
        int read = bCPGInputStream.read();
        if (read == 0 || read == 255) {
            throw new IOException("future extensions not yet implemented.");
        }
        byte[] bArr = new byte[read + 2];
        bCPGInputStream.readFully(bArr, 2, bArr.length - 2);
        bArr[0] = (byte) 6;
        bArr[1] = (byte) read;
        return bArr;
    }

    @Override // org.spongycastle.bcpg.BCPGObject
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        byte[] encoded = this.oid.getEncoded();
        bCPGOutputStream.write(encoded, 1, encoded.length - 1);
        bCPGOutputStream.writeObject(new MPInteger(this.point));
    }

    public ASN1ObjectIdentifier getCurveOID() {
        return this.oid;
    }

    @Override // org.spongycastle.bcpg.BCPGObject, org.spongycastle.util.Encodable
    public byte[] getEncoded() {
        try {
            return super.getEncoded();
        } catch (IOException e) {
            return null;
        }
    }

    public BigInteger getEncodedPoint() {
        return this.point;
    }

    @Override // org.spongycastle.bcpg.BCPGKey
    public String getFormat() {
        return "PGP";
    }
}
