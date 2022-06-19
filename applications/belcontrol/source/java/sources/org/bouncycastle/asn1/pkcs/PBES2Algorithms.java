package org.bouncycastle.asn1.pkcs;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/pkcs/PBES2Algorithms.class */
public class PBES2Algorithms extends AlgorithmIdentifier implements PKCSObjectIdentifiers {
    private KeyDerivationFunc func;
    private DERObjectIdentifier objectId;
    private EncryptionScheme scheme;

    public PBES2Algorithms(ASN1Sequence aSN1Sequence) {
        super(aSN1Sequence);
        Enumeration objects = aSN1Sequence.getObjects();
        this.objectId = (DERObjectIdentifier) objects.nextElement();
        Enumeration objects2 = ((ASN1Sequence) objects.nextElement()).getObjects();
        ASN1Sequence aSN1Sequence2 = (ASN1Sequence) objects2.nextElement();
        DEREncodable objectAt = aSN1Sequence2.getObjectAt(0);
        ASN1ObjectIdentifier aSN1ObjectIdentifier = PKCSObjectIdentifiers.id_PBKDF2;
        this.func = objectAt.equals(aSN1ObjectIdentifier) ? new KeyDerivationFunc(aSN1ObjectIdentifier, PBKDF2Params.getInstance(aSN1Sequence2.getObjectAt(1))) : new KeyDerivationFunc(aSN1Sequence2);
        this.scheme = new EncryptionScheme((ASN1Sequence) objects2.nextElement());
    }

    @Override // org.bouncycastle.asn1.ASN1Encodable, org.bouncycastle.asn1.DEREncodable
    public DERObject getDERObject() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        aSN1EncodableVector.add(this.objectId);
        aSN1EncodableVector2.add(this.func);
        aSN1EncodableVector2.add(this.scheme);
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
        return new DERSequence(aSN1EncodableVector);
    }

    public EncryptionScheme getEncryptionScheme() {
        return this.scheme;
    }

    public KeyDerivationFunc getKeyDerivationFunc() {
        return this.func;
    }

    @Override // org.bouncycastle.asn1.x509.AlgorithmIdentifier
    public DERObjectIdentifier getObjectId() {
        return this.objectId;
    }
}
