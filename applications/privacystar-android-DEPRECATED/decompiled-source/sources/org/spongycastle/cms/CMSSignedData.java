package org.spongycastle.cms;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.BERSequence;
import org.spongycastle.asn1.DERSet;
import org.spongycastle.asn1.cms.ContentInfo;
import org.spongycastle.asn1.cms.SignedData;
import org.spongycastle.asn1.cms.SignerInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.operator.OperatorCreationException;
import org.spongycastle.util.Encodable;
import org.spongycastle.util.Store;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/CMSSignedData.class */
public class CMSSignedData implements Encodable {
    private static final CMSSignedHelper HELPER = CMSSignedHelper.INSTANCE;
    ContentInfo contentInfo;
    private Map hashes;
    CMSTypedData signedContent;
    SignedData signedData;
    SignerInformationStore signerInfoStore;

    public CMSSignedData(InputStream inputStream) throws CMSException {
        this(CMSUtils.readContentInfo(inputStream));
    }

    public CMSSignedData(Map map, ContentInfo contentInfo) throws CMSException {
        this.hashes = map;
        this.contentInfo = contentInfo;
        this.signedData = getSignedData();
    }

    public CMSSignedData(Map map, byte[] bArr) throws CMSException {
        this(map, CMSUtils.readContentInfo(bArr));
    }

    public CMSSignedData(ContentInfo contentInfo) throws CMSException {
        this.contentInfo = contentInfo;
        this.signedData = getSignedData();
        ASN1Encodable content = this.signedData.getEncapContentInfo().getContent();
        if (content == null) {
            this.signedContent = null;
        } else if (content instanceof ASN1OctetString) {
            this.signedContent = new CMSProcessableByteArray(this.signedData.getEncapContentInfo().getContentType(), ((ASN1OctetString) content).getOctets());
        } else {
            this.signedContent = new PKCS7ProcessableObject(this.signedData.getEncapContentInfo().getContentType(), content);
        }
    }

    public CMSSignedData(CMSProcessable cMSProcessable, InputStream inputStream) throws CMSException {
        this(cMSProcessable, CMSUtils.readContentInfo((InputStream) new ASN1InputStream(inputStream)));
    }

    public CMSSignedData(final CMSProcessable cMSProcessable, ContentInfo contentInfo) throws CMSException {
        if (cMSProcessable instanceof CMSTypedData) {
            this.signedContent = (CMSTypedData) cMSProcessable;
        } else {
            this.signedContent = new CMSTypedData() { // from class: org.spongycastle.cms.CMSSignedData.1
                @Override // org.spongycastle.cms.CMSProcessable
                public Object getContent() {
                    return cMSProcessable.getContent();
                }

                @Override // org.spongycastle.cms.CMSTypedData
                public ASN1ObjectIdentifier getContentType() {
                    return CMSSignedData.this.signedData.getEncapContentInfo().getContentType();
                }

                @Override // org.spongycastle.cms.CMSProcessable
                public void write(OutputStream outputStream) throws IOException, CMSException {
                    cMSProcessable.write(outputStream);
                }
            };
        }
        this.contentInfo = contentInfo;
        this.signedData = getSignedData();
    }

    public CMSSignedData(CMSProcessable cMSProcessable, byte[] bArr) throws CMSException {
        this(cMSProcessable, CMSUtils.readContentInfo(bArr));
    }

    private CMSSignedData(CMSSignedData cMSSignedData) {
        this.signedData = cMSSignedData.signedData;
        this.contentInfo = cMSSignedData.contentInfo;
        this.signedContent = cMSSignedData.signedContent;
        this.signerInfoStore = cMSSignedData.signerInfoStore;
    }

    public CMSSignedData(byte[] bArr) throws CMSException {
        this(CMSUtils.readContentInfo(bArr));
    }

