package org.spongycastle.cms;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Encoding;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DERSet;
import org.spongycastle.asn1.cms.Attribute;
import org.spongycastle.asn1.cms.AttributeTable;
import org.spongycastle.asn1.cms.CMSAlgorithmProtection;
import org.spongycastle.asn1.cms.CMSAttributes;
import org.spongycastle.asn1.cms.IssuerAndSerialNumber;
import org.spongycastle.asn1.cms.SignerIdentifier;
import org.spongycastle.asn1.cms.SignerInfo;
import org.spongycastle.asn1.cms.Time;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.DigestInfo;
import org.spongycastle.operator.ContentVerifier;
import org.spongycastle.operator.DigestCalculator;
import org.spongycastle.operator.OperatorCreationException;
import org.spongycastle.operator.RawContentVerifier;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.p039io.TeeOutputStream;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/SignerInformation.class */
public class SignerInformation {
    private final CMSProcessable content;
    private final ASN1ObjectIdentifier contentType;
    protected final AlgorithmIdentifier digestAlgorithm;
    protected final AlgorithmIdentifier encryptionAlgorithm;
    protected final SignerInfo info;
    private final boolean isCounterSignature;
    private byte[] resultDigest;
    private final SignerId sid;
    private final byte[] signature;
    protected final ASN1Set signedAttributeSet;
    private AttributeTable signedAttributeValues;
    protected final ASN1Set unsignedAttributeSet;
    private AttributeTable unsignedAttributeValues;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SignerInformation(SignerInfo signerInfo, ASN1ObjectIdentifier aSN1ObjectIdentifier, CMSProcessable cMSProcessable, byte[] bArr) {
        this.info = signerInfo;
        this.contentType = aSN1ObjectIdentifier;
        this.isCounterSignature = aSN1ObjectIdentifier == null;
        SignerIdentifier sid = signerInfo.getSID();
        if (sid.isTagged()) {
            this.sid = new SignerId(ASN1OctetString.getInstance(sid.getId()).getOctets());
        } else {
            IssuerAndSerialNumber instance = IssuerAndSerialNumber.getInstance(sid.getId());
            this.sid = new SignerId(instance.getName(), instance.getSerialNumber().getValue());
        }
        this.digestAlgorithm = signerInfo.getDigestAlgorithm();
        this.signedAttributeSet = signerInfo.getAuthenticatedAttributes();
        this.unsignedAttributeSet = signerInfo.getUnauthenticatedAttributes();
        this.encryptionAlgorithm = signerInfo.getDigestEncryptionAlgorithm();
        this.signature = signerInfo.getEncryptedDigest().getOctets();
        this.content = cMSProcessable;
        this.resultDigest = bArr;
    }

    protected SignerInformation(SignerInformation signerInformation) {
        this.info = signerInformation.info;
        this.contentType = signerInformation.contentType;
        this.isCounterSignature = signerInformation.isCounterSignature();
        this.sid = signerInformation.getSID();
        this.digestAlgorithm = this.info.getDigestAlgorithm();
        this.signedAttributeSet = this.info.getAuthenticatedAttributes();
        this.unsignedAttributeSet = this.info.getUnauthenticatedAttributes();
        this.encryptionAlgorithm = this.info.getDigestEncryptionAlgorithm();
        this.signature = this.info.getEncryptedDigest().getOctets();
        this.content = signerInformation.content;
        this.resultDigest = signerInformation.resultDigest;
    }

    public static SignerInformation addCounterSigners(SignerInformation signerInformation, SignerInformationStore signerInformationStore) {
        SignerInfo signerInfo = signerInformation.info;
        AttributeTable unsignedAttributes = signerInformation.getUnsignedAttributes();
        ASN1EncodableVector aSN1EncodableVector = unsignedAttributes != null ? unsignedAttributes.toASN1EncodableVector() : new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        for (SignerInformation signerInformation2 : signerInformationStore.getSigners()) {
            aSN1EncodableVector2.add(signerInformation2.toASN1Structure());
        }
        aSN1EncodableVector.add(new Attribute(CMSAttributes.counterSignature, new DERSet(aSN1EncodableVector2)));
        return new SignerInformation(new SignerInfo(signerInfo.getSID(), signerInfo.getDigestAlgorithm(), signerInfo.getAuthenticatedAttributes(), signerInfo.getDigestEncryptionAlgorithm(), signerInfo.getEncryptedDigest(), new DERSet(aSN1EncodableVector)), signerInformation.contentType, signerInformation.content, null);
    }

