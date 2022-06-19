package org.bouncycastle.jce.provider;

import com.mopub.volley.BuildConfig;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.Certificate;
import java.security.cert.PKIXParameters;
import java.security.cert.PolicyQualifierInfo;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.security.cert.X509Extension;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAPublicKeySpec;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1OutputStream;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEREnumerated;
import org.bouncycastle.asn1.DERGeneralizedTime;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.isismtt.ISISMTTObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.CertificateList;
import org.bouncycastle.asn1.x509.DistributionPoint;
import org.bouncycastle.asn1.x509.DistributionPointName;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.PolicyInformation;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x509.X509Extensions;
import org.bouncycastle.jce.X509LDAPCertStoreParameters;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.util.StoreException;
import org.bouncycastle.x509.ExtendedPKIXBuilderParameters;
import org.bouncycastle.x509.ExtendedPKIXParameters;
import org.bouncycastle.x509.X509AttributeCertStoreSelector;
import org.bouncycastle.x509.X509AttributeCertificate;
import org.bouncycastle.x509.X509CRLStoreSelector;
import org.bouncycastle.x509.X509CertStoreSelector;
import org.bouncycastle.x509.X509Store;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/CertPathValidatorUtilities.class */
public class CertPathValidatorUtilities {
    public static final String ANY_POLICY = "2.5.29.32.0";
    public static final int CRL_SIGN = 6;
    public static final int KEY_CERT_SIGN = 5;
    public static final PKIXCRLUtil CRL_UTIL = new PKIXCRLUtil();
    public static final String CERTIFICATE_POLICIES = X509Extensions.CertificatePolicies.getId();
    public static final String BASIC_CONSTRAINTS = X509Extensions.BasicConstraints.getId();
    public static final String POLICY_MAPPINGS = X509Extensions.PolicyMappings.getId();
    public static final String SUBJECT_ALTERNATIVE_NAME = X509Extensions.SubjectAlternativeName.getId();
    public static final String NAME_CONSTRAINTS = X509Extensions.NameConstraints.getId();
    public static final String KEY_USAGE = X509Extensions.KeyUsage.getId();
    public static final String INHIBIT_ANY_POLICY = X509Extensions.InhibitAnyPolicy.getId();
    public static final String ISSUING_DISTRIBUTION_POINT = X509Extensions.IssuingDistributionPoint.getId();
    public static final String DELTA_CRL_INDICATOR = X509Extensions.DeltaCRLIndicator.getId();
    public static final String POLICY_CONSTRAINTS = X509Extensions.PolicyConstraints.getId();
    public static final String FRESHEST_CRL = X509Extensions.FreshestCRL.getId();
    public static final String CRL_DISTRIBUTION_POINTS = X509Extensions.CRLDistributionPoints.getId();
    public static final String AUTHORITY_KEY_IDENTIFIER = X509Extensions.AuthorityKeyIdentifier.getId();
    public static final String CRL_NUMBER = X509Extensions.CRLNumber.getId();
    public static final String[] crlReasons = {BuildConfig.VERSION_NAME, "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    public static void addAdditionalStoreFromLocation(String str, ExtendedPKIXParameters extendedPKIXParameters) {
        String str2;
        if (extendedPKIXParameters.isAdditionalLocationsEnabled()) {
            try {
                if (!str.startsWith("ldap://")) {
                    return;
                }
                String substring = str.substring(7);
                String str3 = null;
                if (substring.indexOf("/") != -1) {
                    str3 = substring.substring(substring.indexOf("/"));
                    str2 = "ldap://" + substring.substring(0, substring.indexOf("/"));
                } else {
                    str2 = "ldap://" + substring;
                }
                X509LDAPCertStoreParameters build = new X509LDAPCertStoreParameters.Builder(str2, str3).build();
                extendedPKIXParameters.addAdditionalStore(X509Store.getInstance("CERTIFICATE/LDAP", build, BouncyCastleProvider.PROVIDER_NAME));
                extendedPKIXParameters.addAdditionalStore(X509Store.getInstance("CRL/LDAP", build, BouncyCastleProvider.PROVIDER_NAME));
                extendedPKIXParameters.addAdditionalStore(X509Store.getInstance("ATTRIBUTECERTIFICATE/LDAP", build, BouncyCastleProvider.PROVIDER_NAME));
                extendedPKIXParameters.addAdditionalStore(X509Store.getInstance("CERTIFICATEPAIR/LDAP", build, BouncyCastleProvider.PROVIDER_NAME));
            } catch (Exception e) {
                throw new RuntimeException("Exception adding X.509 stores.");
            }
        }
    }

