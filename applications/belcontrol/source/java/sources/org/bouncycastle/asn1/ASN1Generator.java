package org.bouncycastle.asn1;

import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ASN1Generator.class */
public abstract class ASN1Generator {
    public OutputStream _out;

    public ASN1Generator(OutputStream outputStream) {
        this._out = outputStream;
    }

    public abstract OutputStream getRawOutputStream();
}