    private boolean doVerify(SignerInformationVerifier signerInformationVerifier) throws CMSException {
        String encryptionAlgName = CMSSignedHelper.INSTANCE.getEncryptionAlgName(getEncryptionAlgOID());
        try {
            ContentVerifier contentVerifier = signerInformationVerifier.getContentVerifier(this.encryptionAlgorithm, this.info.getDigestAlgorithm());
            try {
                OutputStream outputStream = contentVerifier.getOutputStream();
                if (this.resultDigest == null) {
                    DigestCalculator digestCalculator = signerInformationVerifier.getDigestCalculator(getDigestAlgorithmID());
                    if (this.content != null) {
                        OutputStream outputStream2 = digestCalculator.getOutputStream();
                        if (this.signedAttributeSet != null) {
                            this.content.write(outputStream2);
                            outputStream.write(getEncodedSignedAttributes());
                        } else if (contentVerifier instanceof RawContentVerifier) {
                            this.content.write(outputStream2);
                        } else {
                            TeeOutputStream teeOutputStream = new TeeOutputStream(outputStream2, outputStream);
                            this.content.write(teeOutputStream);
                            teeOutputStream.close();
                        }
                        outputStream2.close();
                    } else if (this.signedAttributeSet != null) {
                        outputStream.write(getEncodedSignedAttributes());
                    } else {
                        throw new CMSException("data not encapsulated in signature - use detached constructor.");
                    }
                    this.resultDigest = digestCalculator.getDigest();
                } else if (this.signedAttributeSet != null) {
                    outputStream.write(getEncodedSignedAttributes());
                } else if (this.content != null) {
                    this.content.write(outputStream);
                }
                outputStream.close();
                ASN1Primitive singleValuedSignedAttribute = getSingleValuedSignedAttribute(CMSAttributes.contentType, "content-type");
                if (singleValuedSignedAttribute == null) {
                    if (!this.isCounterSignature && this.signedAttributeSet != null) {
                        throw new CMSException("The content-type attribute type MUST be present whenever signed attributes are present in signed-data");
                    }
                } else if (this.isCounterSignature) {
                    throw new CMSException("[For counter signatures,] the signedAttributes field MUST NOT contain a content-type attribute");
                } else if (!(singleValuedSignedAttribute instanceof ASN1ObjectIdentifier)) {
                    throw new CMSException("content-type attribute value not of ASN.1 type 'OBJECT IDENTIFIER'");
                } else if (!((ASN1ObjectIdentifier) singleValuedSignedAttribute).equals(this.contentType)) {
                    throw new CMSException("content-type attribute value does not match eContentType");
                }
                AttributeTable signedAttributes = getSignedAttributes();
                AttributeTable unsignedAttributes = getUnsignedAttributes();
                if (unsignedAttributes == null || unsignedAttributes.getAll(CMSAttributes.cmsAlgorithmProtect).size() <= 0) {
                    if (signedAttributes != null) {
                        ASN1EncodableVector all = signedAttributes.getAll(CMSAttributes.cmsAlgorithmProtect);
                        if (all.size() > 1) {
                            throw new CMSException("Only one instance of a cmsAlgorithmProtect attribute can be present");
                        } else if (all.size() > 0) {
                            Attribute instance = Attribute.getInstance(all.get(0));
                            if (instance.getAttrValues().size() != 1) {
                                throw new CMSException("A cmsAlgorithmProtect attribute MUST contain exactly one value");
                            }
                            CMSAlgorithmProtection instance2 = CMSAlgorithmProtection.getInstance(instance.getAttributeValues()[0]);
                            if (!CMSUtils.isEquivalent(instance2.getDigestAlgorithm(), this.info.getDigestAlgorithm())) {
                                throw new CMSException("CMS Algorithm Identifier Protection check failed for digestAlgorithm");
                            } else if (!CMSUtils.isEquivalent(instance2.getSignatureAlgorithm(), this.info.getDigestEncryptionAlgorithm())) {
                                throw new CMSException("CMS Algorithm Identifier Protection check failed for signatureAlgorithm");
                            }
                        }
                    }
                    ASN1Primitive singleValuedSignedAttribute2 = getSingleValuedSignedAttribute(CMSAttributes.messageDigest, "message-digest");
                    if (singleValuedSignedAttribute2 == null) {
                        if (this.signedAttributeSet != null) {
                            throw new CMSException("the message-digest signed attribute type MUST be present when there are any signed attributes present");
                        }
                    } else if (!(singleValuedSignedAttribute2 instanceof ASN1OctetString)) {
                        throw new CMSException("message-digest attribute value not of ASN.1 type 'OCTET STRING'");
                    } else if (!Arrays.constantTimeAreEqual(this.resultDigest, ((ASN1OctetString) singleValuedSignedAttribute2).getOctets())) {
                        throw new CMSSignerDigestMismatchException("message-digest attribute value does not match calculated value");
                    }
                    if (signedAttributes == null || signedAttributes.getAll(CMSAttributes.counterSignature).size() <= 0) {
                        AttributeTable unsignedAttributes2 = getUnsignedAttributes();
                        if (unsignedAttributes2 != null) {
                            ASN1EncodableVector all2 = unsignedAttributes2.getAll(CMSAttributes.counterSignature);
                            for (int i = 0; i < all2.size(); i++) {
                                if (Attribute.getInstance(all2.get(i)).getAttrValues().size() < 1) {
                                    throw new CMSException("A countersignature attribute MUST contain at least one AttributeValue");
                                }
                            }
                        }
                        try {
                            if (this.signedAttributeSet != null || this.resultDigest == null || !(contentVerifier instanceof RawContentVerifier)) {
                                return contentVerifier.verify(getSignature());
                            }
                            RawContentVerifier rawContentVerifier = (RawContentVerifier) contentVerifier;
                            return encryptionAlgName.equals("RSA") ? rawContentVerifier.verify(new DigestInfo(new AlgorithmIdentifier(this.digestAlgorithm.getAlgorithm(), DERNull.INSTANCE), this.resultDigest).getEncoded(ASN1Encoding.DER), getSignature()) : rawContentVerifier.verify(this.resultDigest, getSignature());
                        } catch (IOException e) {
                            throw new CMSException("can't process mime object to create signature.", e);
                        }
                    } else {
                        throw new CMSException("A countersignature attribute MUST NOT be a signed attribute");
                    }
                } else {
                    throw new CMSException("A cmsAlgorithmProtect attribute MUST be a signed attribute");
                }
            } catch (IOException e2) {
                throw new CMSException("can't process mime object to create signature.", e2);
            } catch (OperatorCreationException e3) {
                throw new CMSException("can't create digest calculator: " + e3.getMessage(), e3);
            }
        } catch (OperatorCreationException e4) {
            throw new CMSException("can't create content verifier: " + e4.getMessage(), e4);
        }
    }

