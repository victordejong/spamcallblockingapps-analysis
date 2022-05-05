package org.spongycastle.cms;

import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/KeyAgreeRecipient.class */
public interface KeyAgreeRecipient extends Recipient {
    AlgorithmIdentifier getPrivateKeyAlgorithmIdentifier();

    RecipientOperator getRecipientOperator(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2, SubjectPublicKeyInfo subjectPublicKeyInfo, ASN1OctetString aSN1OctetString, byte[] bArr) throws CMSException;
}
