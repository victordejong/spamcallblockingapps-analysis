package org.spongycastle.asn1.cms;

import java.io.IOException;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1SequenceParser;
import org.spongycastle.asn1.ASN1SetParser;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.ASN1TaggedObjectParser;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cms/AuthenticatedDataParser.class */
public class AuthenticatedDataParser {
    private ASN1Encodable nextObject;
    private boolean originatorInfoCalled;
    private ASN1SequenceParser seq;
    private ASN1Integer version;

    public AuthenticatedDataParser(ASN1SequenceParser aSN1SequenceParser) throws IOException {
        this.seq = aSN1SequenceParser;
        this.version = ASN1Integer.getInstance(aSN1SequenceParser.readObject());
    }

    public ASN1SetParser getAuthAttrs() throws IOException {
        if (this.nextObject == null) {
            this.nextObject = this.seq.readObject();
        }
        if (!(this.nextObject instanceof ASN1TaggedObjectParser)) {
            return null;
        }
        ASN1Encodable aSN1Encodable = this.nextObject;
        this.nextObject = null;
        return (ASN1SetParser) ((ASN1TaggedObjectParser) aSN1Encodable).getObjectParser(17, false);
    }

    public AlgorithmIdentifier getDigestAlgorithm() throws IOException {
        if (this.nextObject == null) {
            this.nextObject = this.seq.readObject();
        }
        if (!(this.nextObject instanceof ASN1TaggedObjectParser)) {
            return null;
        }
        AlgorithmIdentifier instance = AlgorithmIdentifier.getInstance((ASN1TaggedObject) this.nextObject.toASN1Primitive(), false);
        this.nextObject = null;
        return instance;
    }

    public ContentInfoParser getEnapsulatedContentInfo() throws IOException {
        return getEncapsulatedContentInfo();
    }

    public ContentInfoParser getEncapsulatedContentInfo() throws IOException {
        if (this.nextObject == null) {
            this.nextObject = this.seq.readObject();
        }
        if (this.nextObject == null) {
            return null;
        }
        this.nextObject = null;
        return new ContentInfoParser((ASN1SequenceParser) this.nextObject);
    }

    public ASN1OctetString getMac() throws IOException {
        if (this.nextObject == null) {
            this.nextObject = this.seq.readObject();
        }
        ASN1Encodable aSN1Encodable = this.nextObject;
        this.nextObject = null;
        return ASN1OctetString.getInstance(aSN1Encodable.toASN1Primitive());
    }

    public AlgorithmIdentifier getMacAlgorithm() throws IOException {
        if (this.nextObject == null) {
            this.nextObject = this.seq.readObject();
        }
        if (this.nextObject == null) {
            return null;
        }
        this.nextObject = null;
        return AlgorithmIdentifier.getInstance(((ASN1SequenceParser) this.nextObject).toASN1Primitive());
    }

    public OriginatorInfo getOriginatorInfo() throws IOException {
        this.originatorInfoCalled = true;
        if (this.nextObject == null) {
            this.nextObject = this.seq.readObject();
        }
        if (!(this.nextObject instanceof ASN1TaggedObjectParser) || ((ASN1TaggedObjectParser) this.nextObject).getTagNo() != 0) {
            return null;
        }
        this.nextObject = null;
        return OriginatorInfo.getInstance(((ASN1SequenceParser) ((ASN1TaggedObjectParser) this.nextObject).getObjectParser(16, false)).toASN1Primitive());
    }

    public ASN1SetParser getRecipientInfos() throws IOException {
        if (!this.originatorInfoCalled) {
            getOriginatorInfo();
        }
        if (this.nextObject == null) {
            this.nextObject = this.seq.readObject();
        }
        ASN1SetParser aSN1SetParser = (ASN1SetParser) this.nextObject;
        this.nextObject = null;
        return aSN1SetParser;
    }

    public ASN1SetParser getUnauthAttrs() throws IOException {
        if (this.nextObject == null) {
            this.nextObject = this.seq.readObject();
        }
        if (this.nextObject == null) {
            return null;
        }
        ASN1Encodable aSN1Encodable = this.nextObject;
        this.nextObject = null;
        return (ASN1SetParser) ((ASN1TaggedObjectParser) aSN1Encodable).getObjectParser(17, false);
    }

    public ASN1Integer getVersion() {
        return this.version;
    }
}
