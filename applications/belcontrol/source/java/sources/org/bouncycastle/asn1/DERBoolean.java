package org.bouncycastle.asn1;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DERBoolean.class */
public class DERBoolean extends ASN1Object {
    public static final DERBoolean FALSE = new DERBoolean(false);
    public static final DERBoolean TRUE = new DERBoolean(true);
    public byte value;

    public DERBoolean(boolean z) {
        this.value = (byte) (z ? -1 : 0);
    }

    public DERBoolean(byte[] bArr) {
        if (bArr.length == 1) {
            this.value = bArr[0];
            return;
        }
        throw new IllegalArgumentException("byte value should have 1 byte in it");
    }

    public static DERBoolean getInstance(Object obj) {
        if (obj == null || (obj instanceof DERBoolean)) {
            return (DERBoolean) obj;
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static DERBoolean getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        DERObject object = aSN1TaggedObject.getObject();
        return (z || (object instanceof DERBoolean)) ? getInstance(object) : new DERBoolean(((ASN1OctetString) object).getOctets());
    }

    public static DERBoolean getInstance(boolean z) {
        return z ? TRUE : FALSE;
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public boolean asn1Equals(DERObject dERObject) {
        boolean z = false;
        if (dERObject != null) {
            if (!(dERObject instanceof DERBoolean)) {
                z = false;
            } else {
                z = false;
                if (this.value == ((DERBoolean) dERObject).value) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        dEROutputStream.writeEncoded(1, new byte[]{this.value});
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject, org.bouncycastle.asn1.ASN1Encodable
    public int hashCode() {
        return this.value;
    }

    public boolean isTrue() {
        return this.value != 0;
    }

    public String toString() {
        return this.value != 0 ? "TRUE" : "FALSE";
    }
}
