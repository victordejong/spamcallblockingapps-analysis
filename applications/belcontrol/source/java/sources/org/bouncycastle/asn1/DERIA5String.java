package org.bouncycastle.asn1;

import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DERIA5String.class */
public class DERIA5String extends ASN1Object implements DERString {
    public String string;

    public DERIA5String(String str) {
        this(str, false);
    }

    public DERIA5String(String str, boolean z) {
        Objects.requireNonNull(str, "string cannot be null");
        if (!z || isIA5String(str)) {
            this.string = str;
            return;
        }
        throw new IllegalArgumentException("string contains illegal characters");
    }

    public DERIA5String(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i = 0; i != length; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        this.string = new String(cArr);
    }

    public static DERIA5String getInstance(Object obj) {
        if (obj == null || (obj instanceof DERIA5String)) {
            return (DERIA5String) obj;
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static DERIA5String getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        DERObject object = aSN1TaggedObject.getObject();
        return (z || (object instanceof DERIA5String)) ? getInstance(object) : new DERIA5String(((ASN1OctetString) object).getOctets());
    }

    public static boolean isIA5String(String str) {
        for (int length = str.length() - 1; length >= 0; length--) {
            if (str.charAt(length) > 127) {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public boolean asn1Equals(DERObject dERObject) {
        if (!(dERObject instanceof DERIA5String)) {
            return false;
        }
        return getString().equals(((DERIA5String) dERObject).getString());
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        dEROutputStream.writeEncoded(22, getOctets());
    }

    public byte[] getOctets() {
        char[] charArray = this.string.toCharArray();
        byte[] bArr = new byte[charArray.length];
        for (int i = 0; i != charArray.length; i++) {
            bArr[i] = (byte) charArray[i];
        }
        return bArr;
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
