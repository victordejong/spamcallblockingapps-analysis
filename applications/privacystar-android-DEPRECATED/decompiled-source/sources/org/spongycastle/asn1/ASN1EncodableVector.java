package org.spongycastle.asn1;

import java.util.Enumeration;
import java.util.Vector;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/ASN1EncodableVector.class */
public class ASN1EncodableVector {

    /* renamed from: v */
    private final Vector f868v = new Vector();

    public void add(ASN1Encodable aSN1Encodable) {
        this.f868v.addElement(aSN1Encodable);
    }

    public void addAll(ASN1EncodableVector aSN1EncodableVector) {
        Enumeration elements = aSN1EncodableVector.f868v.elements();
        while (elements.hasMoreElements()) {
            this.f868v.addElement(elements.nextElement());
        }
    }

    public ASN1Encodable get(int i) {
        return (ASN1Encodable) this.f868v.elementAt(i);
    }

    public int size() {
        return this.f868v.size();
    }
}
