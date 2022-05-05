package org.spongycastle.cms;

import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/KEKRecipient.class */
public interface KEKRecipient extends Recipient {
    RecipientOperator getRecipientOperator(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2, byte[] bArr) throws CMSException;
}
