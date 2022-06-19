package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DERSequenceGenerator.class */
public class DERSequenceGenerator extends DERGenerator {
    private final ByteArrayOutputStream _bOut = new ByteArrayOutputStream();

    public DERSequenceGenerator(OutputStream outputStream) {
        super(outputStream);
    }

    public DERSequenceGenerator(OutputStream outputStream, int i, boolean z) {
        super(outputStream, i, z);
    }

    public void addObject(DEREncodable dEREncodable) {
        dEREncodable.getDERObject().encode(new DEROutputStream(this._bOut));
    }

    public void close() {
        writeDEREncoded(48, this._bOut.toByteArray());
    }

    @Override // org.bouncycastle.asn1.ASN1Generator
    public OutputStream getRawOutputStream() {
        return this._bOut;
    }
}
