package org.bouncycastle.asn1;

import java.math.BigInteger;
import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DERInteger.class */
public class DERInteger extends ASN1Object {
    public byte[] bytes;

    public DERInteger(int i) {
        this.bytes = BigInteger.valueOf(i).toByteArray();
    }

    public DERInteger(BigInteger bigInteger) {
        this.bytes = bigInteger.toByteArray();
    }

    public DERInteger(byte[] bArr) {
        this.bytes = bArr;
    }

    public static DERInteger getInstance(Object obj) {
        if (obj == null || (obj instanceof DERInteger)) {
            return (DERInteger) obj;
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static DERInteger getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        DERObject object = aSN1TaggedObject.getObject();
        return (z || (object instanceof DERInteger)) ? getInstance(object) : new ASN1Integer(ASN1OctetString.getInstance(aSN1TaggedObject.getObject()).getOctets());
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public boolean asn1Equals(DERObject dERObject) {
        if (!(dERObject instanceof DERInteger)) {
            return false;
        }
        return Arrays.areEqual(this.bytes, ((DERInteger) dERObject).bytes);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        dEROutputStream.writeEncoded(2, this.bytes);
    }

    public BigInteger getPositiveValue() {
        return new BigInteger(1, this.bytes);
    }

    public BigInteger getValue() {
        return new BigInteger(this.bytes);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject, org.bouncycastle.asn1.ASN1Encodable
    public int hashCode() {
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr = this.bytes;
            if (i != bArr.length) {
                i2 ^= (bArr[i] & 255) << (i % 4);
                i++;
            } else {
                return i2;
            }
        }
    }

    public String toString() {
        return getValue().toString();
    }
}
