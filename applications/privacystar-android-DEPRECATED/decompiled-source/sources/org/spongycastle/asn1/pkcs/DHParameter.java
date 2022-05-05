package org.spongycastle.asn1.pkcs;

import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/pkcs/DHParameter.class */
public class DHParameter extends ASN1Object {

    /* renamed from: g */
    ASN1Integer f902g;

    /* renamed from: l */
    ASN1Integer f903l;

    /* renamed from: p */
    ASN1Integer f904p;

    public DHParameter(BigInteger bigInteger, BigInteger bigInteger2, int i) {
        this.f904p = new ASN1Integer(bigInteger);
        this.f902g = new ASN1Integer(bigInteger2);
        if (i != 0) {
            this.f903l = new ASN1Integer(i);
        } else {
            this.f903l = null;
        }
    }

    private DHParameter(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.f904p = ASN1Integer.getInstance(objects.nextElement());
        this.f902g = ASN1Integer.getInstance(objects.nextElement());
        if (objects.hasMoreElements()) {
            this.f903l = (ASN1Integer) objects.nextElement();
        } else {
            this.f903l = null;
        }
    }

    public static DHParameter getInstance(Object obj) {
        if (obj instanceof DHParameter) {
            return (DHParameter) obj;
        }
        if (obj != null) {
            return new DHParameter(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public BigInteger getG() {
        return this.f902g.getPositiveValue();
    }

    public BigInteger getL() {
        if (this.f903l == null) {
            return null;
        }
        return this.f903l.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f904p.getPositiveValue();
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.f904p);
        aSN1EncodableVector.add(this.f902g);
        if (getL() != null) {
            aSN1EncodableVector.add(this.f903l);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
