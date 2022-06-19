package org.bouncycastle.asn1.p009x9;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.math.p012ec.ECCurve;
/* renamed from: org.bouncycastle.asn1.x9.X9Curve */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/x9/X9Curve.class */
public class X9Curve extends ASN1Encodable implements X9ObjectIdentifiers {
    private ECCurve curve;
    private DERObjectIdentifier fieldIdentifier;
    private byte[] seed;

    /* JADX WARN: Removed duplicated region for block: B:15:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public X9Curve(org.bouncycastle.asn1.p009x9.X9FieldID r10, org.bouncycastle.asn1.ASN1Sequence r11) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.p009x9.X9Curve.<init>(org.bouncycastle.asn1.x9.X9FieldID, org.bouncycastle.asn1.ASN1Sequence):void");
    }

    public X9Curve(ECCurve eCCurve) {
        this.fieldIdentifier = null;
        this.curve = eCCurve;
        this.seed = null;
        setFieldIdentifier();
    }

    public X9Curve(ECCurve eCCurve, byte[] bArr) {
        this.fieldIdentifier = null;
        this.curve = eCCurve;
        this.seed = bArr;
        setFieldIdentifier();
    }

    private void setFieldIdentifier() {
        ASN1ObjectIdentifier aSN1ObjectIdentifier;
        ECCurve eCCurve = this.curve;
        if (eCCurve instanceof ECCurve.C1607Fp) {
            aSN1ObjectIdentifier = X9ObjectIdentifiers.prime_field;
        } else if (!(eCCurve instanceof ECCurve.F2m)) {
            throw new IllegalArgumentException("This type of ECCurve is not implemented");
        } else {
            aSN1ObjectIdentifier = X9ObjectIdentifiers.characteristic_two_field;
        }
        this.fieldIdentifier = aSN1ObjectIdentifier;
    }

    public ECCurve getCurve() {
        return this.curve;
    }

    public byte[] getSeed() {
        return this.seed;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x007f  */
    @Override // org.bouncycastle.asn1.ASN1Encodable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.bouncycastle.asn1.DERObject toASN1Object() {
        /*
            r5 = this;
            org.bouncycastle.asn1.ASN1EncodableVector r0 = new org.bouncycastle.asn1.ASN1EncodableVector
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r5
            org.bouncycastle.asn1.DERObjectIdentifier r0 = r0.fieldIdentifier
            org.bouncycastle.asn1.ASN1ObjectIdentifier r1 = org.bouncycastle.asn1.p009x9.X9ObjectIdentifiers.prime_field
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L44
            r0 = r6
            org.bouncycastle.asn1.x9.X9FieldElement r1 = new org.bouncycastle.asn1.x9.X9FieldElement
            r2 = r1
            r3 = r5
            org.bouncycastle.math.ec.ECCurve r3 = r3.curve
            org.bouncycastle.math.ec.ECFieldElement r3 = r3.getA()
            r2.<init>(r3)
            org.bouncycastle.asn1.DERObject r1 = r1.getDERObject()
            r0.add(r1)
            org.bouncycastle.asn1.x9.X9FieldElement r0 = new org.bouncycastle.asn1.x9.X9FieldElement
            r1 = r0
            r2 = r5
            org.bouncycastle.math.ec.ECCurve r2 = r2.curve
            org.bouncycastle.math.ec.ECFieldElement r2 = r2.getB()
            r1.<init>(r2)
            r7 = r0
        L39:
            r0 = r6
            r1 = r7
            org.bouncycastle.asn1.DERObject r1 = r1.getDERObject()
            r0.add(r1)
            goto L78
        L44:
            r0 = r5
            org.bouncycastle.asn1.DERObjectIdentifier r0 = r0.fieldIdentifier
            org.bouncycastle.asn1.ASN1ObjectIdentifier r1 = org.bouncycastle.asn1.p009x9.X9ObjectIdentifiers.characteristic_two_field
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L78
            r0 = r6
            org.bouncycastle.asn1.x9.X9FieldElement r1 = new org.bouncycastle.asn1.x9.X9FieldElement
            r2 = r1
            r3 = r5
            org.bouncycastle.math.ec.ECCurve r3 = r3.curve
            org.bouncycastle.math.ec.ECFieldElement r3 = r3.getA()
            r2.<init>(r3)
            org.bouncycastle.asn1.DERObject r1 = r1.getDERObject()
            r0.add(r1)
            org.bouncycastle.asn1.x9.X9FieldElement r0 = new org.bouncycastle.asn1.x9.X9FieldElement
            r1 = r0
            r2 = r5
            org.bouncycastle.math.ec.ECCurve r2 = r2.curve
            org.bouncycastle.math.ec.ECFieldElement r2 = r2.getB()
            r1.<init>(r2)
            r7 = r0
            goto L39
        L78:
            r0 = r5
            byte[] r0 = r0.seed
            if (r0 == 0) goto L8e
            r0 = r6
            org.bouncycastle.asn1.DERBitString r1 = new org.bouncycastle.asn1.DERBitString
            r2 = r1
            r3 = r5
            byte[] r3 = r3.seed
            r2.<init>(r3)
            r0.add(r1)
        L8e:
            org.bouncycastle.asn1.DERSequence r0 = new org.bouncycastle.asn1.DERSequence
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.p009x9.X9Curve.toASN1Object():org.bouncycastle.asn1.DERObject");
    }
}
