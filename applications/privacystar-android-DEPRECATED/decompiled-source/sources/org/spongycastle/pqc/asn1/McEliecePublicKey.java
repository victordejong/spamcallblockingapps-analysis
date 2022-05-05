package org.spongycastle.pqc.asn1;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/asn1/McEliecePublicKey.class */
public class McEliecePublicKey extends ASN1Object {

    /* renamed from: g */
    private final GF2Matrix f1662g;

    /* renamed from: n */
    private final int f1663n;

    /* renamed from: t */
    private final int f1664t;

    public McEliecePublicKey(int i, int i2, GF2Matrix gF2Matrix) {
        this.f1663n = i;
        this.f1664t = i2;
        this.f1662g = new GF2Matrix(gF2Matrix);
    }

    private McEliecePublicKey(ASN1Sequence aSN1Sequence) {
        this.f1663n = ((ASN1Integer) aSN1Sequence.getObjectAt(0)).getValue().intValue();
        this.f1664t = ((ASN1Integer) aSN1Sequence.getObjectAt(1)).getValue().intValue();
        this.f1662g = new GF2Matrix(((ASN1OctetString) aSN1Sequence.getObjectAt(2)).getOctets());
    }

    public static McEliecePublicKey getInstance(Object obj) {
        if (obj instanceof McEliecePublicKey) {
            return (McEliecePublicKey) obj;
        }
        if (obj != null) {
            return new McEliecePublicKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public GF2Matrix getG() {
        return new GF2Matrix(this.f1662g);
    }

    public int getN() {
        return this.f1663n;
    }

    public int getT() {
        return this.f1664t;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(this.f1663n));
        aSN1EncodableVector.add(new ASN1Integer(this.f1664t));
        aSN1EncodableVector.add(new DEROctetString(this.f1662g.getEncoded()));
        return new DERSequence(aSN1EncodableVector);
    }
}
