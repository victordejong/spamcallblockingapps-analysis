package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ASN1Encodable.class */
public abstract class ASN1Encodable implements DEREncodable {
    public static final String BER = "BER";
    public static final String DER = "DER";

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DEREncodable) {
            return toASN1Object().equals(((DEREncodable) obj).getDERObject());
        }
        return false;
    }

    public byte[] getDEREncoded() {
        try {
            return getEncoded(DER);
        } catch (IOException e) {
            return null;
        }
    }

    @Override // org.bouncycastle.asn1.DEREncodable
    public DERObject getDERObject() {
        return toASN1Object();
    }

    public byte[] getEncoded() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        new ASN1OutputStream(byteArrayOutputStream).writeObject(this);
        return byteArrayOutputStream.toByteArray();
    }

    public byte[] getEncoded(String str) {
        if (str.equals(DER)) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new DEROutputStream(byteArrayOutputStream).writeObject(this);
            return byteArrayOutputStream.toByteArray();
        }
        return getEncoded();
    }

    public int hashCode() {
        return toASN1Object().hashCode();
    }

    public abstract DERObject toASN1Object();
}
