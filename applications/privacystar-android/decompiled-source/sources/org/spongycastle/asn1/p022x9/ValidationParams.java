package org.spongycastle.asn1.p022x9;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;
/* renamed from: org.spongycastle.asn1.x9.ValidationParams */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x9/ValidationParams.class */
public class ValidationParams extends ASN1Object {
    private ASN1Integer pgenCounter;
    private DERBitString seed;

    private ValidationParams(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 2) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.size());
        }
        this.seed = DERBitString.getInstance(aSN1Sequence.getObjectAt(0));
        this.pgenCounter = ASN1Integer.getInstance(aSN1Sequence.getObjectAt(1));
    }

    public ValidationParams(DERBitString dERBitString, ASN1Integer aSN1Integer) {
        if (dERBitString == null) {
            throw new IllegalArgumentException("'seed' cannot be null");
        } else if (aSN1Integer == null) {
            throw new IllegalArgumentException("'pgenCounter' cannot be null");
        } else {
            this.seed = dERBitString;
            this.pgenCounter = aSN1Integer;
        }
    }

    public ValidationParams(byte[] bArr, int i) {
        if (bArr == null) {
            throw new IllegalArgumentException("'seed' cannot be null");
        }
        this.seed = new DERBitString(bArr);
        this.pgenCounter = new ASN1Integer(i);
    }

    public static ValidationParams getInstance(Object obj) {
        if (obj instanceof ValidationParams) {
            return (ValidationParams) obj;
        }
        if (obj != null) {
            return new ValidationParams(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static ValidationParams getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    public BigInteger getPgenCounter() {
        return this.pgenCounter.getPositiveValue();
    }

    public byte[] getSeed() {
        return this.seed.getBytes();
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.seed);
        aSN1EncodableVector.add(this.pgenCounter);
        return new DERSequence(aSN1EncodableVector);
    }
}
