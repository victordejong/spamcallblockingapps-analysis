package org.spongycastle.asn1.dvcs;

import org.apache.commons.p018io.IOUtils;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.GeneralName;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/dvcs/DVCSRequest.class */
public class DVCSRequest extends ASN1Object {
    private Data data;
    private DVCSRequestInformation requestInformation;
    private GeneralName transactionIdentifier;

    private DVCSRequest(ASN1Sequence aSN1Sequence) {
        this.requestInformation = DVCSRequestInformation.getInstance(aSN1Sequence.getObjectAt(0));
        this.data = Data.getInstance(aSN1Sequence.getObjectAt(1));
        if (aSN1Sequence.size() > 2) {
            this.transactionIdentifier = GeneralName.getInstance(aSN1Sequence.getObjectAt(2));
        }
    }

    public DVCSRequest(DVCSRequestInformation dVCSRequestInformation, Data data) {
        this(dVCSRequestInformation, data, null);
    }

    public DVCSRequest(DVCSRequestInformation dVCSRequestInformation, Data data, GeneralName generalName) {
        this.requestInformation = dVCSRequestInformation;
        this.data = data;
        this.transactionIdentifier = generalName;
    }

    public static DVCSRequest getInstance(Object obj) {
        if (obj instanceof DVCSRequest) {
            return (DVCSRequest) obj;
        }
        if (obj != null) {
            return new DVCSRequest(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static DVCSRequest getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    public Data getData() {
        return this.data;
    }

    public DVCSRequestInformation getRequestInformation() {
        return this.requestInformation;
    }

    public GeneralName getTransactionIdentifier() {
        return this.transactionIdentifier;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.requestInformation);
        aSN1EncodableVector.add(this.data);
        if (this.transactionIdentifier != null) {
            aSN1EncodableVector.add(this.transactionIdentifier);
        }
        return new DERSequence(aSN1EncodableVector);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("DVCSRequest {\nrequestInformation: ");
        sb.append(this.requestInformation);
        sb.append("\ndata: ");
        sb.append(this.data);
        sb.append(IOUtils.LINE_SEPARATOR_UNIX);
        if (this.transactionIdentifier != null) {
            str = "transactionIdentifier: " + this.transactionIdentifier + IOUtils.LINE_SEPARATOR_UNIX;
        } else {
            str = "";
        }
        sb.append(str);
        sb.append("}\n");
        return sb.toString();
    }
}
