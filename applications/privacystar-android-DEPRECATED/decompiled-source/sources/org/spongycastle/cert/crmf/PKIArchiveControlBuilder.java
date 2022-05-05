package org.spongycastle.cert.crmf;

import java.io.IOException;
import org.spongycastle.asn1.cms.EnvelopedData;
import org.spongycastle.asn1.crmf.CRMFObjectIdentifiers;
import org.spongycastle.asn1.crmf.EncKeyWithID;
import org.spongycastle.asn1.crmf.EncryptedKey;
import org.spongycastle.asn1.crmf.PKIArchiveOptions;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.cms.CMSEnvelopedDataGenerator;
import org.spongycastle.cms.CMSException;
import org.spongycastle.cms.CMSProcessableByteArray;
import org.spongycastle.cms.RecipientInfoGenerator;
import org.spongycastle.operator.OutputEncryptor;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/crmf/PKIArchiveControlBuilder.class */
public class PKIArchiveControlBuilder {
    private CMSEnvelopedDataGenerator envGen;
    private CMSProcessableByteArray keyContent;

    public PKIArchiveControlBuilder(PrivateKeyInfo privateKeyInfo, GeneralName generalName) {
        try {
            this.keyContent = new CMSProcessableByteArray(CRMFObjectIdentifiers.id_ct_encKeyWithID, new EncKeyWithID(privateKeyInfo, generalName).getEncoded());
            this.envGen = new CMSEnvelopedDataGenerator();
        } catch (IOException e) {
            throw new IllegalStateException("unable to encode key and general name info");
        }
    }

    public PKIArchiveControlBuilder addRecipientGenerator(RecipientInfoGenerator recipientInfoGenerator) {
        this.envGen.addRecipientInfoGenerator(recipientInfoGenerator);
        return this;
    }

    public PKIArchiveControl build(OutputEncryptor outputEncryptor) throws CMSException {
        return new PKIArchiveControl(new PKIArchiveOptions(new EncryptedKey(EnvelopedData.getInstance(this.envGen.generate(this.keyContent, outputEncryptor).toASN1Structure().getContent()))));
    }
}