    public static void addAdditionalStoresFromAltNames(X509Certificate x509Certificate, ExtendedPKIXParameters extendedPKIXParameters) {
        if (x509Certificate.getIssuerAlternativeNames() != null) {
            for (List<?> list : x509Certificate.getIssuerAlternativeNames()) {
                if (list.get(0).equals(new Integer(6))) {
                    addAdditionalStoreFromLocation((String) list.get(1), extendedPKIXParameters);
                }
            }
        }
    }

    public static void addAdditionalStoresFromCRLDistributionPoint(CRLDistPoint cRLDistPoint, ExtendedPKIXParameters extendedPKIXParameters) {
        if (cRLDistPoint != null) {
            try {
                for (DistributionPoint distributionPoint : cRLDistPoint.getDistributionPoints()) {
                    DistributionPointName distributionPoint2 = distributionPoint.getDistributionPoint();
                    if (distributionPoint2 != null && distributionPoint2.getType() == 0) {
                        GeneralName[] names = GeneralNames.getInstance(distributionPoint2.getName()).getNames();
                        for (int i = 0; i < names.length; i++) {
                            if (names[i].getTagNo() == 6) {
                                addAdditionalStoreFromLocation(DERIA5String.getInstance(names[i].getName()).getString(), extendedPKIXParameters);
                            }
                        }
                    }
                }
            } catch (Exception e) {
                throw new AnnotatedException("Distribution points could not be read.", e);
            }
        }
    }

    public static Collection findCertificates(X509AttributeCertStoreSelector x509AttributeCertStoreSelector, List list) {
        HashSet hashSet = new HashSet();
        for (Object obj : list) {
            if (obj instanceof X509Store) {
                try {
                    hashSet.addAll(((X509Store) obj).getMatches(x509AttributeCertStoreSelector));
                } catch (StoreException e) {
                    throw new AnnotatedException("Problem while picking certificates from X.509 store.", e);
                }
            }
        }
        return hashSet;
    }

    public static Collection findCertificates(X509CertStoreSelector x509CertStoreSelector, List list) {
        HashSet hashSet = new HashSet();
        for (Object obj : list) {
            if (obj instanceof X509Store) {
                try {
                    hashSet.addAll(((X509Store) obj).getMatches(x509CertStoreSelector));
                } catch (StoreException e) {
                    throw new AnnotatedException("Problem while picking certificates from X.509 store.", e);
                }
            } else {
                try {
                    hashSet.addAll(((CertStore) obj).getCertificates(x509CertStoreSelector));
                } catch (CertStoreException e2) {
                    throw new AnnotatedException("Problem while picking certificates from certificate store.", e2);
                }
            }
        }
        return hashSet;
    }

