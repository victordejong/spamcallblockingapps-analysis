package org.spongycastle.cms.p025bc;

import org.spongycastle.asn1.cms.KEKIdentifier;
import org.spongycastle.cms.KEKRecipientInfoGenerator;
import org.spongycastle.operator.p037bc.BcSymmetricKeyWrapper;
/* renamed from: org.spongycastle.cms.bc.BcKEKRecipientInfoGenerator */
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/bc/BcKEKRecipientInfoGenerator.class */
public class BcKEKRecipientInfoGenerator extends KEKRecipientInfoGenerator {
    public BcKEKRecipientInfoGenerator(KEKIdentifier kEKIdentifier, BcSymmetricKeyWrapper bcSymmetricKeyWrapper) {
        super(kEKIdentifier, bcSymmetricKeyWrapper);
    }

    public BcKEKRecipientInfoGenerator(byte[] bArr, BcSymmetricKeyWrapper bcSymmetricKeyWrapper) {
        this(new KEKIdentifier(bArr, null, null), bcSymmetricKeyWrapper);
    }
}
