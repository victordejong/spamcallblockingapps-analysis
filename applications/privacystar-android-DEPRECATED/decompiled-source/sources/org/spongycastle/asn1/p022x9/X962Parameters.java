package org.spongycastle.asn1.p022x9;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Null;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1TaggedObject;
/* renamed from: org.spongycastle.asn1.x9.X962Parameters */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x9/X962Parameters.class */
public class X962Parameters extends ASN1Object implements ASN1Choice {
    private ASN1Primitive params;

    public X962Parameters(ASN1Null aSN1Null) {
        this.params = null;
        this.params = aSN1Null;
    }

    public X962Parameters(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this.params = null;
        this.params = aSN1ObjectIdentifier;
    }

    public X962Parameters(ASN1Primitive aSN1Primitive) {
        this.params = null;
        this.params = aSN1Primitive;
    }

    public X962Parameters(X9ECParameters x9ECParameters) {
        this.params = null;
        this.params = x9ECParameters.toASN1Primitive();
    }

    public static X962Parameters getInstance(Object obj) {
        if (obj == null || (obj instanceof X962Parameters)) {
            return (X962Parameters) obj;
        }
        if (obj instanceof ASN1Primitive) {
            return new X962Parameters((ASN1Primitive) obj);
        }
        if (obj instanceof byte[]) {
            try {
                return new X962Parameters(ASN1Primitive.fromByteArray((byte[]) obj));
            } catch (Exception e) {
                throw new IllegalArgumentException("unable to parse encoded data: " + e.getMessage());
            }
        } else {
            throw new IllegalArgumentException("unknown object in getInstance()");
        }
    }

    public static X962Parameters getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(aSN1TaggedObject.getObject());
    }

    public ASN1Primitive getParameters() {
        return this.params;
    }

    public boolean isImplicitlyCA() {
        return this.params instanceof ASN1Null;
    }

    public boolean isNamedCurve() {
        return this.params instanceof ASN1ObjectIdentifier;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return this.params;
    }
}
