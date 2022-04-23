package org.spongycastle.asn1.x509;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Boolean;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x509/BasicConstraints.class */
public class BasicConstraints extends ASN1Object {

    /* renamed from: cA */
    ASN1Boolean f934cA;
    ASN1Integer pathLenConstraint;

    public BasicConstraints(int i) {
        this.f934cA = ASN1Boolean.getInstance(false);
        this.pathLenConstraint = null;
        this.f934cA = ASN1Boolean.getInstance(true);
        this.pathLenConstraint = new ASN1Integer(i);
    }

    private BasicConstraints(ASN1Sequence aSN1Sequence) {
        this.f934cA = ASN1Boolean.getInstance(false);
        this.pathLenConstraint = null;
        if (aSN1Sequence.size() == 0) {
            this.f934cA = null;
            this.pathLenConstraint = null;
            return;
        }
        if (aSN1Sequence.getObjectAt(0) instanceof ASN1Boolean) {
            this.f934cA = ASN1Boolean.getInstance(aSN1Sequence.getObjectAt(0));
        } else {
            this.f934cA = null;
            this.pathLenConstraint = ASN1Integer.getInstance(aSN1Sequence.getObjectAt(0));
        }
        if (aSN1Sequence.size() <= 1) {
            return;
        }
        if (this.f934cA != null) {
            this.pathLenConstraint = ASN1Integer.getInstance(aSN1Sequence.getObjectAt(1));
            return;
        }
        throw new IllegalArgumentException("wrong sequence in constructor");
    }

    public BasicConstraints(boolean z) {
        this.f934cA = ASN1Boolean.getInstance(false);
        this.pathLenConstraint = null;
        if (z) {
            this.f934cA = ASN1Boolean.getInstance(true);
        } else {
            this.f934cA = null;
        }
        this.pathLenConstraint = null;
    }

    public static BasicConstraints fromExtensions(Extensions extensions) {
        return getInstance(extensions.getExtensionParsedValue(Extension.basicConstraints));
    }

    public static BasicConstraints getInstance(Object obj) {
        if (obj instanceof BasicConstraints) {
            return (BasicConstraints) obj;
        }
        if (obj instanceof X509Extension) {
            return getInstance(X509Extension.convertValueToObject((X509Extension) obj));
        }
        if (obj != null) {
            return new BasicConstraints(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static BasicConstraints getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    public BigInteger getPathLenConstraint() {
        if (this.pathLenConstraint != null) {
            return this.pathLenConstraint.getValue();
        }
        return null;
    }

    public boolean isCA() {
        return this.f934cA != null && this.f934cA.isTrue();
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.f934cA != null) {
            aSN1EncodableVector.add(this.f934cA);
        }
        if (this.pathLenConstraint != null) {
            aSN1EncodableVector.add(this.pathLenConstraint);
        }
        return new DERSequence(aSN1EncodableVector);
    }

    public String toString() {
        if (this.pathLenConstraint != null) {
            return "BasicConstraints: isCa(" + isCA() + "), pathLenConstraint = " + this.pathLenConstraint.getValue();
        } else if (this.f934cA == null) {
            return "BasicConstraints: isCa(false)";
        } else {
            return "BasicConstraints: isCa(" + isCA() + ")";
        }
    }
}
