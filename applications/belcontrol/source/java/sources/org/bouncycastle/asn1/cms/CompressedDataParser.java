package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1SequenceParser;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/cms/CompressedDataParser.class */
public class CompressedDataParser {
    private AlgorithmIdentifier _compressionAlgorithm;
    private ContentInfoParser _encapContentInfo;
    private DERInteger _version;

    public CompressedDataParser(ASN1SequenceParser aSN1SequenceParser) {
        this._version = (DERInteger) aSN1SequenceParser.readObject();
        this._compressionAlgorithm = AlgorithmIdentifier.getInstance(aSN1SequenceParser.readObject().getDERObject());
        this._encapContentInfo = new ContentInfoParser((ASN1SequenceParser) aSN1SequenceParser.readObject());
    }

    public AlgorithmIdentifier getCompressionAlgorithmIdentifier() {
        return this._compressionAlgorithm;
    }

    public ContentInfoParser getEncapContentInfo() {
        return this._encapContentInfo;
    }

    public DERInteger getVersion() {
        return this._version;
    }
}
