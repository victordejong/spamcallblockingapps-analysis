package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DERSetParser.class */
public class DERSetParser implements ASN1SetParser {
    private ASN1StreamParser _parser;

    public DERSetParser(ASN1StreamParser aSN1StreamParser) {
        this._parser = aSN1StreamParser;
    }

    @Override // org.bouncycastle.asn1.DEREncodable
    public DERObject getDERObject() {
        try {
            return getLoadedObject();
        } catch (IOException e) {
            throw new ASN1ParsingException(e.getMessage(), e);
        }
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public DERObject getLoadedObject() {
        return new DERSet(this._parser.readVector(), false);
    }

    @Override // org.bouncycastle.asn1.ASN1SetParser
    public DEREncodable readObject() {
        return this._parser.readObject();
    }
}
