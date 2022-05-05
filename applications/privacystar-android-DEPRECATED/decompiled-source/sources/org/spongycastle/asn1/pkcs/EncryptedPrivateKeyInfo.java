package org.spongycastle.asn1.pkcs;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo.class */
public class EncryptedPrivateKeyInfo extends ASN1Object {
    private AlgorithmIdentifier algId;
    private ASN1OctetString data;

    private EncryptedPrivateKeyInfo(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.algId = AlgorithmIdentifier.getInstance(objects.nextElement());
        this.data = ASN1OctetString.getInstance(objects.nextElement());
    }

    public EncryptedPrivateKeyInfo(AlgorithmIdentifier algorithmIdentifier, byte[] bArr) {
        this.algId = algorithmIdentifier;
        this.data = new DEROctetString(bArr);
    }

    public static EncryptedPrivateKeyInfo getInstance(Object obj) {
        if (obj instanceof EncryptedPrivateKeyInfo) {
            return (EncryptedPrivateKeyInfo) obj;
        }
        if (obj != null) {
            return new EncryptedPrivateKeyInfo(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public byte[] getEncryptedData() {
        return this.data.getOctets();
    }

    public AlgorithmIdentifier getEncryptionAlgorithm() {
        return this.algId;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.algId);
        aSN1EncodableVector.add(this.data);
        return new DERSequence(aSN1EncodableVector);
    }
}
