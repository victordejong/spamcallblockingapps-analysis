package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/BEROutputStream.class */
public class BEROutputStream extends DEROutputStream {
    public BEROutputStream(OutputStream outputStream) {
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
            throw new IOException("object not BEREncodable");
        } else {
            dERObject = ((DEREncodable) obj).getDERObject();
        }
        dERObject.encode(this);
    }
}
