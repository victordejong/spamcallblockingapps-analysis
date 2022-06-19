package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ASN1Object.class */
public abstract class ASN1Object extends DERObject {
    public static ASN1Object fromByteArray(byte[] bArr) {
        try {
            return (ASN1Object) new ASN1InputStream(bArr).readObject();
        } catch (ClassCastException e) {
            throw new IOException("cannot recognise object in stream");
        }
    }

    public abstract boolean asn1Equals(DERObject dERObject);

    @Override // org.bouncycastle.asn1.DERObject
    public abstract void encode(DEROutputStream dEROutputStream);

    @Override // org.bouncycastle.asn1.DERObject, org.bouncycastle.asn1.ASN1Encodable
    public final boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DEREncodable) || !asn1Equals(((DEREncodable) obj).getDERObject())) {
            z = false;
        }
        return z;
    }

    @Override // org.bouncycastle.asn1.DERObject, org.bouncycastle.asn1.ASN1Encodable
    public abstract int hashCode();
}
