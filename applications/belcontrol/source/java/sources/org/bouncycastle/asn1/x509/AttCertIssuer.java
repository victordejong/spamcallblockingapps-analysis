package org.bouncycastle.asn1.x509;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERTaggedObject;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x509/AttCertIssuer.class */
public class AttCertIssuer extends ASN1Encodable implements ASN1Choice {
    public DERObject choiceObj;
    public ASN1Encodable obj;

    public AttCertIssuer(GeneralNames generalNames) {
        this.obj = generalNames;
        this.choiceObj = generalNames.getDERObject();
    }

    public AttCertIssuer(V2Form v2Form) {
        this.obj = v2Form;
        this.choiceObj = new DERTaggedObject(false, 0, this.obj);
    }

    public static AttCertIssuer getInstance(Object obj) {
        if (obj instanceof AttCertIssuer) {
            return (AttCertIssuer) obj;
        }
        if (obj instanceof V2Form) {
            return new AttCertIssuer(V2Form.getInstance(obj));
        }
        if (obj instanceof GeneralNames) {
            return new AttCertIssuer((GeneralNames) obj);
        }
        if (obj instanceof ASN1TaggedObject) {
            return new AttCertIssuer(V2Form.getInstance((ASN1TaggedObject) obj, false));
        }
        if (obj instanceof ASN1Sequence) {
            return new AttCertIssuer(GeneralNames.getInstance(obj));
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    public static AttCertIssuer getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(aSN1TaggedObject.getObject());
    }

    public ASN1Encodable getIssuer() {
        return this.obj;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        return this.choiceObj;
    }
}
