package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/BERTaggedObjectParser.class */
public class BERTaggedObjectParser implements ASN1TaggedObjectParser {
    private boolean _constructed;
    private ASN1StreamParser _parser;
    private int _tagNumber;

    public BERTaggedObjectParser(int i, int i2, InputStream inputStream) {
        this((i & 32) != 0, i2, new ASN1StreamParser(inputStream));
    }

    public BERTaggedObjectParser(boolean z, int i, ASN1StreamParser aSN1StreamParser) {
        this._constructed = z;
        this._tagNumber = i;
        this._parser = aSN1StreamParser;
    }

    @Override // org.bouncycastle.asn1.DEREncodable
    public DERObject getDERObject() {
        try {
            return getLoadedObject();
        } catch (IOException e) {
            throw new ASN1ParsingException(e.getMessage());
        }
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public DERObject getLoadedObject() {
        return this._parser.readTaggedObject(this._constructed, this._tagNumber);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public DEREncodable getObjectParser(int i, boolean z) {
        if (z) {
            if (!this._constructed) {
                throw new IOException("Explicit tags must be constructed (see X.690 8.14.2)");
            }
            return this._parser.readObject();
        }
        return this._parser.readImplicit(this._constructed, i);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObjectParser
    public int getTagNo() {
        return this._tagNumber;
    }

    public boolean isConstructed() {
        return this._constructed;
    }
}
