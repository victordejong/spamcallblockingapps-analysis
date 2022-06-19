package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/BERApplicationSpecificParser.class */
public class BERApplicationSpecificParser implements ASN1ApplicationSpecificParser {
    private final ASN1StreamParser parser;
    private final int tag;

    public BERApplicationSpecificParser(int i, ASN1StreamParser aSN1StreamParser) {
        this.tag = i;
        this.parser = aSN1StreamParser;
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
        return new BERApplicationSpecific(this.tag, this.parser.readVector());
    }

    @Override // org.bouncycastle.asn1.ASN1ApplicationSpecificParser
    public DEREncodable readObject() {
        return this.parser.readObject();
    }
}
