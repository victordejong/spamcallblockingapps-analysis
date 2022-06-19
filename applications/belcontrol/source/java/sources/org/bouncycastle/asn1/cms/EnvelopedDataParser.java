package org.bouncycastle.asn1.cms;

import org.bouncycastle.asn1.ASN1SequenceParser;
import org.bouncycastle.asn1.ASN1SetParser;
import org.bouncycastle.asn1.ASN1TaggedObjectParser;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/cms/EnvelopedDataParser.class */
public class EnvelopedDataParser {
    private DEREncodable _nextObject;
    private boolean _originatorInfoCalled;
    private ASN1SequenceParser _seq;
    private DERInteger _version;

    public EnvelopedDataParser(ASN1SequenceParser aSN1SequenceParser) {
        this._seq = aSN1SequenceParser;
        this._version = (DERInteger) aSN1SequenceParser.readObject();
    }

    public EncryptedContentInfoParser getEncryptedContentInfo() {
        if (this._nextObject == null) {
            this._nextObject = this._seq.readObject();
        }
        DEREncodable dEREncodable = this._nextObject;
        EncryptedContentInfoParser encryptedContentInfoParser = null;
        if (dEREncodable != null) {
            this._nextObject = null;
            encryptedContentInfoParser = new EncryptedContentInfoParser((ASN1SequenceParser) dEREncodable);
        }
        return encryptedContentInfoParser;
    }

    public OriginatorInfo getOriginatorInfo() {
        this._originatorInfoCalled = true;
        if (this._nextObject == null) {
            this._nextObject = this._seq.readObject();
        }
        DEREncodable dEREncodable = this._nextObject;
        if (!(dEREncodable instanceof ASN1TaggedObjectParser) || ((ASN1TaggedObjectParser) dEREncodable).getTagNo() != 0) {
            return null;
        }
        this._nextObject = null;
        return OriginatorInfo.getInstance(((ASN1SequenceParser) ((ASN1TaggedObjectParser) this._nextObject).getObjectParser(16, false)).getDERObject());
    }

    public ASN1SetParser getRecipientInfos() {
        if (!this._originatorInfoCalled) {
            getOriginatorInfo();
        }
        if (this._nextObject == null) {
            this._nextObject = this._seq.readObject();
        }
        ASN1SetParser aSN1SetParser = (ASN1SetParser) this._nextObject;
        this._nextObject = null;
        return aSN1SetParser;
    }

    public ASN1SetParser getUnprotectedAttrs() {
        if (this._nextObject == null) {
            this._nextObject = this._seq.readObject();
        }
        DEREncodable dEREncodable = this._nextObject;
        if (dEREncodable != null) {
            this._nextObject = null;
            return (ASN1SetParser) ((ASN1TaggedObjectParser) dEREncodable).getObjectParser(17, false);
        }
        return null;
    }

    public DERInteger getVersion() {
        return this._version;
    }
}
