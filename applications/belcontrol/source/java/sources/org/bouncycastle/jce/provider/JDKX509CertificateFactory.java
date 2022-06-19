package org.bouncycastle.jce.provider;

import java.io.InputStream;
import java.io.PushbackInputStream;
import java.security.cert.CRL;
import java.security.cert.CRLException;
import java.security.cert.CertPath;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactorySpi;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.SignedData;
import org.bouncycastle.asn1.x509.CertificateList;
import org.bouncycastle.asn1.x509.X509CertificateStructure;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/JDKX509CertificateFactory.class */
public class JDKX509CertificateFactory extends CertificateFactorySpi {
    private static final PEMUtil PEM_CERT_PARSER = new PEMUtil("CERTIFICATE");
    private static final PEMUtil PEM_CRL_PARSER = new PEMUtil("CRL");
    private ASN1Set sData = null;
    private int sDataObjectCount = 0;
    private InputStream currentStream = null;
    private ASN1Set sCrlData = null;
    private int sCrlDataObjectCount = 0;
    private InputStream currentCrlStream = null;

    private CRL getCRL() {
        ASN1Set aSN1Set = this.sCrlData;
        if (aSN1Set == null || this.sCrlDataObjectCount >= aSN1Set.size()) {
            return null;
        }
        ASN1Set aSN1Set2 = this.sCrlData;
        int i = this.sCrlDataObjectCount;
        this.sCrlDataObjectCount = i + 1;
        return createCRL(CertificateList.getInstance(aSN1Set2.getObjectAt(i)));
    }

    private Certificate getCertificate() {
        if (this.sData != null) {
            while (this.sDataObjectCount < this.sData.size()) {
                ASN1Set aSN1Set = this.sData;
                int i = this.sDataObjectCount;
                this.sDataObjectCount = i + 1;
                DEREncodable objectAt = aSN1Set.getObjectAt(i);
                if (objectAt instanceof ASN1Sequence) {
                    return new X509CertificateObject(X509CertificateStructure.getInstance(objectAt));
                }
            }
            return null;
        }
        return null;
    }

    private CRL readDERCRL(ASN1InputStream aSN1InputStream) {
        ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1InputStream.readObject();
        if (aSN1Sequence.size() <= 1 || !(aSN1Sequence.getObjectAt(0) instanceof DERObjectIdentifier) || !aSN1Sequence.getObjectAt(0).equals(PKCSObjectIdentifiers.signedData)) {
            return createCRL(CertificateList.getInstance(aSN1Sequence));
        }
        this.sCrlData = new SignedData(ASN1Sequence.getInstance((ASN1TaggedObject) aSN1Sequence.getObjectAt(1), true)).getCRLs();
        return getCRL();
    }

    private Certificate readDERCertificate(ASN1InputStream aSN1InputStream) {
        ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1InputStream.readObject();
        if (aSN1Sequence.size() <= 1 || !(aSN1Sequence.getObjectAt(0) instanceof DERObjectIdentifier) || !aSN1Sequence.getObjectAt(0).equals(PKCSObjectIdentifiers.signedData)) {
            return new X509CertificateObject(X509CertificateStructure.getInstance(aSN1Sequence));
        }
        this.sData = new SignedData(ASN1Sequence.getInstance((ASN1TaggedObject) aSN1Sequence.getObjectAt(1), true)).getCertificates();
        return getCertificate();
    }

    private CRL readPEMCRL(InputStream inputStream) {
        ASN1Sequence readPEMObject = PEM_CRL_PARSER.readPEMObject(inputStream);
        if (readPEMObject != null) {
            return createCRL(CertificateList.getInstance(readPEMObject));
        }
        return null;
    }

    private Certificate readPEMCertificate(InputStream inputStream) {
        ASN1Sequence readPEMObject = PEM_CERT_PARSER.readPEMObject(inputStream);
        if (readPEMObject != null) {
            return new X509CertificateObject(X509CertificateStructure.getInstance(readPEMObject));
        }
        return null;
    }

    public CRL createCRL(CertificateList certificateList) {
        return new X509CRLObject(certificateList);
    }

