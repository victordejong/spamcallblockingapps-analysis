package org.spongycastle.pqc.asn1;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/asn1/XMSSPublicKey.class */
public class XMSSPublicKey extends ASN1Object {
    private final byte[] publicSeed;
    private final byte[] root;

    private XMSSPublicKey(ASN1Sequence aSN1Sequence) {
        if (!ASN1Integer.getInstance(aSN1Sequence.getObjectAt(0)).getValue().equals(BigInteger.valueOf(0L))) {
            throw new IllegalArgumentException("unknown version of sequence");
        }
        this.publicSeed = Arrays.clone(DEROctetString.getInstance(aSN1Sequence.getObjectAt(1)).getOctets());
        this.root = Arrays.clone(DEROctetString.getInstance(aSN1Sequence.getObjectAt(2)).getOctets());
    }

    public XMSSPublicKey(byte[] bArr, byte[] bArr2) {
        this.publicSeed = Arrays.clone(bArr);
        this.root = Arrays.clone(bArr2);
    }

    public static XMSSPublicKey getInstance(Object obj) {
        if (obj instanceof XMSSPublicKey) {
            return (XMSSPublicKey) obj;
        }
        if (obj != null) {
            return new XMSSPublicKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public byte[] getPublicSeed() {
        return Arrays.clone(this.publicSeed);
    }

    public byte[] getRoot() {
        return Arrays.clone(this.root);
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(0L));
        aSN1EncodableVector.add(new DEROctetString(this.publicSeed));
        aSN1EncodableVector.add(new DEROctetString(this.root));
        return new DERSequence(aSN1EncodableVector);
    }
}
