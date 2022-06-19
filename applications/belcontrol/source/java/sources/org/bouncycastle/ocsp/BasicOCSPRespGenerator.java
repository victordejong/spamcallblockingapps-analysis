package org.bouncycastle.ocsp;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERGeneralizedTime;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.ocsp.BasicOCSPResponse;
import org.bouncycastle.asn1.ocsp.CertStatus;
import org.bouncycastle.asn1.ocsp.ResponseData;
import org.bouncycastle.asn1.ocsp.RevokedInfo;
import org.bouncycastle.asn1.ocsp.SingleResponse;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.CRLReason;
import org.bouncycastle.asn1.x509.X509CertificateStructure;
import org.bouncycastle.asn1.x509.X509Extensions;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/ocsp/BasicOCSPRespGenerator.class */
public class BasicOCSPRespGenerator {
    private RespID responderID;
    private List list = new ArrayList();
    private X509Extensions responseExtensions = null;

    /* loaded from: classes3-dex2jar.jar:org/bouncycastle/ocsp/BasicOCSPRespGenerator$ResponseObject.class */
    public class ResponseObject {
        public CertificateID certId;
        public CertStatus certStatus;
        public X509Extensions extensions;
        public DERGeneralizedTime nextUpdate;
        public DERGeneralizedTime thisUpdate;

        public ResponseObject(CertificateID certificateID, CertificateStatus certificateStatus, Date date, Date date2, X509Extensions x509Extensions) {
            CertStatus certStatus;
            BasicOCSPRespGenerator.this = r10;
            this.certId = certificateID;
            if (certificateStatus == null) {
                certStatus = new CertStatus();
            } else if (certificateStatus instanceof UnknownStatus) {
                certStatus = new CertStatus(2, new DERNull());
            } else {
                RevokedStatus revokedStatus = (RevokedStatus) certificateStatus;
                certStatus = revokedStatus.hasRevocationReason() ? new CertStatus(new RevokedInfo(new DERGeneralizedTime(revokedStatus.getRevocationTime()), new CRLReason(revokedStatus.getRevocationReason()))) : new CertStatus(new RevokedInfo(new DERGeneralizedTime(revokedStatus.getRevocationTime()), null));
            }
            this.certStatus = certStatus;
            this.thisUpdate = new DERGeneralizedTime(date);
            this.nextUpdate = date2 != null ? new DERGeneralizedTime(date2) : null;
            this.extensions = x509Extensions;
        }

        public SingleResponse toResponse() {
            return new SingleResponse(this.certId.toASN1Object(), this.certStatus, this.thisUpdate, this.nextUpdate, this.extensions);
        }
    }

    public BasicOCSPRespGenerator(PublicKey publicKey) {
        this.responderID = new RespID(publicKey);
    }

    public BasicOCSPRespGenerator(RespID respID) {
        this.responderID = respID;
    }

    private BasicOCSPResp generateResponse(String str, PrivateKey privateKey, X509Certificate[] x509CertificateArr, Date date, String str2, SecureRandom secureRandom) {
        try {
            DERObjectIdentifier algorithmOID = OCSPUtil.getAlgorithmOID(str);
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            for (ResponseObject responseObject : this.list) {
                try {
                    aSN1EncodableVector.add(responseObject.toResponse());
                } catch (Exception e) {
                    throw new OCSPException("exception creating Request", e);
                }
            }
            ResponseData responseData = new ResponseData(this.responderID.toASN1Object(), new DERGeneralizedTime(date), new DERSequence(aSN1EncodableVector), this.responseExtensions);
            try {
                Signature createSignatureInstance = OCSPUtil.createSignatureInstance(str, str2);
                if (secureRandom != null) {
                    createSignatureInstance.initSign(privateKey, secureRandom);
                } else {
                    createSignatureInstance.initSign(privateKey);
                }
                try {
                    createSignatureInstance.update(responseData.getEncoded(ASN1Encodable.DER));
                    DERBitString dERBitString = new DERBitString(createSignatureInstance.sign());
                    AlgorithmIdentifier sigAlgID = OCSPUtil.getSigAlgID(algorithmOID);
                    DERSequence dERSequence = null;
                    if (x509CertificateArr != null) {
                        dERSequence = null;
                        if (x509CertificateArr.length > 0) {
                            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
                            for (int i = 0; i != x509CertificateArr.length; i++) {
                                try {
                                    aSN1EncodableVector2.add(new X509CertificateStructure((ASN1Sequence) ASN1Object.fromByteArray(x509CertificateArr[i].getEncoded())));
                                } catch (IOException e2) {
                                    throw new OCSPException("error processing certs", e2);
                                } catch (CertificateEncodingException e3) {
                                    throw new OCSPException("error encoding certs", e3);
                                }
                            }
                            dERSequence = new DERSequence(aSN1EncodableVector2);
                        }
                    }
                    return new BasicOCSPResp(new BasicOCSPResponse(responseData, sigAlgID, dERBitString, dERSequence));
                } catch (Exception e4) {
                    throw new OCSPException("exception processing TBSRequest: " + e4, e4);
                }
            } catch (NoSuchProviderException e5) {
                throw e5;
            } catch (GeneralSecurityException e6) {
                throw new OCSPException("exception creating signature: " + e6, e6);
            }
        } catch (Exception e7) {
            throw new IllegalArgumentException("unknown signing algorithm specified");
        }
    }

    public void addResponse(CertificateID certificateID, CertificateStatus certificateStatus) {
        this.list.add(new ResponseObject(certificateID, certificateStatus, new Date(), null, null));
    }

    public void addResponse(CertificateID certificateID, CertificateStatus certificateStatus, Date date, Date date2, X509Extensions x509Extensions) {
        this.list.add(new ResponseObject(certificateID, certificateStatus, date, date2, x509Extensions));
    }

    public void addResponse(CertificateID certificateID, CertificateStatus certificateStatus, Date date, X509Extensions x509Extensions) {
        this.list.add(new ResponseObject(certificateID, certificateStatus, new Date(), date, x509Extensions));
    }

    public void addResponse(CertificateID certificateID, CertificateStatus certificateStatus, X509Extensions x509Extensions) {
        this.list.add(new ResponseObject(certificateID, certificateStatus, new Date(), null, x509Extensions));
    }

    public BasicOCSPResp generate(String str, PrivateKey privateKey, X509Certificate[] x509CertificateArr, Date date, String str2) {
        return generate(str, privateKey, x509CertificateArr, date, str2, null);
    }

    public BasicOCSPResp generate(String str, PrivateKey privateKey, X509Certificate[] x509CertificateArr, Date date, String str2, SecureRandom secureRandom) {
        if (str != null) {
            return generateResponse(str, privateKey, x509CertificateArr, date, str2, secureRandom);
        }
        throw new IllegalArgumentException("no signing algorithm specified");
    }

    public Iterator getSignatureAlgNames() {
        return OCSPUtil.getAlgNames();
    }

    public void setResponseExtensions(X509Extensions x509Extensions) {
        this.responseExtensions = x509Extensions;
    }
}
