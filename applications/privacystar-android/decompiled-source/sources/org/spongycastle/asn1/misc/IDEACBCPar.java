package org.spongycastle.asn1.misc;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.util.Arrays;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/misc/IDEACBCPar.class */
public class IDEACBCPar extends ASN1Object {

    /* renamed from: iv */
    ASN1OctetString f897iv;

    public IDEACBCPar(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() == 1) {
            this.f897iv = (ASN1OctetString) aSN1Sequence.getObjectAt(0);
        } else {
            this.f897iv = null;
        }
    }

    public IDEACBCPar(byte[] bArr) {
        this.f897iv = new DEROctetString(bArr);
    }

    public static IDEACBCPar getInstance(Object obj) {
        if (obj instanceof IDEACBCPar) {
            return (IDEACBCPar) obj;
        }
        if (obj != null) {
            return new IDEACBCPar(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public byte[] getIV() {
        if (this.f897iv != null) {
            return Arrays.clone(this.f897iv.getOctets());
        }
        return null;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.f897iv != null) {
            aSN1EncodableVector.add(this.f897iv);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
