package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1SequenceParser;
import org.bouncycastle.asn1.ASN1TaggedObjectParser;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/cms/EncryptedContentInfoParser.class */
public class EncryptedContentInfoParser {
    private AlgorithmIdentifier _contentEncryptionAlgorithm;
    private DERObjectIdentifier _contentType;
    private ASN1TaggedObjectParser _encryptedContent;

    public EncryptedContentInfoParser(ASN1SequenceParser aSN1SequenceParser) {
        this._contentType = (DERObjectIdentifier) aSN1SequenceParser.readObject();
        this._contentEncryptionAlgorithm = AlgorithmIdentifier.getInstance(aSN1SequenceParser.readObject().getDERObject());
        this._encryptedContent = (ASN1TaggedObjectParser) aSN1SequenceParser.readObject();
    }

    public AlgorithmIdentifier getContentEncryptionAlgorithm() {
        return this._contentEncryptionAlgorithm;
    }

    public DERObjectIdentifier getContentType() {
        return this._contentType;
    }

    public DEREncodable getEncryptedContent(int i) {
        return this._encryptedContent.getObjectParser(i, false);
    }
}
