package org.spongycastle.asn1.cmc;

import org.spongycastle.asn1.ASN1Boolean;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.crmf.CertTemplate;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cmc/ModCertTemplate.class */
public class ModCertTemplate extends ASN1Object {
    private final BodyPartList certReferences;
    private final CertTemplate certTemplate;
    private final BodyPartPath pkiDataReference;
    private final boolean replace;

    private ModCertTemplate(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() == 4 || aSN1Sequence.size() == 3) {
            this.pkiDataReference = BodyPartPath.getInstance(aSN1Sequence.getObjectAt(0));
            this.certReferences = BodyPartList.getInstance(aSN1Sequence.getObjectAt(1));
            if (aSN1Sequence.size() == 4) {
                this.replace = ASN1Boolean.getInstance(aSN1Sequence.getObjectAt(2)).isTrue();
                this.certTemplate = CertTemplate.getInstance(aSN1Sequence.getObjectAt(3));
                return;
            }
            this.replace = true;
            this.certTemplate = CertTemplate.getInstance(aSN1Sequence.getObjectAt(2));
            return;
        }
        throw new IllegalArgumentException("incorrect sequence size");
    }

    public ModCertTemplate(BodyPartPath bodyPartPath, BodyPartList bodyPartList, boolean z, CertTemplate certTemplate) {
        this.pkiDataReference = bodyPartPath;
        this.certReferences = bodyPartList;
        this.replace = z;
        this.certTemplate = certTemplate;
    }

    public static ModCertTemplate getInstance(Object obj) {
        if (obj instanceof ModCertTemplate) {
            return (ModCertTemplate) obj;
        }
        if (obj != null) {
            return new ModCertTemplate(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public BodyPartList getCertReferences() {
        return this.certReferences;
    }

    public CertTemplate getCertTemplate() {
        return this.certTemplate;
    }

    public BodyPartPath getPkiDataReference() {
        return this.pkiDataReference;
    }

    public boolean isReplacingFields() {
        return this.replace;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.pkiDataReference);
        aSN1EncodableVector.add(this.certReferences);
        if (!this.replace) {
            aSN1EncodableVector.add(ASN1Boolean.getInstance(this.replace));
        }
        aSN1EncodableVector.add(this.certTemplate);
        return new DERSequence(aSN1EncodableVector);
    }
}
