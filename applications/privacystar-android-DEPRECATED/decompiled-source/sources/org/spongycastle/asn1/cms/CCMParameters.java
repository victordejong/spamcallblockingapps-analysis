package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.util.Arrays;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cms/CCMParameters.class */
public class CCMParameters extends ASN1Object {
    private int icvLen;
    private byte[] nonce;

    private CCMParameters(ASN1Sequence aSN1Sequence) {
        this.nonce = ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(0)).getOctets();
        if (aSN1Sequence.size() == 2) {
            this.icvLen = ASN1Integer.getInstance(aSN1Sequence.getObjectAt(1)).getValue().intValue();
        } else {
            this.icvLen = 12;
        }
    }

    public CCMParameters(byte[] bArr, int i) {
        this.nonce = Arrays.clone(bArr);
        this.icvLen = i;
    }

    public static CCMParameters getInstance(Object obj) {
        if (obj instanceof CCMParameters) {
            return (CCMParameters) obj;
        }
        if (obj != null) {
            return new CCMParameters(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public int getIcvLen() {
        return this.icvLen;
    }

    public byte[] getNonce() {
        return Arrays.clone(this.nonce);
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new DEROctetString(this.nonce));
        if (this.icvLen != 12) {
            aSN1EncodableVector.add(new ASN1Integer(this.icvLen));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
