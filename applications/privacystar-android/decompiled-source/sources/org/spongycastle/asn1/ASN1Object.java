package org.spongycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.spongycastle.util.Encodable;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/ASN1Object.class */
public abstract class ASN1Object implements ASN1Encodable, Encodable {
    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean hasEncodedTagValue(Object obj, int i) {
        boolean z = false;
        if (obj instanceof byte[]) {
            z = false;
            if (((byte[]) obj)[0] == i) {
                z = true;
            }
        }
        return z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ASN1Encodable)) {
            return false;
        }
        return toASN1Primitive().equals(((ASN1Encodable) obj).toASN1Primitive());
    }

    @Override // org.spongycastle.util.Encodable
    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        new ASN1OutputStream(byteArrayOutputStream).writeObject(this);
        return byteArrayOutputStream.toByteArray();
    }

    public byte[] getEncoded(String str) throws IOException {
        if (str.equals(ASN1Encoding.DER)) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new DEROutputStream(byteArrayOutputStream).writeObject(this);
            return byteArrayOutputStream.toByteArray();
        } else if (!str.equals(ASN1Encoding.f869DL)) {
            return getEncoded();
        } else {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            new DLOutputStream(byteArrayOutputStream2).writeObject(this);
            return byteArrayOutputStream2.toByteArray();
        }
    }

    public int hashCode() {
        return toASN1Primitive().hashCode();
    }

    public ASN1Primitive toASN1Object() {
        return toASN1Primitive();
    }

    @Override // org.spongycastle.asn1.ASN1Encodable
    public abstract ASN1Primitive toASN1Primitive();
}
