package org.spongycastle.cms.jcajce;

import java.io.OutputStream;
import java.security.Key;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.cms.CMSException;
import org.spongycastle.cms.RecipientOperator;
import org.spongycastle.jcajce.p028io.MacOutputStream;
import org.spongycastle.operator.GenericKey;
import org.spongycastle.operator.MacCalculator;
import org.spongycastle.operator.jcajce.JceGenericKey;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/jcajce/JceKEKAuthenticatedRecipient.class */
public class JceKEKAuthenticatedRecipient extends JceKEKRecipient {
    public JceKEKAuthenticatedRecipient(SecretKey secretKey) {
        super(secretKey);
    }

    @Override // org.spongycastle.cms.KEKRecipient
    public RecipientOperator getRecipientOperator(AlgorithmIdentifier algorithmIdentifier, final AlgorithmIdentifier algorithmIdentifier2, byte[] bArr) throws CMSException {
        final Key extractSecretKey = extractSecretKey(algorithmIdentifier, algorithmIdentifier2, bArr);
        final Mac createContentMac = this.contentHelper.createContentMac(extractSecretKey, algorithmIdentifier2);
        return new RecipientOperator(new MacCalculator() { // from class: org.spongycastle.cms.jcajce.JceKEKAuthenticatedRecipient.1
            @Override // org.spongycastle.operator.MacCalculator
            public AlgorithmIdentifier getAlgorithmIdentifier() {
                return algorithmIdentifier2;
            }

            @Override // org.spongycastle.operator.MacCalculator
            public GenericKey getKey() {
                return new JceGenericKey(algorithmIdentifier2, extractSecretKey);
            }

            @Override // org.spongycastle.operator.MacCalculator
            public byte[] getMac() {
                return createContentMac.doFinal();
            }

            @Override // org.spongycastle.operator.MacCalculator
            public OutputStream getOutputStream() {
                return new MacOutputStream(createContentMac);
            }
        });
    }
}