    private byte[] encodeObj(ASN1Encodable aSN1Encodable) throws IOException {
        if (aSN1Encodable != null) {
            return aSN1Encodable.toASN1Primitive().getEncoded();
        }
        return null;
    }

    private Time getSigningTime() throws CMSException {
        ASN1Primitive singleValuedSignedAttribute = getSingleValuedSignedAttribute(CMSAttributes.signingTime, "signing-time");
        if (singleValuedSignedAttribute == null) {
            return null;
        }
        try {
            return Time.getInstance(singleValuedSignedAttribute);
        } catch (IllegalArgumentException e) {
            throw new CMSException("signing-time attribute value not a valid 'Time' structure");
        }
    }

    private ASN1Primitive getSingleValuedSignedAttribute(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) throws CMSException {
        AttributeTable unsignedAttributes = getUnsignedAttributes();
        if (unsignedAttributes == null || unsignedAttributes.getAll(aSN1ObjectIdentifier).size() <= 0) {
            AttributeTable signedAttributes = getSignedAttributes();
            if (signedAttributes == null) {
                return null;
            }
            ASN1EncodableVector all = signedAttributes.getAll(aSN1ObjectIdentifier);
            switch (all.size()) {
                case 0:
                    return null;
                case 1:
                    ASN1Set attrValues = ((Attribute) all.get(0)).getAttrValues();
                    if (attrValues.size() == 1) {
                        return attrValues.getObjectAt(0).toASN1Primitive();
                    }
                    throw new CMSException("A " + str + " attribute MUST have a single attribute value");
                default:
                    throw new CMSException("The SignedAttributes in a signerInfo MUST NOT include multiple instances of the " + str + " attribute");
            }
        } else {
            throw new CMSException("The " + str + " attribute MUST NOT be an unsigned attribute");
        }
    }

