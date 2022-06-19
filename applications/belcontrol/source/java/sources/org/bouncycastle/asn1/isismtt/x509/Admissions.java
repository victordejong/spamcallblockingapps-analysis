package org.bouncycastle.asn1.isismtt.x509;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x509.GeneralName;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/isismtt/x509/Admissions.class */
public class Admissions extends ASN1Encodable {
    private GeneralName admissionAuthority;
    private NamingAuthority namingAuthority;
    private ASN1Sequence professionInfos;

    private Admissions(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.size());
        }
        Enumeration objects = aSN1Sequence.getObjects();
        DEREncodable dEREncodable = (DEREncodable) objects.nextElement();
        DEREncodable dEREncodable2 = dEREncodable;
        if (dEREncodable instanceof ASN1TaggedObject) {
            ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) dEREncodable;
            int tagNo = aSN1TaggedObject.getTagNo();
            if (tagNo == 0) {
                this.admissionAuthority = GeneralName.getInstance(aSN1TaggedObject, true);
            } else if (tagNo != 1) {
                throw new IllegalArgumentException("Bad tag number: " + aSN1TaggedObject.getTagNo());
            } else {
                this.namingAuthority = NamingAuthority.getInstance(aSN1TaggedObject, true);
            }
            dEREncodable2 = (DEREncodable) objects.nextElement();
        }
        DEREncodable dEREncodable3 = dEREncodable2;
        if (dEREncodable2 instanceof ASN1TaggedObject) {
            ASN1TaggedObject aSN1TaggedObject2 = (ASN1TaggedObject) dEREncodable2;
            if (aSN1TaggedObject2.getTagNo() != 1) {
                throw new IllegalArgumentException("Bad tag number: " + aSN1TaggedObject2.getTagNo());
            }
            this.namingAuthority = NamingAuthority.getInstance(aSN1TaggedObject2, true);
            dEREncodable3 = (DEREncodable) objects.nextElement();
        }
        this.professionInfos = ASN1Sequence.getInstance(dEREncodable3);
        if (!objects.hasMoreElements()) {
            return;
        }
        throw new IllegalArgumentException("Bad object encountered: " + objects.nextElement().getClass());
    }

    public Admissions(GeneralName generalName, NamingAuthority namingAuthority, ProfessionInfo[] professionInfoArr) {
        this.admissionAuthority = generalName;
        this.namingAuthority = namingAuthority;
        this.professionInfos = new DERSequence(professionInfoArr);
    }

    public static Admissions getInstance(Object obj) {
        if (obj == null || (obj instanceof Admissions)) {
            return (Admissions) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new Admissions((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public GeneralName getAdmissionAuthority() {
        return this.admissionAuthority;
    }

    public NamingAuthority getNamingAuthority() {
        return this.namingAuthority;
    }

    public ProfessionInfo[] getProfessionInfos() {
        ProfessionInfo[] professionInfoArr = new ProfessionInfo[this.professionInfos.size()];
        Enumeration objects = this.professionInfos.getObjects();
        int i = 0;
        while (objects.hasMoreElements()) {
            professionInfoArr[i] = ProfessionInfo.getInstance(objects.nextElement());
            i++;
        }
        return professionInfoArr;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.admissionAuthority != null) {
            aSN1EncodableVector.add(new DERTaggedObject(true, 0, this.admissionAuthority));
        }
        if (this.namingAuthority != null) {
            aSN1EncodableVector.add(new DERTaggedObject(true, 1, this.namingAuthority));
        }
        aSN1EncodableVector.add(this.professionInfos);
        return new DERSequence(aSN1EncodableVector);
    }
}
