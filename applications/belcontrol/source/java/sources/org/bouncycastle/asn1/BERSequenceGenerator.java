package org.bouncycastle.asn1;

import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/BERSequenceGenerator.class */
public class BERSequenceGenerator extends BERGenerator {
    public BERSequenceGenerator(OutputStream outputStream) {
        super(outputStream);
        writeBERHeader(48);
    }

    public BERSequenceGenerator(OutputStream outputStream, int i, boolean z) {
        super(outputStream, i, z);
        writeBERHeader(48);
    }

    public void addObject(DEREncodable dEREncodable) {
        dEREncodable.getDERObject().encode(new BEROutputStream(this._out));
    }

    public void close() {
        writeBEREnd();
    }
}