    public static SignerInformation replaceUnsignedAttributes(SignerInformation signerInformation, AttributeTable attributeTable) {
        SignerInfo signerInfo = signerInformation.info;
        return new SignerInformation(new SignerInfo(signerInfo.getSID(), signerInfo.getDigestAlgorithm(), signerInfo.getAuthenticatedAttributes(), signerInfo.getDigestEncryptionAlgorithm(), signerInfo.getEncryptedDigest(), attributeTable != null ? new DERSet(attributeTable.toASN1EncodableVector()) : null), signerInformation.contentType, signerInformation.content, null);
    }

    public byte[] getContentDigest() {
        if (this.resultDigest != null) {
            return Arrays.clone(this.resultDigest);
        }
        throw new IllegalStateException("method can only be called after verify.");
    }

    public ASN1ObjectIdentifier getContentType() {
        return this.contentType;
    }

    public SignerInformationStore getCounterSignatures() {
        AttributeTable unsignedAttributes = getUnsignedAttributes();
        if (unsignedAttributes == null) {
            return new SignerInformationStore(new ArrayList(0));
        }
        ArrayList arrayList = new ArrayList();
        ASN1EncodableVector all = unsignedAttributes.getAll(CMSAttributes.counterSignature);
        for (int i = 0; i < all.size(); i++) {
            ASN1Set attrValues = ((Attribute) all.get(i)).getAttrValues();
            attrValues.size();
            Enumeration objects = attrValues.getObjects();
            while (objects.hasMoreElements()) {
                arrayList.add(new SignerInformation(SignerInfo.getInstance(objects.nextElement()), null, new CMSProcessableByteArray(getSignature()), null));
            }
        }
        return new SignerInformationStore(arrayList);
    }

    public String getDigestAlgOID() {
        return this.digestAlgorithm.getAlgorithm().getId();
    }

    public byte[] getDigestAlgParams() {
        try {
            return encodeObj(this.digestAlgorithm.getParameters());
        } catch (Exception e) {
            throw new RuntimeException("exception getting digest parameters " + e);
        }
    }

    public AlgorithmIdentifier getDigestAlgorithmID() {
        return this.digestAlgorithm;
    }

    public byte[] getEncodedSignedAttributes() throws IOException {
        if (this.signedAttributeSet != null) {
            return this.signedAttributeSet.getEncoded(ASN1Encoding.DER);
        }
        return null;
    }

    public String getEncryptionAlgOID() {
        return this.encryptionAlgorithm.getAlgorithm().getId();
    }

    public byte[] getEncryptionAlgParams() {
        try {
            return encodeObj(this.encryptionAlgorithm.getParameters());
        } catch (Exception e) {
            throw new RuntimeException("exception getting encryption parameters " + e);
        }
    }

    public SignerId getSID() {
        return this.sid;
    }

    public byte[] getSignature() {
        return Arrays.clone(this.signature);
    }

    public AttributeTable getSignedAttributes() {
        if (this.signedAttributeSet != null && this.signedAttributeValues == null) {
            this.signedAttributeValues = new AttributeTable(this.signedAttributeSet);
        }
        return this.signedAttributeValues;
    }

    public AttributeTable getUnsignedAttributes() {
        if (this.unsignedAttributeSet != null && this.unsignedAttributeValues == null) {
            this.unsignedAttributeValues = new AttributeTable(this.unsignedAttributeSet);
        }
        return this.unsignedAttributeValues;
    }

    public int getVersion() {
        return this.info.getVersion().getValue().intValue();
    }

    public boolean isCounterSignature() {
        return this.isCounterSignature;
    }

    public SignerInfo toASN1Structure() {
        return this.info;
    }

    public boolean verify(SignerInformationVerifier signerInformationVerifier) throws CMSException {
        Time signingTime = getSigningTime();
        if (!signerInformationVerifier.hasAssociatedCertificate() || signingTime == null || signerInformationVerifier.getAssociatedCertificate().isValidOn(signingTime.getDate())) {
            return doVerify(signerInformationVerifier);
        }
        throw new CMSVerifierCertificateNotValidException("verifier not valid at signingTime");
    }
}
