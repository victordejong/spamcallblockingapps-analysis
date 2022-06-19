package org.bouncycastle.mozilla;

import java.io.ByteArrayInputStream;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.mozilla.PublicKeyAndChallenge;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/mozilla/SignedPublicKeyAndChallenge.class */
public class SignedPublicKeyAndChallenge extends ASN1Encodable {
    private PublicKeyAndChallenge pkac;
    private DERBitString signature;
    private AlgorithmIdentifier signatureAlgorithm;
    private ASN1Sequence spkacSeq;

    public SignedPublicKeyAndChallenge(byte[] bArr) {
        ASN1Sequence dERSequence = toDERSequence(bArr);
        this.spkacSeq = dERSequence;
        this.pkac = PublicKeyAndChallenge.getInstance(dERSequence.getObjectAt(0));
        this.signatureAlgorithm = AlgorithmIdentifier.getInstance(this.spkacSeq.getObjectAt(1));
        this.signature = (DERBitString) this.spkacSeq.getObjectAt(2);
    }

    private static ASN1Sequence toDERSequence(byte[] bArr) {
        try {
            return (ASN1Sequence) new ASN1InputStream(new ByteArrayInputStream(bArr)).readObject();
        } catch (Exception e) {
            throw new IllegalArgumentException("badly encoded request");
        }
    }

    public PublicKey getPublicKey(String str) {
        SubjectPublicKeyInfo subjectPublicKeyInfo = this.pkac.getSubjectPublicKeyInfo();
        try {
            return KeyFactory.getInstance(subjectPublicKeyInfo.getAlgorithmId().getObjectId().getId(), str).generatePublic(new X509EncodedKeySpec(new DERBitString(subjectPublicKeyInfo).getBytes()));
        } catch (InvalidKeySpecException e) {
            throw new InvalidKeyException("error encoding public key");
        }
    }

    public PublicKeyAndChallenge getPublicKeyAndChallenge() {
        return this.pkac;
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable
    public DERObject toASN1Object() {
        return this.spkacSeq;
    }

    public boolean verify() {
        return verify(null);
    }

    public boolean verify(String str) {
        String id = this.signatureAlgorithm.getObjectId().getId();
        Signature signature = str == null ? Signature.getInstance(id) : Signature.getInstance(id, str);
        signature.initVerify(getPublicKey(str));
        signature.update(new DERBitString(this.pkac).getBytes());
        return signature.verify(this.signature.getBytes());
    }
}
