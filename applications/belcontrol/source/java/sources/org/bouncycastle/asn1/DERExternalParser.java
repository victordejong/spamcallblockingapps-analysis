package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DERExternalParser.class */
public class DERExternalParser implements DEREncodable, InMemoryRepresentable {
    private ASN1StreamParser _parser;

    public DERExternalParser(ASN1StreamParser aSN1StreamParser) {
        this._parser = aSN1StreamParser;
    }

    @Override // org.bouncycastle.asn1.DEREncodable
    public DERObject getDERObject() {
        try {
            return getLoadedObject();
        } catch (IOException e) {
            throw new ASN1ParsingException("unable to get DER object", e);
        } catch (IllegalArgumentException e2) {
            throw new ASN1ParsingException("unable to get DER object", e2);
        }
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public DERObject getLoadedObject() {
        try {
            return new DERExternal(this._parser.readVector());
        } catch (IllegalArgumentException e) {
            throw new ASN1Exception(e.getMessage(), e);
        }
    }

    public DEREncodable readObject() {
        return this._parser.readObject();
    }
}
