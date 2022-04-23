package org.spongycastle.crypto.util;

import java.io.IOException;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/util/DEROtherInfo.class */
public class DEROtherInfo {
    private final DERSequence sequence;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/util/DEROtherInfo$Builder.class */
    public static final class Builder {
        private final AlgorithmIdentifier algorithmID;
        private final ASN1OctetString partyUVInfo;
        private final ASN1OctetString partyVInfo;
        private ASN1TaggedObject suppPrivInfo;
        private ASN1TaggedObject suppPubInfo;

        public Builder(AlgorithmIdentifier algorithmIdentifier, byte[] bArr, byte[] bArr2) {
            this.algorithmID = algorithmIdentifier;
            this.partyUVInfo = DerUtil.getOctetString(bArr);
            this.partyVInfo = DerUtil.getOctetString(bArr2);
        }

        public DEROtherInfo build() {
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            aSN1EncodableVector.add(this.algorithmID);
            aSN1EncodableVector.add(this.partyUVInfo);
            aSN1EncodableVector.add(this.partyVInfo);
            if (this.suppPubInfo != null) {
                aSN1EncodableVector.add(this.suppPubInfo);
            }
            if (this.suppPrivInfo != null) {
                aSN1EncodableVector.add(this.suppPrivInfo);
            }
            return new DEROtherInfo(new DERSequence(aSN1EncodableVector));
        }

        public Builder withSuppPrivInfo(byte[] bArr) {
            this.suppPrivInfo = new DERTaggedObject(false, 1, DerUtil.getOctetString(bArr));
            return this;
        }

        public Builder withSuppPubInfo(byte[] bArr) {
            this.suppPubInfo = new DERTaggedObject(false, 0, DerUtil.getOctetString(bArr));
            return this;
        }
    }

    private DEROtherInfo(DERSequence dERSequence) {
        this.sequence = dERSequence;
    }

    public byte[] getEncoded() throws IOException {
        return this.sequence.getEncoded();
    }
}
