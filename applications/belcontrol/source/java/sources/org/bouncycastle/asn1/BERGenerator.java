package org.bouncycastle.asn1;

import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/BERGenerator.class */
public class BERGenerator extends ASN1Generator {
    private boolean _isExplicit;
    private int _tagNo;
    private boolean _tagged;

    public BERGenerator(OutputStream outputStream) {
        super(outputStream);
        this._tagged = false;
    }

    public BERGenerator(OutputStream outputStream, int i, boolean z) {
        super(outputStream);
        this._tagged = false;
        this._tagged = true;
        this._isExplicit = z;
        this._tagNo = i;
    }

    private void writeHdr(int i) {
        this._out.write(i);
        this._out.write(128);
    }

    @Override // org.bouncycastle.asn1.ASN1Generator
    public OutputStream getRawOutputStream() {
        return this._out;
    }

    public void writeBERBody(InputStream inputStream) {
        while (true) {
            int read = inputStream.read();
            if (read >= 0) {
                this._out.write(read);
            } else {
                return;
            }
        }
    }

    public void writeBEREnd() {
        this._out.write(0);
        this._out.write(0);
        if (!this._tagged || !this._isExplicit) {
            return;
        }
        this._out.write(0);
        this._out.write(0);
    }

    public void writeBERHeader(int i) {
        int i2 = i;
        if (this._tagged) {
            int i3 = this._tagNo | 128;
            if (this._isExplicit) {
                writeHdr(i3 | 32);
                i2 = i;
            } else if ((i & 32) == 0) {
                writeHdr(i3);
                return;
            } else {
                i2 = i3 | 32;
            }
        }
        writeHdr(i2);
    }
}