    public static Collection findIssuerCerts(X509Certificate x509Certificate, ExtendedPKIXBuilderParameters extendedPKIXBuilderParameters) {
        X509CertStoreSelector x509CertStoreSelector = new X509CertStoreSelector();
        HashSet hashSet = new HashSet();
        try {
            x509CertStoreSelector.setSubject(x509Certificate.getIssuerX500Principal().getEncoded());
            try {
                ArrayList<X509Certificate> arrayList = new ArrayList();
                arrayList.addAll(findCertificates(x509CertStoreSelector, extendedPKIXBuilderParameters.getCertStores()));
                arrayList.addAll(findCertificates(x509CertStoreSelector, extendedPKIXBuilderParameters.getStores()));
                arrayList.addAll(findCertificates(x509CertStoreSelector, extendedPKIXBuilderParameters.getAdditionalStores()));
                for (X509Certificate x509Certificate2 : arrayList) {
                    hashSet.add(x509Certificate2);
                }
                return hashSet;
            } catch (AnnotatedException e) {
                throw new AnnotatedException("Issuer certificate cannot be searched.", e);
            }
        } catch (IOException e2) {
            throw new AnnotatedException("Subject criteria for certificate selector to find issuer certificate could not be set.", e2);
        }
    }

    public static TrustAnchor findTrustAnchor(X509Certificate x509Certificate, Set set) {
        return findTrustAnchor(x509Certificate, set, null);
    }

    public static TrustAnchor findTrustAnchor(X509Certificate x509Certificate, Set set, String str) {
        PublicKey publicKey;
        X509CertSelector x509CertSelector = new X509CertSelector();
        X500Principal encodedIssuerPrincipal = getEncodedIssuerPrincipal(x509Certificate);
        try {
            x509CertSelector.setSubject(encodedIssuerPrincipal.getEncoded());
            Iterator it = set.iterator();
            TrustAnchor trustAnchor = null;
            PublicKey publicKey2 = null;
            Exception e = null;
            while (it.hasNext() && trustAnchor == null) {
                TrustAnchor trustAnchor2 = (TrustAnchor) it.next();
                if (trustAnchor2.getTrustedCert() != null) {
                    if (x509CertSelector.match(trustAnchor2.getTrustedCert())) {
                        publicKey = trustAnchor2.getTrustedCert().getPublicKey();
                    }
                    trustAnchor2 = null;
                    publicKey = publicKey2;
                } else {
                    if (trustAnchor2.getCAName() != null && trustAnchor2.getCAPublicKey() != null) {
                        try {
                            if (encodedIssuerPrincipal.equals(new X500Principal(trustAnchor2.getCAName()))) {
                                publicKey = trustAnchor2.getCAPublicKey();
                            }
                        } catch (IllegalArgumentException e2) {
                        }
                    }
                    trustAnchor2 = null;
                    publicKey = publicKey2;
                }
                trustAnchor = trustAnchor2;
                publicKey2 = publicKey;
                if (publicKey != null) {
                    try {
                        verifyX509Certificate(x509Certificate, publicKey, str);
                        trustAnchor = trustAnchor2;
                        publicKey2 = publicKey;
                    } catch (Exception e3) {
                        e = e3;
                        trustAnchor = null;
                        publicKey2 = publicKey;
                    }
                }
            }
            if (trustAnchor == null && e != null) {
                throw new AnnotatedException("TrustAnchor found but certificate validation failed.", e);
            }
            return trustAnchor;
        } catch (IOException e4) {
            throw new AnnotatedException("Cannot set subject search criteria for trust anchor.", e4);
        }
    }

    public static AlgorithmIdentifier getAlgorithmIdentifier(PublicKey publicKey) {
        try {
            return SubjectPublicKeyInfo.getInstance(new ASN1InputStream(publicKey.getEncoded()).readObject()).getAlgorithmId();
        } catch (Exception e) {
            throw new ExtCertPathValidatorException("Subject public key cannot be decoded.", e);
        }
    }

