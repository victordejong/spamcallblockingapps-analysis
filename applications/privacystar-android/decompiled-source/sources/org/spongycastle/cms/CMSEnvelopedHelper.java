package org.spongycastle.cms;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.cms.KEKRecipientInfo;
import org.spongycastle.asn1.cms.KeyAgreeRecipientInfo;
import org.spongycastle.asn1.cms.KeyTransRecipientInfo;
import org.spongycastle.asn1.cms.PasswordRecipientInfo;
import org.spongycastle.asn1.cms.RecipientInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.operator.DigestCalculator;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/CMSEnvelopedHelper.class */
class CMSEnvelopedHelper {

    /* loaded from: classes-dex2jar.jar:org/spongycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable.class */
    static class CMSAuthenticatedSecureReadable implements CMSSecureReadable {
        private AlgorithmIdentifier algorithm;
        private CMSReadable readable;

        /* JADX INFO: Access modifiers changed from: package-private */
        public CMSAuthenticatedSecureReadable(AlgorithmIdentifier algorithmIdentifier, CMSReadable cMSReadable) {
            this.algorithm = algorithmIdentifier;
            this.readable = cMSReadable;
        }

        @Override // org.spongycastle.cms.CMSSecureReadable
        public InputStream getInputStream() throws IOException, CMSException {
            return this.readable.getInputStream();
        }
    }

    /* loaded from: classes-dex2jar.jar:org/spongycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable.class */
    static class CMSDigestAuthenticatedSecureReadable implements CMSSecureReadable {
        private DigestCalculator digestCalculator;
        private CMSReadable readable;

        public CMSDigestAuthenticatedSecureReadable(DigestCalculator digestCalculator, CMSReadable cMSReadable) {
            this.digestCalculator = digestCalculator;
            this.readable = cMSReadable;
        }

        public byte[] getDigest() {
            return this.digestCalculator.getDigest();
        }

        @Override // org.spongycastle.cms.CMSSecureReadable
        public InputStream getInputStream() throws IOException, CMSException {
            return new FilterInputStream(this.readable.getInputStream()) { // from class: org.spongycastle.cms.CMSEnvelopedHelper.CMSDigestAuthenticatedSecureReadable.1
                @Override // java.io.FilterInputStream, java.io.InputStream
                public int read() throws IOException {
                    int read = this.in.read();
                    if (read >= 0) {
                        CMSDigestAuthenticatedSecureReadable.this.digestCalculator.getOutputStream().write(read);
                    }
                    return read;
                }

                @Override // java.io.FilterInputStream, java.io.InputStream
                public int read(byte[] bArr, int i, int i2) throws IOException {
                    int read = this.in.read(bArr, i, i2);
                    if (read >= 0) {
                        CMSDigestAuthenticatedSecureReadable.this.digestCalculator.getOutputStream().write(bArr, i, read);
                    }
                    return read;
                }
            };
        }
    }

    /* loaded from: classes-dex2jar.jar:org/spongycastle/cms/CMSEnvelopedHelper$CMSEnvelopedSecureReadable.class */
    static class CMSEnvelopedSecureReadable implements CMSSecureReadable {
        private AlgorithmIdentifier algorithm;
        private CMSReadable readable;

        /* JADX INFO: Access modifiers changed from: package-private */
        public CMSEnvelopedSecureReadable(AlgorithmIdentifier algorithmIdentifier, CMSReadable cMSReadable) {
            this.algorithm = algorithmIdentifier;
            this.readable = cMSReadable;
        }

        @Override // org.spongycastle.cms.CMSSecureReadable
        public InputStream getInputStream() throws IOException, CMSException {
            return this.readable.getInputStream();
        }
    }

    CMSEnvelopedHelper() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RecipientInformationStore buildRecipientInformationStore(ASN1Set aSN1Set, AlgorithmIdentifier algorithmIdentifier, CMSSecureReadable cMSSecureReadable) {
        return buildRecipientInformationStore(aSN1Set, algorithmIdentifier, cMSSecureReadable, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RecipientInformationStore buildRecipientInformationStore(ASN1Set aSN1Set, AlgorithmIdentifier algorithmIdentifier, CMSSecureReadable cMSSecureReadable, AuthAttributesProvider authAttributesProvider) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i != aSN1Set.size(); i++) {
            readRecipientInfo(arrayList, RecipientInfo.getInstance(aSN1Set.getObjectAt(i)), algorithmIdentifier, cMSSecureReadable, authAttributesProvider);
        }
        return new RecipientInformationStore(arrayList);
    }

    private static void readRecipientInfo(List list, RecipientInfo recipientInfo, AlgorithmIdentifier algorithmIdentifier, CMSSecureReadable cMSSecureReadable, AuthAttributesProvider authAttributesProvider) {
        ASN1Encodable info = recipientInfo.getInfo();
        if (info instanceof KeyTransRecipientInfo) {
            list.add(new KeyTransRecipientInformation((KeyTransRecipientInfo) info, algorithmIdentifier, cMSSecureReadable, authAttributesProvider));
        } else if (info instanceof KEKRecipientInfo) {
            list.add(new KEKRecipientInformation((KEKRecipientInfo) info, algorithmIdentifier, cMSSecureReadable, authAttributesProvider));
        } else if (info instanceof KeyAgreeRecipientInfo) {
            KeyAgreeRecipientInformation.readRecipientInfo(list, (KeyAgreeRecipientInfo) info, algorithmIdentifier, cMSSecureReadable, authAttributesProvider);
        } else if (info instanceof PasswordRecipientInfo) {
            list.add(new PasswordRecipientInformation((PasswordRecipientInfo) info, algorithmIdentifier, cMSSecureReadable, authAttributesProvider));
        }
    }
}
