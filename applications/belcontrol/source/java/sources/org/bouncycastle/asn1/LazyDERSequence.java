package org.bouncycastle.asn1;

import java.util.Enumeration;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/LazyDERSequence.class */
public class LazyDERSequence extends DERSequence {
    private byte[] encoded;
    private boolean parsed = false;
    private int size = -1;

    public LazyDERSequence(byte[] bArr) {
        this.encoded = bArr;
    }

    private void parse() {
        LazyDERConstructionEnumeration lazyDERConstructionEnumeration = new LazyDERConstructionEnumeration(this.encoded);
        while (lazyDERConstructionEnumeration.hasMoreElements()) {
            addObject((DEREncodable) lazyDERConstructionEnumeration.nextElement());
        }
        this.parsed = true;
    }

    @Override // org.bouncycastle.asn1.DERSequence, org.bouncycastle.asn1.ASN1Sequence, org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        dEROutputStream.writeEncoded(48, this.encoded);
    }

    @Override // org.bouncycastle.asn1.ASN1Sequence
    public DEREncodable getObjectAt(int i) {
        DEREncodable objectAt;
        synchronized (this) {
            if (!this.parsed) {
                parse();
            }
            objectAt = super.getObjectAt(i);
        }
        return objectAt;
    }

    @Override // org.bouncycastle.asn1.ASN1Sequence
    public Enumeration getObjects() {
        synchronized (this) {
            if (this.parsed) {
                return super.getObjects();
            }
            return new LazyDERConstructionEnumeration(this.encoded);
        }
    }

    @Override // org.bouncycastle.asn1.ASN1Sequence
    public int size() {
        if (this.size < 0) {
            LazyDERConstructionEnumeration lazyDERConstructionEnumeration = new LazyDERConstructionEnumeration(this.encoded);
            int i = 0;
            while (true) {
                this.size = i;
                if (!lazyDERConstructionEnumeration.hasMoreElements()) {
                    break;
                }
                lazyDERConstructionEnumeration.nextElement();
                i = this.size + 1;
            }
        }
        return this.size;
    }
}
