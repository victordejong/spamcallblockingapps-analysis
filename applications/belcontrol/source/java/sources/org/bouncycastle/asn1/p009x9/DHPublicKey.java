package org.bouncycastle.asn1.p009x9;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
/* renamed from: org.bouncycastle.asn1.x9.DHPublicKey */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x9/DHPublicKey.class */
public class DHPublicKey extends ASN1Encodable {

    /* renamed from: y */
    private DERInteger f7283y;

    public DHPublicKey(DERInteger dERInteger) {
        if (dERInteger != null) {
            this.f7283y = dERInteger;
            return;
        }
        throw new IllegalArgumentException("'y' cannot be null");
    }

    public static DHPublicKey getInstance(Object obj) {
        if (obj == null || (obj instanceof DHPublicKey)) {
            return (DHPublicKey) obj;
        }
        if (obj instanceof DERInteger) {
            return new DHPublicKey((DERInteger) obj);
        }
        throw new IllegalArgumentException("Invalid DHPublicKey: " + obj.getClass().getName());
    }

    public static DHPublicKey getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(DERInteger.getInstance(aSN1TaggedObject, z));
    }

    public DERInteger getY() {
        return this.f7283y;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        return this.f7283y;
    }
}
