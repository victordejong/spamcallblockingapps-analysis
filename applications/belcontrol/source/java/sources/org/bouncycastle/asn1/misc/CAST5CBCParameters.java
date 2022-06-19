package org.bouncycastle.asn1.misc;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/misc/CAST5CBCParameters.class */
public class CAST5CBCParameters extends ASN1Encodable {

    /* renamed from: iv */
    public ASN1OctetString f7235iv;
    public DERInteger keyLength;

    public CAST5CBCParameters(ASN1Sequence aSN1Sequence) {
        this.f7235iv = (ASN1OctetString) aSN1Sequence.getObjectAt(0);
        this.keyLength = (DERInteger) aSN1Sequence.getObjectAt(1);
    }

    public CAST5CBCParameters(byte[] bArr, int i) {
        this.f7235iv = new DEROctetString(bArr);
        this.keyLength = new DERInteger(i);
    }

    public static CAST5CBCParameters getInstance(Object obj) {
        if (obj instanceof CAST5CBCParameters) {
            return (CAST5CBCParameters) obj;
        }
        if (!(obj instanceof ASN1Sequence)) {
            throw new IllegalArgumentException("unknown object in CAST5CBCParameter factory");
        }
        return new CAST5CBCParameters((ASN1Sequence) obj);
    }

    public byte[] getIV() {
        return this.f7235iv.getOctets();
    }

    public int getKeyLength() {
        return this.keyLength.getValue().intValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.f7235iv);
        aSN1EncodableVector.add(this.keyLength);
        return new DERSequence(aSN1EncodableVector);
    }
}
