package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DERSequenceParser.class */
public class DERSequenceParser implements ASN1SequenceParser {
    private ASN1StreamParser _parser;

    public DERSequenceParser(ASN1StreamParser aSN1StreamParser) {
        this._parser = aSN1StreamParser;
    }

    @Override // org.bouncycastle.asn1.DEREncodable
    public DERObject getDERObject() {
        try {
            return getLoadedObject();
        } catch (IOException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public DERObject getLoadedObject() {
        return new DERSequence(this._parser.readVector());
    }

    @Override // org.bouncycastle.asn1.ASN1SequenceParser
    public DEREncodable readObject() {
        return this._parser.readObject();
    }
}
