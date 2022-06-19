package org.bouncycastle.asn1.pkcs;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/pkcs/PKCS12PBEParams.class */
public class PKCS12PBEParams extends ASN1Encodable {
    public DERInteger iterations;

    /* renamed from: iv */
    public ASN1OctetString f7243iv;

    public PKCS12PBEParams(ASN1Sequence aSN1Sequence) {
        this.f7243iv = (ASN1OctetString) aSN1Sequence.getObjectAt(0);
        this.iterations = (DERInteger) aSN1Sequence.getObjectAt(1);
    }

    public PKCS12PBEParams(byte[] bArr, int i) {
        this.f7243iv = new DEROctetString(bArr);
        this.iterations = new DERInteger(i);
    }

    public static PKCS12PBEParams getInstance(Object obj) {
        if (obj instanceof PKCS12PBEParams) {
            return (PKCS12PBEParams) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new PKCS12PBEParams((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    public byte[] getIV() {
        return this.f7243iv.getOctets();
    }

    public BigInteger getIterations() {
        return this.iterations.getValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.f7243iv);
        aSN1EncodableVector.add(this.iterations);
        return new DERSequence(aSN1EncodableVector);
    }
}