    @Override // java.security.cert.CertificateFactorySpi
    public CRL engineGenerateCRL(InputStream inputStream) {
        InputStream inputStream2 = this.currentCrlStream;
        if (inputStream2 == null || inputStream2 != inputStream) {
            this.currentCrlStream = inputStream;
            this.sCrlData = null;
            this.sCrlDataObjectCount = 0;
        }
        try {
            ASN1Set aSN1Set = this.sCrlData;
            if (aSN1Set != null) {
                if (this.sCrlDataObjectCount != aSN1Set.size()) {
                    return getCRL();
                }
                this.sCrlData = null;
                this.sCrlDataObjectCount = 0;
                return null;
            }
            int readLimit = ProviderUtil.getReadLimit(inputStream);
            PushbackInputStream pushbackInputStream = new PushbackInputStream(inputStream);
            int read = pushbackInputStream.read();
            if (read == -1) {
                return null;
            }
            pushbackInputStream.unread(read);
            return read != 48 ? readPEMCRL(pushbackInputStream) : readDERCRL(new ASN1InputStream(pushbackInputStream, readLimit, true));
        } catch (CRLException e) {
            throw e;
        } catch (Exception e2) {
            throw new CRLException(e2.toString());
        }
    }

    @Override // java.security.cert.CertificateFactorySpi
    public Collection engineGenerateCRLs(InputStream inputStream) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            CRL engineGenerateCRL = engineGenerateCRL(inputStream);
            if (engineGenerateCRL != null) {
                arrayList.add(engineGenerateCRL);
            } else {
                return arrayList;
            }
        }
    }

    @Override // java.security.cert.CertificateFactorySpi
    public CertPath engineGenerateCertPath(InputStream inputStream) {
        return engineGenerateCertPath(inputStream, "PkiPath");
    }

    @Override // java.security.cert.CertificateFactorySpi
    public CertPath engineGenerateCertPath(InputStream inputStream, String str) {
        return new PKIXCertPath(inputStream, str);
    }

    @Override // java.security.cert.CertificateFactorySpi
    public CertPath engineGenerateCertPath(List list) {
        for (Object obj : list) {
            if (obj != null && !(obj instanceof X509Certificate)) {
                throw new CertificateException("list contains non X509Certificate object while creating CertPath\n" + obj.toString());
            }
        }
        return new PKIXCertPath(list);
    }

    @Override // java.security.cert.CertificateFactorySpi
    public Certificate engineGenerateCertificate(InputStream inputStream) {
        InputStream inputStream2 = this.currentStream;
        if (inputStream2 == null || inputStream2 != inputStream) {
            this.currentStream = inputStream;
            this.sData = null;
            this.sDataObjectCount = 0;
        }
        try {
            ASN1Set aSN1Set = this.sData;
            if (aSN1Set != null) {
                if (this.sDataObjectCount != aSN1Set.size()) {
                    return getCertificate();
                }
                this.sData = null;
                this.sDataObjectCount = 0;
                return null;
            }
            int readLimit = ProviderUtil.getReadLimit(inputStream);
            PushbackInputStream pushbackInputStream = new PushbackInputStream(inputStream);
            int read = pushbackInputStream.read();
            if (read == -1) {
                return null;
            }
            pushbackInputStream.unread(read);
            return read != 48 ? readPEMCertificate(pushbackInputStream) : readDERCertificate(new ASN1InputStream(pushbackInputStream, readLimit));
        } catch (Exception e) {
            throw new CertificateException(e);
        }
    }

    @Override // java.security.cert.CertificateFactorySpi
    public Collection engineGenerateCertificates(InputStream inputStream) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            Certificate engineGenerateCertificate = engineGenerateCertificate(inputStream);
            if (engineGenerateCertificate != null) {
                arrayList.add(engineGenerateCertificate);
            } else {
                return arrayList;
            }
        }
    }

    @Override // java.security.cert.CertificateFactorySpi
    public Iterator engineGetCertPathEncodings() {
        return PKIXCertPath.certPathEncodings.iterator();
    }
}
