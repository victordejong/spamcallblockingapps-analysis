package org.bouncycastle.asn1.cryptopro;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/cryptopro/GOST28147Parameters.class */
public class GOST28147Parameters extends ASN1Encodable {

    /* renamed from: iv */
    public ASN1OctetString f7231iv;
    public DERObjectIdentifier paramSet;

    public GOST28147Parameters(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.f7231iv = (ASN1OctetString) objects.nextElement();
        this.paramSet = (DERObjectIdentifier) objects.nextElement();
    }

    public static GOST28147Parameters getInstance(Object obj) {
        if (obj == null || (obj instanceof GOST28147Parameters)) {
            return (GOST28147Parameters) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new GOST28147Parameters((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("Invalid GOST3410Parameter: " + obj.getClass().getName());
    }

    public static GOST28147Parameters getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.f7231iv);
        aSN1EncodableVector.add(this.paramSet);
        return new DERSequence(aSN1EncodableVector);
    }
}
