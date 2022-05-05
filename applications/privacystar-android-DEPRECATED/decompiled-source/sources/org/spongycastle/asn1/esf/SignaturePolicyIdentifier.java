package org.spongycastle.asn1.esf;

import org.spongycastle.asn1.ASN1Null;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERNull;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/esf/SignaturePolicyIdentifier.class */
public class SignaturePolicyIdentifier extends ASN1Object {
    private boolean isSignaturePolicyImplied = true;
    private SignaturePolicyId signaturePolicyId;

    public SignaturePolicyIdentifier() {
    }

    public SignaturePolicyIdentifier(SignaturePolicyId signaturePolicyId) {
        this.signaturePolicyId = signaturePolicyId;
    }

    public static SignaturePolicyIdentifier getInstance(Object obj) {
        if (obj instanceof SignaturePolicyIdentifier) {
            return (SignaturePolicyIdentifier) obj;
        }
        if ((obj instanceof ASN1Null) || hasEncodedTagValue(obj, 5)) {
            return new SignaturePolicyIdentifier();
        }
        if (obj != null) {
            return new SignaturePolicyIdentifier(SignaturePolicyId.getInstance(obj));
        }
        return null;
    }

    public SignaturePolicyId getSignaturePolicyId() {
        return this.signaturePolicyId;
    }

    public boolean isSignaturePolicyImplied() {
        return this.isSignaturePolicyImplied;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return this.isSignaturePolicyImplied ? DERNull.INSTANCE : this.signaturePolicyId.toASN1Primitive();
    }
}
