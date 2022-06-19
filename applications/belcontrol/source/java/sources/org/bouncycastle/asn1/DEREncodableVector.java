package org.bouncycastle.asn1;

import java.util.Vector;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DEREncodableVector.class */
public class DEREncodableVector {

    /* renamed from: v */
    public Vector f7220v = new Vector();

    public void add(DEREncodable dEREncodable) {
        this.f7220v.addElement(dEREncodable);
    }

    public DEREncodable get(int i) {
        return (DEREncodable) this.f7220v.elementAt(i);
    }

    public int size() {
        return this.f7220v.size();
    }
}
