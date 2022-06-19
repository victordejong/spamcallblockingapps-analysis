package org.bouncycastle.asn1;

import java.util.Vector;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/ASN1EncodableVector.class */
public class ASN1EncodableVector extends DEREncodableVector {

    /* renamed from: v */
    public Vector f7219v = new Vector();

    @Override // org.bouncycastle.asn1.DEREncodableVector
    public void add(DEREncodable dEREncodable) {
        this.f7219v.addElement(dEREncodable);
    }

    @Override // org.bouncycastle.asn1.DEREncodableVector
    public DEREncodable get(int i) {
        return (DEREncodable) this.f7219v.elementAt(i);
    }

    @Override // org.bouncycastle.asn1.DEREncodableVector
    public int size() {
        return this.f7219v.size();
    }
}
