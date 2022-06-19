package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ASN1OutputStream.class */
public class ASN1OutputStream extends DEROutputStream {
    public ASN1OutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // org.bouncycastle.asn1.DEROutputStream
    public void writeObject(Object obj) {
        DERObject dERObject;
        if (obj == null) {
            writeNull();
            return;
        }
        if (obj instanceof DERObject) {
            dERObject = (DERObject) obj;
        } else if (!(obj instanceof DEREncodable)) {
            throw new IOException("object not ASN1Encodable");
        } else {
            dERObject = ((DEREncodable) obj).getDERObject();
        }
        dERObject.encode(this);
    }
}
