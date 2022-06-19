package org.bouncycastle.asn1.pkcs;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/pkcs/RC2CBCParameter.class */
public class RC2CBCParameter extends ASN1Encodable {

    /* renamed from: iv */
    public ASN1OctetString f7244iv;
    public DERInteger version;

    public RC2CBCParameter(int i, byte[] bArr) {
        this.version = new DERInteger(i);
        this.f7244iv = new DEROctetString(bArr);
    }

    public RC2CBCParameter(ASN1Sequence aSN1Sequence) {
        DEREncodable dEREncodable;
        if (aSN1Sequence.size() == 1) {
            this.version = null;
            dEREncodable = aSN1Sequence.getObjectAt(0);
        } else {
            this.version = (DERInteger) aSN1Sequence.getObjectAt(0);
            dEREncodable = aSN1Sequence.getObjectAt(1);
        }
        this.f7244iv = (ASN1OctetString) dEREncodable;
    }

    public RC2CBCParameter(byte[] bArr) {
        this.version = null;
        this.f7244iv = new DEROctetString(bArr);
    }

    public static RC2CBCParameter getInstance(Object obj) {
        if (obj instanceof ASN1Sequence) {
            return new RC2CBCParameter((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("unknown object in RC2CBCParameter factory");
    }

    public byte[] getIV() {
        return this.f7244iv.getOctets();
    }

    public BigInteger getRC2ParameterVersion() {
        DERInteger dERInteger = this.version;
        if (dERInteger == null) {
            return null;
        }
        return dERInteger.getValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        DERInteger dERInteger = this.version;
        if (dERInteger != null) {
            aSN1EncodableVector.add(dERInteger);
        }
        aSN1EncodableVector.add(this.f7244iv);
        return new DERSequence(aSN1EncodableVector);
    }
}