    public static void getCRLIssuersFromDistributionPoint(DistributionPoint distributionPoint, Collection collection, X509CRLSelector x509CRLSelector, ExtendedPKIXParameters extendedPKIXParameters) {
        ArrayList<X500Principal> arrayList = new ArrayList();
        if (distributionPoint.getCRLIssuer() != null) {
            GeneralName[] names = distributionPoint.getCRLIssuer().getNames();
            for (int i = 0; i < names.length; i++) {
                if (names[i].getTagNo() == 4) {
                    try {
                        arrayList.add(new X500Principal(names[i].getName().getDERObject().getEncoded()));
                    } catch (IOException e) {
                        throw new AnnotatedException("CRL issuer information from distribution point cannot be decoded.", e);
                    }
                }
            }
        } else if (distributionPoint.getDistributionPoint() == null) {
            throw new AnnotatedException("CRL issuer is omitted from distribution point but no distributionPoint field present.");
        } else {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                arrayList.add((X500Principal) it.next());
            }
        }
        for (X500Principal x500Principal : arrayList) {
            try {
                x509CRLSelector.addIssuerName(x500Principal.getEncoded());
            } catch (IOException e2) {
                throw new AnnotatedException("Cannot decode CRL issuer information.", e2);
            }
        }
    }

    public static void getCertStatus(Date date, X509CRL x509crl, Object obj, CertStatus certStatus) {
        try {
            X509CRLEntryObject x509CRLEntryObject = (X509CRLEntryObject) new X509CRLObject(new CertificateList((ASN1Sequence) ASN1Object.fromByteArray(x509crl.getEncoded()))).getRevokedCertificate(getSerialNumber(obj));
            if (x509CRLEntryObject == null) {
                return;
            }
            if (!getEncodedIssuerPrincipal(obj).equals(x509CRLEntryObject.getCertificateIssuer()) && !getEncodedIssuerPrincipal(obj).equals(getIssuerPrincipal(x509crl))) {
                return;
            }
            DEREnumerated dEREnumerated = null;
            if (x509CRLEntryObject.hasExtensions()) {
                try {
                    dEREnumerated = DEREnumerated.getInstance(getExtensionValue(x509CRLEntryObject, X509Extensions.ReasonCode.getId()));
                } catch (Exception e) {
                    new AnnotatedException("Reason code CRL entry extension could not be decoded.", e);
                    dEREnumerated = null;
                }
            }
            if (date.getTime() < x509CRLEntryObject.getRevocationDate().getTime() && dEREnumerated != null && dEREnumerated.getValue().intValue() != 0 && dEREnumerated.getValue().intValue() != 1 && dEREnumerated.getValue().intValue() != 2 && dEREnumerated.getValue().intValue() != 8) {
                return;
            }
            certStatus.setCertStatus(dEREnumerated != null ? dEREnumerated.getValue().intValue() : 0);
            certStatus.setRevocationDate(x509CRLEntryObject.getRevocationDate());
        } catch (Exception e2) {
            throw new AnnotatedException("Bouncy Castle X509CRLObject could not be created.", e2);
        }
    }

    public static Set getCompleteCRLs(DistributionPoint distributionPoint, Object obj, Date date, ExtendedPKIXParameters extendedPKIXParameters) {
        X509CRLStoreSelector x509CRLStoreSelector = new X509CRLStoreSelector();
        try {
            HashSet hashSet = new HashSet();
            hashSet.add(obj instanceof X509AttributeCertificate ? ((X509AttributeCertificate) obj).getIssuer().getPrincipals()[0] : getEncodedIssuerPrincipal(obj));
            getCRLIssuersFromDistributionPoint(distributionPoint, hashSet, x509CRLStoreSelector, extendedPKIXParameters);
        } catch (AnnotatedException e) {
            new AnnotatedException("Could not get issuer information from distribution point.", e);
        }
        if (obj instanceof X509Certificate) {
            x509CRLStoreSelector.setCertificateChecking((X509Certificate) obj);
        } else if (obj instanceof X509AttributeCertificate) {
            x509CRLStoreSelector.setAttrCertificateChecking((X509AttributeCertificate) obj);
        }
        x509CRLStoreSelector.setCompleteCRLEnabled(true);
        Set findCRLs = CRL_UTIL.findCRLs(x509CRLStoreSelector, extendedPKIXParameters, date);
        if (findCRLs.isEmpty()) {
            if (obj instanceof X509AttributeCertificate) {
                throw new AnnotatedException("No CRLs found for issuer \"" + ((X509AttributeCertificate) obj).getIssuer().getPrincipals()[0] + "\"");
            }
            throw new AnnotatedException("No CRLs found for issuer \"" + ((X509Certificate) obj).getIssuerX500Principal() + "\"");
        }
        return findCRLs;
    }

    public static Set getDeltaCRLs(Date date, ExtendedPKIXParameters extendedPKIXParameters, X509CRL x509crl) {
        X509CRLStoreSelector x509CRLStoreSelector = new X509CRLStoreSelector();
        try {
            x509CRLStoreSelector.addIssuerName(getIssuerPrincipal(x509crl).getEncoded());
        } catch (IOException e) {
            new AnnotatedException("Cannot extract issuer from CRL.", e);
        }
        try {
            DERObject extensionValue = getExtensionValue(x509crl, CRL_NUMBER);
            BigInteger positiveValue = extensionValue != null ? DERInteger.getInstance(extensionValue).getPositiveValue() : null;
            try {
                byte[] extensionValue2 = x509crl.getExtensionValue(ISSUING_DISTRIBUTION_POINT);
                x509CRLStoreSelector.setMinCRLNumber(positiveValue == null ? null : positiveValue.add(BigInteger.valueOf(1L)));
                x509CRLStoreSelector.setIssuingDistributionPoint(extensionValue2);
                x509CRLStoreSelector.setIssuingDistributionPointEnabled(true);
                x509CRLStoreSelector.setMaxBaseCRLNumber(positiveValue);
                Set<X509CRL> findCRLs = CRL_UTIL.findCRLs(x509CRLStoreSelector, extendedPKIXParameters, date);
                HashSet hashSet = new HashSet();
                for (X509CRL x509crl2 : findCRLs) {
                    if (isDeltaCRL(x509crl2)) {
                        hashSet.add(x509crl2);
                    }
                }
                return hashSet;
            } catch (Exception e2) {
                throw new AnnotatedException("Issuing distribution point extension value could not be read.", e2);
            }
        } catch (Exception e3) {
            throw new AnnotatedException("CRL number extension could not be extracted from CRL.", e3);
        }
    }

    public static X500Principal getEncodedIssuerPrincipal(Object obj) {
        return obj instanceof X509Certificate ? ((X509Certificate) obj).getIssuerX500Principal() : (X500Principal) ((X509AttributeCertificate) obj).getIssuer().getPrincipals()[0];
    }

    public static DERObject getExtensionValue(X509Extension x509Extension, String str) {
        byte[] extensionValue = x509Extension.getExtensionValue(str);
        if (extensionValue == null) {
            return null;
        }
        return getObject(str, extensionValue);
    }

    public static X500Principal getIssuerPrincipal(X509CRL x509crl) {
        return x509crl.getIssuerX500Principal();
    }

    public static PublicKey getNextWorkingKey(List list, int i) {
        DSAPublicKey dSAPublicKey;
        PublicKey publicKey = ((Certificate) list.get(i)).getPublicKey();
        if (!(publicKey instanceof DSAPublicKey)) {
            return publicKey;
        }
        DSAPublicKey dSAPublicKey2 = (DSAPublicKey) publicKey;
        if (dSAPublicKey2.getParams() != null) {
            return dSAPublicKey2;
        }
        do {
            i++;
            if (i >= list.size()) {
                throw new CertPathValidatorException("DSA parameters cannot be inherited from previous certificate.");
            }
            PublicKey publicKey2 = ((X509Certificate) list.get(i)).getPublicKey();
            if (!(publicKey2 instanceof DSAPublicKey)) {
                throw new CertPathValidatorException("DSA parameters cannot be inherited from previous certificate.");
            }
            dSAPublicKey = (DSAPublicKey) publicKey2;
        } while (dSAPublicKey.getParams() == null);
        DSAParams params = dSAPublicKey.getParams();
        try {
            return KeyFactory.getInstance("DSA", BouncyCastleProvider.PROVIDER_NAME).generatePublic(new DSAPublicKeySpec(dSAPublicKey2.getY(), params.getP(), params.getQ(), params.getG()));
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    private static DERObject getObject(String str, byte[] bArr) {
        try {
            return new ASN1InputStream(((ASN1OctetString) new ASN1InputStream(bArr).readObject()).getOctets()).readObject();
        } catch (Exception e) {
            throw new AnnotatedException("exception processing extension " + str, e);
        }
    }

    public static final Set getQualifierSet(ASN1Sequence aSN1Sequence) {
        HashSet hashSet = new HashSet();
        if (aSN1Sequence == null) {
            return hashSet;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(byteArrayOutputStream);
        Enumeration objects = aSN1Sequence.getObjects();
        while (objects.hasMoreElements()) {
            try {
                aSN1OutputStream.writeObject(objects.nextElement());
                hashSet.add(new PolicyQualifierInfo(byteArrayOutputStream.toByteArray()));
                byteArrayOutputStream.reset();
            } catch (IOException e) {
                throw new ExtCertPathValidatorException("Policy qualifier info cannot be decoded.", e);
            }
        }
        return hashSet;
    }

    private static BigInteger getSerialNumber(Object obj) {
        return obj instanceof X509Certificate ? ((X509Certificate) obj).getSerialNumber() : ((X509AttributeCertificate) obj).getSerialNumber();
    }

    public static X500Principal getSubjectPrincipal(X509Certificate x509Certificate) {
        return x509Certificate.getSubjectX500Principal();
    }

    public static Date getValidCertDateFromValidityModel(ExtendedPKIXParameters extendedPKIXParameters, CertPath certPath, int i) {
        if (extendedPKIXParameters.getValidityModel() == 1 && i > 0) {
            int i2 = i - 1;
            if (i2 == 0) {
                DERGeneralizedTime dERGeneralizedTime = null;
                try {
                    byte[] extensionValue = ((X509Certificate) certPath.getCertificates().get(i2)).getExtensionValue(ISISMTTObjectIdentifiers.id_isismtt_at_dateOfCertGen.getId());
                    if (extensionValue != null) {
                        dERGeneralizedTime = DERGeneralizedTime.getInstance(ASN1Object.fromByteArray(extensionValue));
                    }
                    if (dERGeneralizedTime != null) {
                        try {
                            return dERGeneralizedTime.getDate();
                        } catch (ParseException e) {
                            throw new AnnotatedException("Date from date of cert gen extension could not be parsed.", e);
                        }
                    }
                } catch (IOException e2) {
                    throw new AnnotatedException("Date of cert gen extension could not be read.");
                } catch (IllegalArgumentException e3) {
                    throw new AnnotatedException("Date of cert gen extension could not be read.");
                }
            }
            return ((X509Certificate) certPath.getCertificates().get(i2)).getNotBefore();
        }
        return getValidDate(extendedPKIXParameters);
    }

    public static Date getValidDate(PKIXParameters pKIXParameters) {
        Date date = pKIXParameters.getDate();
        Date date2 = date;
        if (date == null) {
            date2 = new Date();
        }
        return date2;
    }

    public static boolean isAnyPolicy(Set set) {
        return set == null || set.contains("2.5.29.32.0") || set.isEmpty();
    }

    private static boolean isDeltaCRL(X509CRL x509crl) {
        return x509crl.getCriticalExtensionOIDs().contains(RFC3280CertPathUtilities.DELTA_CRL_INDICATOR);
    }

    public static boolean isSelfIssued(X509Certificate x509Certificate) {
        return x509Certificate.getSubjectDN().equals(x509Certificate.getIssuerDN());
    }

    public static void prepareNextCertB1(int i, List[] listArr, String str, Map map, X509Certificate x509Certificate) {
        boolean z;
        Set set;
        Iterator it = listArr[i].iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            PKIXPolicyNode pKIXPolicyNode = (PKIXPolicyNode) it.next();
            if (pKIXPolicyNode.getValidPolicy().equals(str)) {
                z = true;
                pKIXPolicyNode.expectedPolicies = (Set) map.get(str);
                break;
            }
        }
        if (!z) {
            for (PKIXPolicyNode pKIXPolicyNode2 : listArr[i]) {
                if ("2.5.29.32.0".equals(pKIXPolicyNode2.getValidPolicy())) {
                    try {
                        Enumeration objects = ASN1Sequence.getInstance(getExtensionValue(x509Certificate, CERTIFICATE_POLICIES)).getObjects();
                        while (true) {
                            set = null;
                            if (!objects.hasMoreElements()) {
                                break;
                            }
                            try {
                                PolicyInformation policyInformation = PolicyInformation.getInstance(objects.nextElement());
                                if ("2.5.29.32.0".equals(policyInformation.getPolicyIdentifier().getId())) {
                                    try {
                                        set = getQualifierSet(policyInformation.getPolicyQualifiers());
                                        break;
                                    } catch (CertPathValidatorException e) {
                                        throw new ExtCertPathValidatorException("Policy qualifier info set could not be built.", e);
                                    }
                                }
                            } catch (Exception e2) {
                                throw new AnnotatedException("Policy information cannot be decoded.", e2);
                            }
                        }
                        boolean contains = x509Certificate.getCriticalExtensionOIDs() != null ? x509Certificate.getCriticalExtensionOIDs().contains(CERTIFICATE_POLICIES) : false;
                        PKIXPolicyNode pKIXPolicyNode3 = (PKIXPolicyNode) pKIXPolicyNode2.getParent();
                        if (!"2.5.29.32.0".equals(pKIXPolicyNode3.getValidPolicy())) {
                            return;
                        }
                        PKIXPolicyNode pKIXPolicyNode4 = new PKIXPolicyNode(new ArrayList(), i, (Set) map.get(str), pKIXPolicyNode3, set, str, contains);
                        pKIXPolicyNode3.addChild(pKIXPolicyNode4);
                        listArr[i].add(pKIXPolicyNode4);
                        return;
                    } catch (Exception e3) {
                        throw new AnnotatedException("Certificate policies cannot be decoded.", e3);
                    }
                }
            }
        }
    }

    public static PKIXPolicyNode prepareNextCertB2(int i, List[] listArr, String str, PKIXPolicyNode pKIXPolicyNode) {
        Iterator it = listArr[i].iterator();
        PKIXPolicyNode pKIXPolicyNode2 = pKIXPolicyNode;
        while (it.hasNext()) {
            PKIXPolicyNode pKIXPolicyNode3 = (PKIXPolicyNode) it.next();
            if (pKIXPolicyNode3.getValidPolicy().equals(str)) {
                ((PKIXPolicyNode) pKIXPolicyNode3.getParent()).removeChild(pKIXPolicyNode3);
                it.remove();
                int i2 = i - 1;
                while (true) {
                    PKIXPolicyNode pKIXPolicyNode4 = pKIXPolicyNode2;
                    pKIXPolicyNode2 = pKIXPolicyNode4;
                    if (i2 >= 0) {
                        List list = listArr[i2];
                        int i3 = 0;
                        while (true) {
                            pKIXPolicyNode2 = pKIXPolicyNode4;
                            if (i3 < list.size()) {
                                PKIXPolicyNode pKIXPolicyNode5 = (PKIXPolicyNode) list.get(i3);
                                PKIXPolicyNode pKIXPolicyNode6 = pKIXPolicyNode4;
                                if (!pKIXPolicyNode5.hasChildren()) {
                                    PKIXPolicyNode removePolicyNode = removePolicyNode(pKIXPolicyNode4, listArr, pKIXPolicyNode5);
                                    pKIXPolicyNode6 = removePolicyNode;
                                    if (removePolicyNode == null) {
                                        pKIXPolicyNode2 = removePolicyNode;
                                        break;
                                    }
                                }
                                i3++;
                                pKIXPolicyNode4 = pKIXPolicyNode6;
                            }
                        }
                        i2--;
                    }
                }
            }
        }
        return pKIXPolicyNode2;
    }

    public static boolean processCertD1i(int i, List[] listArr, DERObjectIdentifier dERObjectIdentifier, Set set) {
        List list = listArr[i - 1];
        for (int i2 = 0; i2 < list.size(); i2++) {
            PKIXPolicyNode pKIXPolicyNode = (PKIXPolicyNode) list.get(i2);
            if (pKIXPolicyNode.getExpectedPolicies().contains(dERObjectIdentifier.getId())) {
                HashSet hashSet = new HashSet();
                hashSet.add(dERObjectIdentifier.getId());
                PKIXPolicyNode pKIXPolicyNode2 = new PKIXPolicyNode(new ArrayList(), i, hashSet, pKIXPolicyNode, set, dERObjectIdentifier.getId(), false);
                pKIXPolicyNode.addChild(pKIXPolicyNode2);
                listArr[i].add(pKIXPolicyNode2);
                return true;
            }
        }
        return false;
    }

    public static void processCertD1ii(int i, List[] listArr, DERObjectIdentifier dERObjectIdentifier, Set set) {
        List list = listArr[i - 1];
        for (int i2 = 0; i2 < list.size(); i2++) {
            PKIXPolicyNode pKIXPolicyNode = (PKIXPolicyNode) list.get(i2);
            if ("2.5.29.32.0".equals(pKIXPolicyNode.getValidPolicy())) {
                HashSet hashSet = new HashSet();
                hashSet.add(dERObjectIdentifier.getId());
                PKIXPolicyNode pKIXPolicyNode2 = new PKIXPolicyNode(new ArrayList(), i, hashSet, pKIXPolicyNode, set, dERObjectIdentifier.getId(), false);
                pKIXPolicyNode.addChild(pKIXPolicyNode2);
                listArr[i].add(pKIXPolicyNode2);
                return;
            }
        }
    }

    public static PKIXPolicyNode removePolicyNode(PKIXPolicyNode pKIXPolicyNode, List[] listArr, PKIXPolicyNode pKIXPolicyNode2) {
        PKIXPolicyNode pKIXPolicyNode3 = (PKIXPolicyNode) pKIXPolicyNode2.getParent();
        if (pKIXPolicyNode == null) {
            return null;
        }
        if (pKIXPolicyNode3 != null) {
            pKIXPolicyNode3.removeChild(pKIXPolicyNode2);
            removePolicyNodeRecurse(listArr, pKIXPolicyNode2);
            return pKIXPolicyNode;
        }
        for (int i = 0; i < listArr.length; i++) {
            listArr[i] = new ArrayList();
        }
        return null;
    }

    private static void removePolicyNodeRecurse(List[] listArr, PKIXPolicyNode pKIXPolicyNode) {
        listArr[pKIXPolicyNode.getDepth()].remove(pKIXPolicyNode);
        if (pKIXPolicyNode.hasChildren()) {
            Iterator children = pKIXPolicyNode.getChildren();
            while (children.hasNext()) {
                removePolicyNodeRecurse(listArr, (PKIXPolicyNode) children.next());
            }
        }
    }

    public static void verifyX509Certificate(X509Certificate x509Certificate, PublicKey publicKey, String str) {
        if (str == null) {
            x509Certificate.verify(publicKey);
        } else {
            x509Certificate.verify(publicKey, str);
        }
    }
}
