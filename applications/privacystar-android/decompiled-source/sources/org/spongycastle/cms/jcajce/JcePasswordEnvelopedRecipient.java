package org.spongycastle.cms.jcajce;

import java.io.InputStream;
import javax.crypto.Cipher;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.cms.CMSException;
import org.spongycastle.cms.RecipientOperator;
import org.spongycastle.jcajce.p028io.CipherInputStream;
import org.spongycastle.operator.InputDecryptor;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/jcajce/JcePasswordEnvelopedRecipient.class */
public class JcePasswordEnvelopedRecipient extends JcePasswordRecipient {
    public JcePasswordEnvelopedRecipient(char[] cArr) {
        super(cArr);
    }

    @Override // org.spongycastle.cms.PasswordRecipient
    public RecipientOperator getRecipientOperator(AlgorithmIdentifier algorithmIdentifier, final AlgorithmIdentifier algorithmIdentifier2, byte[] bArr, byte[] bArr2) throws CMSException {
        final Cipher createContentCipher = this.helper.createContentCipher(extractSecretKey(algorithmIdentifier, algorithmIdentifier2, bArr, bArr2), algorithmIdentifier2);
        return new RecipientOperator(new InputDecryptor() { // from class: org.spongycastle.cms.jcajce.JcePasswordEnvelopedRecipient.1
            @Override // org.spongycastle.operator.InputDecryptor
            public AlgorithmIdentifier getAlgorithmIdentifier() {
                return algorithmIdentifier2;
            }

            @Override // org.spongycastle.operator.InputDecryptor
            public InputStream getInputStream(InputStream inputStream) {
                return new CipherInputStream(inputStream, createContentCipher);
            }
        });
    }
}
