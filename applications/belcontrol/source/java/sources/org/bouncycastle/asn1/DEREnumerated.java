package org.bouncycastle.asn1;

import java.math.BigInteger;
import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DEREnumerated.class */
public class DEREnumerated extends ASN1Object {
    public byte[] bytes;

    public DEREnumerated(int i) {
        this.bytes = BigInteger.valueOf(i).toByteArray();
    }

    public DEREnumerated(BigInteger bigInteger) {
        this.bytes = bigInteger.toByteArray();
    }

    public DEREnumerated(byte[] bArr) {
        this.bytes = bArr;
    }

    public static DEREnumerated getInstance(Object obj) {
        if (obj == null || (obj instanceof DEREnumerated)) {
            return (DEREnumerated) obj;
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static DEREnumerated getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        DERObject object = aSN1TaggedObject.getObject();
        return (z || (object instanceof DEREnumerated)) ? getInstance(object) : new DEREnumerated(((ASN1OctetString) object).getOctets());
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public boolean asn1Equals(DERObject dERObject) {
        if (!(dERObject instanceof DEREnumerated)) {
            return false;
        }
        return Arrays.areEqual(this.bytes, ((DEREnumerated) dERObject).bytes);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        dEROutputStream.writeEncoded(10, this.bytes);
    }

    public BigInteger getValue() {
        return new BigInteger(this.bytes);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject, org.bouncycastle.asn1.ASN1Encodable
    public int hashCode() {
        return Arrays.hashCode(this.bytes);
    }
}
