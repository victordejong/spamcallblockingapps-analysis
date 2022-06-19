package org.bouncycastle.asn1.ocsp;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.X509Extensions;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ocsp/TBSRequest.class */
public class TBSRequest extends ASN1Encodable {

    /* renamed from: V1 */
    private static final DERInteger f7237V1 = new DERInteger(0);
    public X509Extensions requestExtensions;
    public ASN1Sequence requestList;
    public GeneralName requestorName;
    public DERInteger version;
    public boolean versionSet;

    public TBSRequest(ASN1Sequence aSN1Sequence) {
        int i = 0;
        if (!(aSN1Sequence.getObjectAt(0) instanceof ASN1TaggedObject) || ((ASN1TaggedObject) aSN1Sequence.getObjectAt(0)).getTagNo() != 0) {
            this.version = f7237V1;
        } else {
            this.versionSet = true;
            this.version = DERInteger.getInstance((ASN1TaggedObject) aSN1Sequence.getObjectAt(0), true);
            i = 1;
        }
        int i2 = i;
        if (aSN1Sequence.getObjectAt(i) instanceof ASN1TaggedObject) {
            this.requestorName = GeneralName.getInstance((ASN1TaggedObject) aSN1Sequence.getObjectAt(i), true);
            i2 = i + 1;
        }
        int i3 = i2 + 1;
        this.requestList = (ASN1Sequence) aSN1Sequence.getObjectAt(i2);
        if (aSN1Sequence.size() == i3 + 1) {
            this.requestExtensions = X509Extensions.getInstance((ASN1TaggedObject) aSN1Sequence.getObjectAt(i3), true);
        }
    }

    public TBSRequest(GeneralName generalName, ASN1Sequence aSN1Sequence, X509Extensions x509Extensions) {
        this.version = f7237V1;
        this.requestorName = generalName;
        this.requestList = aSN1Sequence;
        this.requestExtensions = x509Extensions;
    }

    public static TBSRequest getInstance(Object obj) {
        if (obj == null || (obj instanceof TBSRequest)) {
            return (TBSRequest) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new TBSRequest((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    public static TBSRequest getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    public X509Extensions getRequestExtensions() {
        return this.requestExtensions;
    }

    public ASN1Sequence getRequestList() {
        return this.requestList;
    }

    public GeneralName getRequestorName() {
        return this.requestorName;
    }

    public DERInteger getVersion() {
        return this.version;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (!this.version.equals(f7237V1) || this.versionSet) {
            aSN1EncodableVector.add(new DERTaggedObject(true, 0, this.version));
        }
        if (this.requestorName != null) {
            aSN1EncodableVector.add(new DERTaggedObject(true, 1, this.requestorName));
        }
        aSN1EncodableVector.add(this.requestList);
        if (this.requestExtensions != null) {
            aSN1EncodableVector.add(new DERTaggedObject(true, 2, this.requestExtensions));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
