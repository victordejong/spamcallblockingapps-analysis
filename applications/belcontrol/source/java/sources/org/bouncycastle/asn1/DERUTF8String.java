package org.bouncycastle.asn1;

import org.bouncycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DERUTF8String.class */
public class DERUTF8String extends ASN1Object implements DERString {
    public String string;

    public DERUTF8String(String str) {
        this.string = str;
    }

    public DERUTF8String(byte[] bArr) {
        try {
            this.string = Strings.fromUTF8ByteArray(bArr);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new IllegalArgumentException("UTF8 encoding invalid");
        }
    }

    public static DERUTF8String getInstance(Object obj) {
        if (obj == null || (obj instanceof DERUTF8String)) {
            return (DERUTF8String) obj;
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static DERUTF8String getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        DERObject object = aSN1TaggedObject.getObject();
        return (z || (object instanceof DERUTF8String)) ? getInstance(object) : new DERUTF8String(ASN1OctetString.getInstance(object).getOctets());
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public boolean asn1Equals(DERObject dERObject) {
        if (!(dERObject instanceof DERUTF8String)) {
            return false;
        }
        return getString().equals(((DERUTF8String) dERObject).getString());
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        dEROutputStream.writeEncoded(12, Strings.toUTF8ByteArray(this.string));
    }

    @Override // org.bouncycastle.asn1.ASN1String
    public String getString() {
        return this.string;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject, org.bouncycastle.asn1.ASN1Encodable
    public int hashCode() {
        return getString().hashCode();
    }

    public String toString() {
        return this.string;
    }
}