    private SignedData getSignedData() throws CMSException {
        try {
            return SignedData.getInstance(this.contentInfo.getContent());
        } catch (ClassCastException e) {
            throw new CMSException("Malformed content.", e);
        } catch (IllegalArgumentException e2) {
            throw new CMSException("Malformed content.", e2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0045, code lost:
        if (r10.size() != 0) goto L_0x004d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005d, code lost:
        if (r11.size() != 0) goto L_0x0065;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.spongycastle.cms.CMSSignedData replaceCertificatesAndCRLs(org.spongycastle.cms.CMSSignedData r9, org.spongycastle.util.Store r10, org.spongycastle.util.Store r11, org.spongycastle.util.Store r12) throws org.spongycastle.cms.CMSException {
        /*
            org.spongycastle.cms.CMSSignedData r0 = new org.spongycastle.cms.CMSSignedData
            r1 = r0
            r2 = r9
            r1.<init>(r2)
            r13 = r0
            r0 = r10
            if (r0 != 0) goto L_0x0012
            r0 = r11
            if (r0 == 0) goto L_0x004b
        L_0x0012:
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r14 = r0
            r0 = r10
            if (r0 == 0) goto L_0x002b
            r0 = r14
            r1 = r10
            java.util.List r1 = org.spongycastle.cms.CMSUtils.getCertificatesFromStore(r1)
            boolean r0 = r0.addAll(r1)
        L_0x002b:
            r0 = r11
            if (r0 == 0) goto L_0x003b
            r0 = r14
            r1 = r11
            java.util.List r1 = org.spongycastle.cms.CMSUtils.getAttributeCertificatesFromStore(r1)
            boolean r0 = r0.addAll(r1)
        L_0x003b:
            r0 = r14
            org.spongycastle.asn1.ASN1Set r0 = org.spongycastle.cms.CMSUtils.createBerSetFromList(r0)
            r10 = r0
            r0 = r10
            int r0 = r0.size()
            if (r0 == 0) goto L_0x004b
            goto L_0x004d
        L_0x004b:
            r0 = 0
            r10 = r0
        L_0x004d:
            r0 = r12
            if (r0 == 0) goto L_0x0063
            r0 = r12
            java.util.List r0 = org.spongycastle.cms.CMSUtils.getCRLsFromStore(r0)
            org.spongycastle.asn1.ASN1Set r0 = org.spongycastle.cms.CMSUtils.createBerSetFromList(r0)
            r11 = r0
            r0 = r11
            int r0 = r0.size()
            if (r0 == 0) goto L_0x0063
            goto L_0x0065
        L_0x0063:
            r0 = 0
            r11 = r0
        L_0x0065:
            r0 = r13
            org.spongycastle.asn1.cms.SignedData r1 = new org.spongycastle.asn1.cms.SignedData
            r2 = r1
            r3 = r9
            org.spongycastle.asn1.cms.SignedData r3 = r3.signedData
            org.spongycastle.asn1.ASN1Set r3 = r3.getDigestAlgorithms()
            r4 = r9
            org.spongycastle.asn1.cms.SignedData r4 = r4.signedData
            org.spongycastle.asn1.cms.ContentInfo r4 = r4.getEncapContentInfo()
            r5 = r10
            r6 = r11
            r7 = r9
            org.spongycastle.asn1.cms.SignedData r7 = r7.signedData
            org.spongycastle.asn1.ASN1Set r7 = r7.getSignerInfos()
            r2.<init>(r3, r4, r5, r6, r7)
            r0.signedData = r1
            r0 = r13
            org.spongycastle.asn1.cms.ContentInfo r1 = new org.spongycastle.asn1.cms.ContentInfo
            r2 = r1
            r3 = r13
            org.spongycastle.asn1.cms.ContentInfo r3 = r3.contentInfo
            org.spongycastle.asn1.ASN1ObjectIdentifier r3 = r3.getContentType()
            r4 = r13
            org.spongycastle.asn1.cms.SignedData r4 = r4.signedData
            r2.<init>(r3, r4)
            r0.contentInfo = r1
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.cms.CMSSignedData.replaceCertificatesAndCRLs(org.spongycastle.cms.CMSSignedData, org.spongycastle.util.Store, org.spongycastle.util.Store, org.spongycastle.util.Store):org.spongycastle.cms.CMSSignedData");
    }

    public static CMSSignedData replaceSigners(CMSSignedData cMSSignedData, SignerInformationStore signerInformationStore) {
        CMSSignedData cMSSignedData2 = new CMSSignedData(cMSSignedData);
        cMSSignedData2.signerInfoStore = signerInformationStore;
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        for (SignerInformation signerInformation : signerInformationStore.getSigners()) {
            aSN1EncodableVector.add(CMSSignedHelper.INSTANCE.fixAlgID(signerInformation.getDigestAlgorithmID()));
            aSN1EncodableVector2.add(signerInformation.toASN1Structure());
        }
        DERSet dERSet = new DERSet(aSN1EncodableVector);
        DERSet dERSet2 = new DERSet(aSN1EncodableVector2);
        ASN1Sequence aSN1Sequence = (ASN1Sequence) cMSSignedData.signedData.toASN1Primitive();
        ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
        aSN1EncodableVector3.add(aSN1Sequence.getObjectAt(0));
        aSN1EncodableVector3.add(dERSet);
        for (int i = 2; i != aSN1Sequence.size() - 1; i++) {
            aSN1EncodableVector3.add(aSN1Sequence.getObjectAt(i));
        }
        aSN1EncodableVector3.add(dERSet2);
        cMSSignedData2.signedData = SignedData.getInstance(new BERSequence(aSN1EncodableVector3));
        cMSSignedData2.contentInfo = new ContentInfo(cMSSignedData2.contentInfo.getContentType(), cMSSignedData2.signedData);
        return cMSSignedData2;
    }

    private boolean verifyCounterSignature(SignerInformation signerInformation, SignerInformationVerifierProvider signerInformationVerifierProvider) throws OperatorCreationException, CMSException {
        if (!signerInformation.verify(signerInformationVerifierProvider.get(signerInformation.getSID()))) {
            return false;
        }
        for (SignerInformation signerInformation2 : signerInformation.getCounterSignatures().getSigners()) {
            if (!verifyCounterSignature(signerInformation2, signerInformationVerifierProvider)) {
                return false;
            }
        }
        return true;
    }

    public Store getAttributeCertificates() {
        return HELPER.getAttributeCertificates(this.signedData.getCertificates());
    }

    public Store getCRLs() {
        return HELPER.getCRLs(this.signedData.getCRLs());
    }

    public Store getCertificates() {
        return HELPER.getCertificates(this.signedData.getCertificates());
    }

    public Set<AlgorithmIdentifier> getDigestAlgorithmIDs() {
        HashSet hashSet = new HashSet(this.signedData.getDigestAlgorithms().size());
        Enumeration objects = this.signedData.getDigestAlgorithms().getObjects();
        while (objects.hasMoreElements()) {
            hashSet.add(AlgorithmIdentifier.getInstance(objects.nextElement()));
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @Override // org.spongycastle.util.Encodable
    public byte[] getEncoded() throws IOException {
        return this.contentInfo.getEncoded();
    }

    public Store getOtherRevocationInfo(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return HELPER.getOtherRevocationInfo(aSN1ObjectIdentifier, this.signedData.getCRLs());
    }

    public CMSTypedData getSignedContent() {
        return this.signedContent;
    }

    public String getSignedContentTypeOID() {
        return this.signedData.getEncapContentInfo().getContentType().getId();
    }

    public SignerInformationStore getSignerInfos() {
        Map map;
        Object algorithm;
        if (this.signerInfoStore == null) {
            ASN1Set signerInfos = this.signedData.getSignerInfos();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i != signerInfos.size(); i++) {
                SignerInfo instance = SignerInfo.getInstance(signerInfos.getObjectAt(i));
                ASN1ObjectIdentifier contentType = this.signedData.getEncapContentInfo().getContentType();
                if (this.hashes == null) {
                    arrayList.add(new SignerInformation(instance, contentType, this.signedContent, null));
                } else {
                    if (this.hashes.keySet().iterator().next() instanceof String) {
                        map = this.hashes;
                        algorithm = instance.getDigestAlgorithm().getAlgorithm().getId();
                    } else {
                        map = this.hashes;
                        algorithm = instance.getDigestAlgorithm().getAlgorithm();
                    }
                    arrayList.add(new SignerInformation(instance, contentType, null, (byte[]) map.get(algorithm)));
                }
            }
            this.signerInfoStore = new SignerInformationStore(arrayList);
        }
        return this.signerInfoStore;
    }

    public int getVersion() {
        return this.signedData.getVersion().getValue().intValue();
    }

    public boolean isCertificateManagementMessage() {
        return this.signedData.getEncapContentInfo().getContent() == null && this.signedData.getSignerInfos().size() == 0;
    }

    public boolean isDetachedSignature() {
        return this.signedData.getEncapContentInfo().getContent() == null && this.signedData.getSignerInfos().size() > 0;
    }

    public ContentInfo toASN1Structure() {
        return this.contentInfo;
    }

    public boolean verifySignatures(SignerInformationVerifierProvider signerInformationVerifierProvider) throws CMSException {
        return verifySignatures(signerInformationVerifierProvider, false);
    }

    public boolean verifySignatures(SignerInformationVerifierProvider signerInformationVerifierProvider, boolean z) throws CMSException {
        for (SignerInformation signerInformation : getSignerInfos().getSigners()) {
            try {
                if (!signerInformation.verify(signerInformationVerifierProvider.get(signerInformation.getSID()))) {
                    return false;
                }
                if (!z) {
                    for (SignerInformation signerInformation2 : signerInformation.getCounterSignatures().getSigners()) {
                        if (!verifyCounterSignature(signerInformation2, signerInformationVerifierProvider)) {
                            return false;
                        }
                    }
                    continue;
                }
            } catch (OperatorCreationException e) {
                throw new CMSException("failure in verifier provider: " + e.getMessage(), e);
            }
        }
        return true;
    }
}
