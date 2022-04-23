package org.spongycastle.asn1.cmc;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.util.Arrays;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cmc/PublishTrustAnchors.class */
public class PublishTrustAnchors extends ASN1Object {
    private final ASN1Sequence anchorHashes;
    private final AlgorithmIdentifier hashAlgorithm;
    private final ASN1Integer seqNumber;

    public PublishTrustAnchors(BigInteger bigInteger, AlgorithmIdentifier algorithmIdentifier, byte[][] bArr) {
        this.seqNumber = new ASN1Integer(bigInteger);
        this.hashAlgorithm = algorithmIdentifier;
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        for (int i = 0; i != bArr.length; i++) {
            aSN1EncodableVector.add(new DEROctetString(Arrays.clone(bArr[i])));
        }
        this.anchorHashes = new DERSequence(aSN1EncodableVector);
    }

    private PublishTrustAnchors(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.seqNumber = ASN1Integer.getInstance(aSN1Sequence.getObjectAt(0));
        this.hashAlgorithm = AlgorithmIdentifier.getInstance(aSN1Sequence.getObjectAt(1));
        this.anchorHashes = ASN1Sequence.getInstance(aSN1Sequence.getObjectAt(2));
    }

    public static PublishTrustAnchors getInstance(Object obj) {
        if (obj instanceof PublishTrustAnchors) {
            return (PublishTrustAnchors) obj;
        }
        if (obj != null) {
            return new PublishTrustAnchors(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[][] getAnchorHashes() {
        /*
            r5 = this;
            r0 = r5
            org.spongycastle.asn1.ASN1Sequence r0 = r0.anchorHashes
            int r0 = r0.size()
            byte[] r0 = new byte[r0]
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x000d:
            r0 = r7
            r1 = r6
            int r1 = r1.length
            if (r0 == r1) goto L_0x002d
            r0 = r6
            r1 = r7
            r2 = r5
            org.spongycastle.asn1.ASN1Sequence r2 = r2.anchorHashes
            r3 = r7
            org.spongycastle.asn1.ASN1Encodable r2 = r2.getObjectAt(r3)
            org.spongycastle.asn1.ASN1OctetString r2 = org.spongycastle.asn1.ASN1OctetString.getInstance(r2)
            byte[] r2 = r2.getOctets()
            byte[] r2 = org.spongycastle.util.Arrays.clone(r2)
            r0[r1] = r2
            int r7 = r7 + 1
            goto L_0x000d
        L_0x002d:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.asn1.cmc.PublishTrustAnchors.getAnchorHashes():byte[][]");
    }

    public AlgorithmIdentifier getHashAlgorithm() {
        return this.hashAlgorithm;
    }

    public BigInteger getSeqNumber() {
        return this.seqNumber.getValue();
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.seqNumber);
        aSN1EncodableVector.add(this.hashAlgorithm);
        aSN1EncodableVector.add(this.anchorHashes);
        return new DERSequence(aSN1EncodableVector);
    }
}
