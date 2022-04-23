package org.spongycastle.asn1.cmc;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.crmf.PKIPublicationInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.util.Arrays;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/cmc/CMCPublicationInfo.class */
public class CMCPublicationInfo extends ASN1Object {
    private final ASN1Sequence certHashes;
    private final AlgorithmIdentifier hashAlg;
    private final PKIPublicationInfo pubInfo;

    private CMCPublicationInfo(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.hashAlg = AlgorithmIdentifier.getInstance(aSN1Sequence.getObjectAt(0));
        this.certHashes = ASN1Sequence.getInstance(aSN1Sequence.getObjectAt(1));
        this.pubInfo = PKIPublicationInfo.getInstance(aSN1Sequence.getObjectAt(2));
    }

    public CMCPublicationInfo(AlgorithmIdentifier algorithmIdentifier, byte[][] bArr, PKIPublicationInfo pKIPublicationInfo) {
        this.hashAlg = algorithmIdentifier;
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        for (int i = 0; i != bArr.length; i++) {
            aSN1EncodableVector.add(new DEROctetString(Arrays.clone(bArr[i])));
        }
        this.certHashes = new DERSequence(aSN1EncodableVector);
        this.pubInfo = pKIPublicationInfo;
    }

    public static CMCPublicationInfo getInstance(Object obj) {
        if (obj instanceof CMCPublicationInfo) {
            return (CMCPublicationInfo) obj;
        }
        if (obj != null) {
            return new CMCPublicationInfo(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[][] getCertHashes() {
        /*
            r5 = this;
            r0 = r5
            org.spongycastle.asn1.ASN1Sequence r0 = r0.certHashes
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
            org.spongycastle.asn1.ASN1Sequence r2 = r2.certHashes
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
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.asn1.cmc.CMCPublicationInfo.getCertHashes():byte[][]");
    }

    public AlgorithmIdentifier getHashAlg() {
        return this.hashAlg;
    }

    public PKIPublicationInfo getPubInfo() {
        return this.pubInfo;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.hashAlg);
        aSN1EncodableVector.add(this.certHashes);
        aSN1EncodableVector.add(this.pubInfo);
        return new DERSequence(aSN1EncodableVector);
    }
}
