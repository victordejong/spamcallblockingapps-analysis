package org.bouncycastle.jce.provider;

import com.mopub.volley.BuildConfig;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilder;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.security.cert.X509Extension;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEREncodable;
import org.bouncycastle.asn1.DERInteger;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.BasicConstraints;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.DistributionPoint;
import org.bouncycastle.asn1.x509.DistributionPointName;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.GeneralSubtree;
import org.bouncycastle.asn1.x509.IssuingDistributionPoint;
import org.bouncycastle.asn1.x509.NameConstraints;
import org.bouncycastle.asn1.x509.PolicyInformation;
import org.bouncycastle.asn1.x509.X509Extensions;
import org.bouncycastle.asn1.x509.X509Name;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.x509.ExtendedPKIXBuilderParameters;
import org.bouncycastle.x509.ExtendedPKIXParameters;
import org.bouncycastle.x509.X509CRLStoreSelector;
import org.bouncycastle.x509.X509CertStoreSelector;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/RFC3280CertPathUtilities.class */
public class RFC3280CertPathUtilities {
    public static final String ANY_POLICY = "2.5.29.32.0";
    public static final int CRL_SIGN = 6;
    public static final int KEY_CERT_SIGN = 5;
    private static final PKIXCRLUtil CRL_UTIL = new PKIXCRLUtil();
    public static final String CERTIFICATE_POLICIES = X509Extensions.CertificatePolicies.getId();
    public static final String POLICY_MAPPINGS = X509Extensions.PolicyMappings.getId();
    public static final String INHIBIT_ANY_POLICY = X509Extensions.InhibitAnyPolicy.getId();
    public static final String ISSUING_DISTRIBUTION_POINT = X509Extensions.IssuingDistributionPoint.getId();
    public static final String FRESHEST_CRL = X509Extensions.FreshestCRL.getId();
    public static final String DELTA_CRL_INDICATOR = X509Extensions.DeltaCRLIndicator.getId();
    public static final String POLICY_CONSTRAINTS = X509Extensions.PolicyConstraints.getId();
    public static final String BASIC_CONSTRAINTS = X509Extensions.BasicConstraints.getId();
    public static final String CRL_DISTRIBUTION_POINTS = X509Extensions.CRLDistributionPoints.getId();
    public static final String SUBJECT_ALTERNATIVE_NAME = X509Extensions.SubjectAlternativeName.getId();
    public static final String NAME_CONSTRAINTS = X509Extensions.NameConstraints.getId();
    public static final String AUTHORITY_KEY_IDENTIFIER = X509Extensions.AuthorityKeyIdentifier.getId();
    public static final String KEY_USAGE = X509Extensions.KeyUsage.getId();
    public static final String CRL_NUMBER = X509Extensions.CRLNumber.getId();
    public static final String[] crlReasons = {BuildConfig.VERSION_NAME, "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    private static void checkCRL(DistributionPoint distributionPoint, ExtendedPKIXParameters extendedPKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, CertStatus certStatus, ReasonsMask reasonsMask, List list) {
        Set<String> criticalExtensionOIDs;
        Date date2 = new Date(System.currentTimeMillis());
        if (date.getTime() <= date2.getTime()) {
            Iterator it = CertPathValidatorUtilities.getCompleteCRLs(distributionPoint, x509Certificate, date2, extendedPKIXParameters).iterator();
            AnnotatedException e = null;
            boolean z = false;
            while (it.hasNext() && certStatus.getCertStatus() == 11 && !reasonsMask.isAllReasons()) {
                try {
                    X509CRL x509crl = (X509CRL) it.next();
                    ReasonsMask processCRLD = processCRLD(x509crl, distributionPoint);
                    if (!processCRLD.hasNewReasons(reasonsMask)) {
                        continue;
                    } else {
                        try {
                            X509CRL processCRLH = extendedPKIXParameters.isUseDeltasEnabled() ? processCRLH(CertPathValidatorUtilities.getDeltaCRLs(date2, extendedPKIXParameters, x509crl), processCRLG(x509crl, processCRLF(x509crl, x509Certificate, x509Certificate2, publicKey, extendedPKIXParameters, list))) : null;
                            if (extendedPKIXParameters.getValidityModel() != 1) {
                                try {
                                    if (x509Certificate.getNotAfter().getTime() < x509crl.getThisUpdate().getTime()) {
                                        throw new AnnotatedException("No valid CRL for current time found.");
                                    }
                                } catch (AnnotatedException e2) {
                                    e = e2;
                                }
                            }
                            processCRLB1(distributionPoint, x509Certificate, x509crl);
                            processCRLB2(distributionPoint, x509Certificate, x509crl);
                            processCRLC(processCRLH, x509crl, extendedPKIXParameters);
                            processCRLI(date, processCRLH, x509Certificate, certStatus, extendedPKIXParameters);
                            processCRLJ(date, x509crl, x509Certificate, certStatus);
                            if (certStatus.getCertStatus() == 8) {
                                certStatus.setCertStatus(11);
                            }
                            reasonsMask.addReasons(processCRLD);
                            Set<String> criticalExtensionOIDs2 = x509crl.getCriticalExtensionOIDs();
                            if (criticalExtensionOIDs2 != null) {
                                HashSet hashSet = new HashSet(criticalExtensionOIDs2);
                                hashSet.remove(X509Extensions.IssuingDistributionPoint.getId());
                                hashSet.remove(X509Extensions.DeltaCRLIndicator.getId());
                                if (!hashSet.isEmpty()) {
                                    throw new AnnotatedException("CRL contains unsupported critical extensions.");
                                }
                            }
                            if (processCRLH != null && (criticalExtensionOIDs = processCRLH.getCriticalExtensionOIDs()) != null) {
                                HashSet hashSet2 = new HashSet(criticalExtensionOIDs);
                                hashSet2.remove(X509Extensions.IssuingDistributionPoint.getId());
                                hashSet2.remove(X509Extensions.DeltaCRLIndicator.getId());
                                if (!hashSet2.isEmpty()) {
                                    throw new AnnotatedException("Delta CRL contains unsupported critical extension.");
                                }
                            }
                            z = true;
                        } catch (AnnotatedException e3) {
                            e = e3;
                        }
                    }
                } catch (AnnotatedException e4) {
                    e = e4;
                }
            }
            if (!z) {
                throw e;
            }
            return;
        }
        throw new AnnotatedException("Validation time is in future.");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0162  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void checkCRLs(org.bouncycastle.x509.ExtendedPKIXParameters r10, java.security.cert.X509Certificate r11, java.util.Date r12, java.security.cert.X509Certificate r13, java.security.PublicKey r14, java.util.List r15) {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.RFC3280CertPathUtilities.checkCRLs(org.bouncycastle.x509.ExtendedPKIXParameters, java.security.cert.X509Certificate, java.util.Date, java.security.cert.X509Certificate, java.security.PublicKey, java.util.List):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0183, code lost:
        r0 = ((org.bouncycastle.asn1.ASN1Sequence) org.bouncycastle.jce.provider.CertPathValidatorUtilities.getExtensionValue(r0, org.bouncycastle.jce.provider.RFC3280CertPathUtilities.CERTIFICATE_POLICIES)).getObjects();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0188, code lost:
        r15 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0193, code lost:
        if (r0.hasMoreElements() == false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0196, code lost:
        r0 = org.bouncycastle.asn1.x509.PolicyInformation.getInstance(r0.nextElement());
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x01af, code lost:
        if ("2.5.29.32.0".equals(r0.getPolicyIdentifier().getId()) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x01b2, code lost:
        r15 = org.bouncycastle.jce.provider.CertPathValidatorUtilities.getQualifierSet(r0.getPolicyQualifiers());
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x01bf, code lost:
        r12 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x01cd, code lost:
        throw new org.bouncycastle.jce.exception.ExtCertPathValidatorException("Policy qualifier info set could not be decoded.", r12, r10, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x01ce, code lost:
        r12 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x01dc, code lost:
        throw new java.security.cert.CertPathValidatorException("Policy information could not be decoded.", r12, r10, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01e2, code lost:
        if (r0.getCriticalExtensionOIDs() == null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01e5, code lost:
        r25 = r0.getCriticalExtensionOIDs().contains(org.bouncycastle.jce.provider.RFC3280CertPathUtilities.CERTIFICATE_POLICIES);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01f7, code lost:
        r25 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01fa, code lost:
        r0 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r0.getParent();
        r20 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0211, code lost:
        if ("2.5.29.32.0".equals(r0.getValidPolicy()) == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0214, code lost:
        r0 = new org.bouncycastle.jce.provider.PKIXPolicyNode(new java.util.ArrayList(), r0, (java.util.Set) r0.get(r0), r0, r15, r0, r25);
        r0.addChild(r0);
        r12[r0].add(r0);
        r20 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0253, code lost:
        r12 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0261, code lost:
        throw new org.bouncycastle.jce.exception.ExtCertPathValidatorException("Certificate policies extension could not be decoded.", r12, r10, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0318, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.bouncycastle.jce.provider.PKIXPolicyNode prepareCertB(java.security.cert.CertPath r10, int r11, java.util.List[] r12, org.bouncycastle.jce.provider.PKIXPolicyNode r13, int r14) {
        /*
            Method dump skipped, instructions count: 819
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.RFC3280CertPathUtilities.prepareCertB(java.security.cert.CertPath, int, java.util.List[], org.bouncycastle.jce.provider.PKIXPolicyNode, int):org.bouncycastle.jce.provider.PKIXPolicyNode");
    }

    public static void prepareNextCertA(CertPath certPath, int i) {
        try {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), POLICY_MAPPINGS));
            if (aSN1Sequence == null) {
                return;
            }
            for (int i2 = 0; i2 < aSN1Sequence.size(); i2++) {
                try {
                    ASN1Sequence aSN1Sequence2 = ASN1Sequence.getInstance(aSN1Sequence.getObjectAt(i2));
                    DERObjectIdentifier dERObjectIdentifier = DERObjectIdentifier.getInstance(aSN1Sequence2.getObjectAt(0));
                    DERObjectIdentifier dERObjectIdentifier2 = DERObjectIdentifier.getInstance(aSN1Sequence2.getObjectAt(1));
                    if ("2.5.29.32.0".equals(dERObjectIdentifier.getId())) {
                        throw new CertPathValidatorException("IssuerDomainPolicy is anyPolicy", null, certPath, i);
                    }
                    if ("2.5.29.32.0".equals(dERObjectIdentifier2.getId())) {
                        throw new CertPathValidatorException("SubjectDomainPolicy is anyPolicy,", null, certPath, i);
                    }
                } catch (Exception e) {
                    throw new ExtCertPathValidatorException("Policy mappings extension contents could not be decoded.", e, certPath, i);
                }
            }
        } catch (AnnotatedException e2) {
            throw new ExtCertPathValidatorException("Policy mappings extension could not be decoded.", e2, certPath, i);
        }
    }

    public static void prepareNextCertG(CertPath certPath, int i, PKIXNameConstraintValidator pKIXNameConstraintValidator) {
        try {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), NAME_CONSTRAINTS));
            NameConstraints nameConstraints = aSN1Sequence != null ? new NameConstraints(aSN1Sequence) : null;
            if (nameConstraints == null) {
                return;
            }
            ASN1Sequence permittedSubtrees = nameConstraints.getPermittedSubtrees();
            if (permittedSubtrees != null) {
                try {
                    pKIXNameConstraintValidator.intersectPermittedSubtree(permittedSubtrees);
                } catch (Exception e) {
                    throw new ExtCertPathValidatorException("Permitted subtrees cannot be build from name constraints extension.", e, certPath, i);
                }
            }
            ASN1Sequence excludedSubtrees = nameConstraints.getExcludedSubtrees();
            if (excludedSubtrees == null) {
                return;
            }
            Enumeration objects = excludedSubtrees.getObjects();
            while (objects.hasMoreElements()) {
                try {
                    pKIXNameConstraintValidator.addExcludedSubtree(GeneralSubtree.getInstance(objects.nextElement()));
                } catch (Exception e2) {
                    throw new ExtCertPathValidatorException("Excluded subtrees cannot be build from name constraints extension.", e2, certPath, i);
                }
            }
        } catch (Exception e3) {
            throw new ExtCertPathValidatorException("Name constraints extension could not be decoded.", e3, certPath, i);
        }
    }

    public static int prepareNextCertH1(CertPath certPath, int i, int i2) {
        int i3 = i2;
        if (!CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i))) {
            i3 = i2;
            if (i2 != 0) {
                i3 = i2 - 1;
            }
        }
        return i3;
    }

    public static int prepareNextCertH2(CertPath certPath, int i, int i2) {
        int i3 = i2;
        if (!CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i))) {
            i3 = i2;
            if (i2 != 0) {
                i3 = i2 - 1;
            }
        }
        return i3;
    }

    public static int prepareNextCertH3(CertPath certPath, int i, int i2) {
        int i3 = i2;
        if (!CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i))) {
            i3 = i2;
            if (i2 != 0) {
                i3 = i2 - 1;
            }
        }
        return i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003e, code lost:
        r0 = org.bouncycastle.asn1.DERInteger.getInstance(r0, false).getValue().intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004f, code lost:
        if (r0 >= r9) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0054, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int prepareNextCertI1(java.security.cert.CertPath r7, int r8, int r9) {
        /*
            r0 = r7
            java.util.List r0 = r0.getCertificates()
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            java.security.cert.X509Certificate r0 = (java.security.cert.X509Certificate) r0
            r10 = r0
            r0 = r10
            java.lang.String r1 = org.bouncycastle.jce.provider.RFC3280CertPathUtilities.POLICY_CONSTRAINTS     // Catch: java.lang.Exception -> L66
            org.bouncycastle.asn1.DERObject r0 = org.bouncycastle.jce.provider.CertPathValidatorUtilities.getExtensionValue(r0, r1)     // Catch: java.lang.Exception -> L66
            org.bouncycastle.asn1.ASN1Sequence r0 = org.bouncycastle.asn1.ASN1Sequence.getInstance(r0)     // Catch: java.lang.Exception -> L66
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L64
            r0 = r10
            java.util.Enumeration r0 = r0.getObjects()
            r10 = r0
        L22:
            r0 = r10
            boolean r0 = r0.hasMoreElements()
            if (r0 == 0) goto L64
            r0 = r10
            java.lang.Object r0 = r0.nextElement()     // Catch: java.lang.IllegalArgumentException -> L55
            org.bouncycastle.asn1.ASN1TaggedObject r0 = org.bouncycastle.asn1.ASN1TaggedObject.getInstance(r0)     // Catch: java.lang.IllegalArgumentException -> L55
            r11 = r0
            r0 = r11
            int r0 = r0.getTagNo()     // Catch: java.lang.IllegalArgumentException -> L55
            if (r0 != 0) goto L22
            r0 = r11
            r1 = 0
            org.bouncycastle.asn1.DERInteger r0 = org.bouncycastle.asn1.DERInteger.getInstance(r0, r1)     // Catch: java.lang.IllegalArgumentException -> L55
            java.math.BigInteger r0 = r0.getValue()     // Catch: java.lang.IllegalArgumentException -> L55
            int r0 = r0.intValue()     // Catch: java.lang.IllegalArgumentException -> L55
            r12 = r0
            r0 = r12
            r1 = r9
            if (r0 >= r1) goto L64
            r0 = r12
            return r0
        L55:
            r10 = move-exception
            org.bouncycastle.jce.exception.ExtCertPathValidatorException r0 = new org.bouncycastle.jce.exception.ExtCertPathValidatorException
            r1 = r0
            java.lang.String r2 = "Policy constraints extension contents cannot be decoded."
            r3 = r10
            r4 = r7
            r5 = r8
            r1.<init>(r2, r3, r4, r5)
            throw r0
        L64:
            r0 = r9
            return r0
        L66:
            r10 = move-exception
            org.bouncycastle.jce.exception.ExtCertPathValidatorException r0 = new org.bouncycastle.jce.exception.ExtCertPathValidatorException
            r1 = r0
            java.lang.String r2 = "Policy constraints extension cannot be decoded."
            r3 = r10
            r4 = r7
            r5 = r8
            r1.<init>(r2, r3, r4, r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.RFC3280CertPathUtilities.prepareNextCertI1(java.security.cert.CertPath, int, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003f, code lost:
        r0 = org.bouncycastle.asn1.DERInteger.getInstance(r0, false).getValue().intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0050, code lost:
        if (r0 >= r9) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0055, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int prepareNextCertI2(java.security.cert.CertPath r7, int r8, int r9) {
        /*
            r0 = r7
            java.util.List r0 = r0.getCertificates()
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            java.security.cert.X509Certificate r0 = (java.security.cert.X509Certificate) r0
            r10 = r0
            r0 = r10
            java.lang.String r1 = org.bouncycastle.jce.provider.RFC3280CertPathUtilities.POLICY_CONSTRAINTS     // Catch: java.lang.Exception -> L67
            org.bouncycastle.asn1.DERObject r0 = org.bouncycastle.jce.provider.CertPathValidatorUtilities.getExtensionValue(r0, r1)     // Catch: java.lang.Exception -> L67
            org.bouncycastle.asn1.ASN1Sequence r0 = org.bouncycastle.asn1.ASN1Sequence.getInstance(r0)     // Catch: java.lang.Exception -> L67
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L65
            r0 = r10
            java.util.Enumeration r0 = r0.getObjects()
            r10 = r0
        L22:
            r0 = r10
            boolean r0 = r0.hasMoreElements()
            if (r0 == 0) goto L65
            r0 = r10
            java.lang.Object r0 = r0.nextElement()     // Catch: java.lang.IllegalArgumentException -> L56
            org.bouncycastle.asn1.ASN1TaggedObject r0 = org.bouncycastle.asn1.ASN1TaggedObject.getInstance(r0)     // Catch: java.lang.IllegalArgumentException -> L56
            r11 = r0
            r0 = r11
            int r0 = r0.getTagNo()     // Catch: java.lang.IllegalArgumentException -> L56
            r1 = 1
            if (r0 != r1) goto L22
            r0 = r11
            r1 = 0
            org.bouncycastle.asn1.DERInteger r0 = org.bouncycastle.asn1.DERInteger.getInstance(r0, r1)     // Catch: java.lang.IllegalArgumentException -> L56
            java.math.BigInteger r0 = r0.getValue()     // Catch: java.lang.IllegalArgumentException -> L56
            int r0 = r0.intValue()     // Catch: java.lang.IllegalArgumentException -> L56
            r12 = r0
            r0 = r12
            r1 = r9
            if (r0 >= r1) goto L65
            r0 = r12
            return r0
        L56:
            r10 = move-exception
            org.bouncycastle.jce.exception.ExtCertPathValidatorException r0 = new org.bouncycastle.jce.exception.ExtCertPathValidatorException
            r1 = r0
            java.lang.String r2 = "Policy constraints extension contents cannot be decoded."
            r3 = r10
            r4 = r7
            r5 = r8
            r1.<init>(r2, r3, r4, r5)
            throw r0
        L65:
            r0 = r9
            return r0
        L67:
            r10 = move-exception
            org.bouncycastle.jce.exception.ExtCertPathValidatorException r0 = new org.bouncycastle.jce.exception.ExtCertPathValidatorException
            r1 = r0
            java.lang.String r2 = "Policy constraints extension cannot be decoded."
            r3 = r10
            r4 = r7
            r5 = r8
            r1.<init>(r2, r3, r4, r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jce.provider.RFC3280CertPathUtilities.prepareNextCertI2(java.security.cert.CertPath, int, int):int");
    }

    public static int prepareNextCertJ(CertPath certPath, int i, int i2) {
        int intValue;
        try {
            DERInteger dERInteger = DERInteger.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), INHIBIT_ANY_POLICY));
            return (dERInteger == null || (intValue = dERInteger.getValue().intValue()) >= i2) ? i2 : intValue;
        } catch (Exception e) {
            throw new ExtCertPathValidatorException("Inhibit any-policy extension cannot be decoded.", e, certPath, i);
        }
    }

    public static void prepareNextCertK(CertPath certPath, int i) {
        try {
            BasicConstraints basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), BASIC_CONSTRAINTS));
            if (basicConstraints == null) {
                throw new CertPathValidatorException("Intermediate certificate lacks BasicConstraints");
            }
            if (!basicConstraints.isCA()) {
                throw new CertPathValidatorException("Not a CA certificate");
            }
        } catch (Exception e) {
            throw new ExtCertPathValidatorException("Basic constraints extension cannot be decoded.", e, certPath, i);
        }
    }

    public static int prepareNextCertL(CertPath certPath, int i, int i2) {
        if (!CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i))) {
            if (i2 <= 0) {
                throw new ExtCertPathValidatorException("Max path length not greater than zero", null, certPath, i);
            }
            return i2 - 1;
        }
        return i2;
    }

    public static int prepareNextCertM(CertPath certPath, int i, int i2) {
        BigInteger pathLenConstraint;
        int intValue;
        try {
            BasicConstraints basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), BASIC_CONSTRAINTS));
            return (basicConstraints == null || (pathLenConstraint = basicConstraints.getPathLenConstraint()) == null || (intValue = pathLenConstraint.intValue()) >= i2) ? i2 : intValue;
        } catch (Exception e) {
            throw new ExtCertPathValidatorException("Basic constraints extension cannot be decoded.", e, certPath, i);
        }
    }

    public static void prepareNextCertN(CertPath certPath, int i) {
        boolean[] keyUsage = ((X509Certificate) certPath.getCertificates().get(i)).getKeyUsage();
        if (keyUsage == null || keyUsage[5]) {
            return;
        }
        throw new ExtCertPathValidatorException("Issuer certificate keyusage extension is critical and does not permit key signing.", null, certPath, i);
    }

    public static void prepareNextCertO(CertPath certPath, int i, Set set, List list) {
        X509Certificate x509Certificate = (X509Certificate) certPath.getCertificates().get(i);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((PKIXCertPathChecker) it.next()).check(x509Certificate, set);
            } catch (CertPathValidatorException e) {
                throw new CertPathValidatorException(e.getMessage(), e.getCause(), certPath, i);
            }
        }
        if (set.isEmpty()) {
            return;
        }
        throw new ExtCertPathValidatorException("Certificate has unsupported critical extension.", null, certPath, i);
    }

    public static Set processCRLA1i(Date date, ExtendedPKIXParameters extendedPKIXParameters, X509Certificate x509Certificate, X509CRL x509crl) {
        HashSet hashSet = new HashSet();
        if (extendedPKIXParameters.isUseDeltasEnabled()) {
            try {
                String str = FRESHEST_CRL;
                CRLDistPoint cRLDistPoint = CRLDistPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, str));
                CRLDistPoint cRLDistPoint2 = cRLDistPoint;
                if (cRLDistPoint == null) {
                    try {
                        cRLDistPoint2 = CRLDistPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, str));
                    } catch (AnnotatedException e) {
                        throw new AnnotatedException("Freshest CRL extension could not be decoded from CRL.", e);
                    }
                }
                if (cRLDistPoint2 != null) {
                    try {
                        CertPathValidatorUtilities.addAdditionalStoresFromCRLDistributionPoint(cRLDistPoint2, extendedPKIXParameters);
                        try {
                            hashSet.addAll(CertPathValidatorUtilities.getDeltaCRLs(date, extendedPKIXParameters, x509crl));
                        } catch (AnnotatedException e2) {
                            throw new AnnotatedException("Exception obtaining delta CRLs.", e2);
                        }
                    } catch (AnnotatedException e3) {
                        throw new AnnotatedException("No new delta CRL locations could be added from Freshest CRL extension.", e3);
                    }
                }
            } catch (AnnotatedException e4) {
                throw new AnnotatedException("Freshest CRL extension could not be decoded from certificate.", e4);
            }
        }
        return hashSet;
    }

    public static Set[] processCRLA1ii(Date date, ExtendedPKIXParameters extendedPKIXParameters, X509Certificate x509Certificate, X509CRL x509crl) {
        HashSet hashSet = new HashSet();
        X509CRLStoreSelector x509CRLStoreSelector = new X509CRLStoreSelector();
        x509CRLStoreSelector.setCertificateChecking(x509Certificate);
        try {
            x509CRLStoreSelector.addIssuerName(x509crl.getIssuerX500Principal().getEncoded());
            x509CRLStoreSelector.setCompleteCRLEnabled(true);
            Set findCRLs = CRL_UTIL.findCRLs(x509CRLStoreSelector, extendedPKIXParameters, date);
            if (extendedPKIXParameters.isUseDeltasEnabled()) {
                try {
                    hashSet.addAll(CertPathValidatorUtilities.getDeltaCRLs(date, extendedPKIXParameters, x509crl));
                } catch (AnnotatedException e) {
                    throw new AnnotatedException("Exception obtaining delta CRLs.", e);
                }
            }
            return new Set[]{findCRLs, hashSet};
        } catch (IOException e2) {
            throw new AnnotatedException("Cannot extract issuer from CRL." + e2, e2);
        }
    }

    public static void processCRLB1(DistributionPoint distributionPoint, Object obj, X509CRL x509crl) {
        DERObject extensionValue = CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT);
        boolean z = false;
        int i = 0;
        boolean z2 = extensionValue != null && IssuingDistributionPoint.getInstance(extensionValue).isIndirectCRL();
        byte[] encoded = CertPathValidatorUtilities.getIssuerPrincipal(x509crl).getEncoded();
        if (distributionPoint.getCRLIssuer() != null) {
            GeneralName[] names = distributionPoint.getCRLIssuer().getNames();
            boolean z3 = false;
            while (true) {
                z = z3;
                if (i >= names.length) {
                    break;
                }
                boolean z4 = z;
                if (names[i].getTagNo() == 4) {
                    try {
                        z4 = z;
                        if (Arrays.areEqual(names[i].getName().getDERObject().getEncoded(), encoded)) {
                            z4 = true;
                        }
                    } catch (IOException e) {
                        throw new AnnotatedException("CRL issuer information from distribution point cannot be decoded.", e);
                    }
                }
                i++;
                z3 = z4;
            }
            if (z && !z2) {
                throw new AnnotatedException("Distribution point contains cRLIssuer field but CRL is not indirect.");
            }
            if (!z) {
                throw new AnnotatedException("CRL issuer of CRL does not match CRL issuer of distribution point.");
            }
        } else if (CertPathValidatorUtilities.getIssuerPrincipal(x509crl).equals(CertPathValidatorUtilities.getEncodedIssuerPrincipal(obj))) {
            z = true;
        }
        if (z) {
            return;
        }
        throw new AnnotatedException("Cannot find matching CRL issuer for certificate.");
    }

    public static void processCRLB2(DistributionPoint distributionPoint, Object obj, X509CRL x509crl) {
        boolean z;
        GeneralName[] generalNameArr;
        try {
            IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT));
            if (issuingDistributionPoint == null) {
                return;
            }
            if (issuingDistributionPoint.getDistributionPoint() != null) {
                DistributionPointName distributionPoint2 = IssuingDistributionPoint.getInstance(issuingDistributionPoint).getDistributionPoint();
                ArrayList arrayList = new ArrayList();
                if (distributionPoint2.getType() == 0) {
                    for (GeneralName generalName : GeneralNames.getInstance(distributionPoint2.getName()).getNames()) {
                        arrayList.add(generalName);
                    }
                }
                if (distributionPoint2.getType() == 1) {
                    ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
                    try {
                        Enumeration objects = ASN1Sequence.getInstance(ASN1Object.fromByteArray(CertPathValidatorUtilities.getIssuerPrincipal(x509crl).getEncoded())).getObjects();
                        while (objects.hasMoreElements()) {
                            aSN1EncodableVector.add((DEREncodable) objects.nextElement());
                        }
                        aSN1EncodableVector.add(distributionPoint2.getName());
                        arrayList.add(new GeneralName(X509Name.getInstance(new DERSequence(aSN1EncodableVector))));
                    } catch (IOException e) {
                        throw new AnnotatedException("Could not read CRL issuer.", e);
                    }
                }
                if (distributionPoint.getDistributionPoint() != null) {
                    DistributionPointName distributionPoint3 = distributionPoint.getDistributionPoint();
                    GeneralName[] generalNameArr2 = null;
                    if (distributionPoint3.getType() == 0) {
                        generalNameArr2 = GeneralNames.getInstance(distributionPoint3.getName()).getNames();
                    }
                    if (distributionPoint3.getType() == 1) {
                        if (distributionPoint.getCRLIssuer() != null) {
                            generalNameArr = distributionPoint.getCRLIssuer().getNames();
                        } else {
                            generalNameArr = new GeneralName[1];
                            try {
                                generalNameArr[0] = new GeneralName(new X509Name((ASN1Sequence) ASN1Object.fromByteArray(CertPathValidatorUtilities.getEncodedIssuerPrincipal(obj).getEncoded())));
                            } catch (IOException e2) {
                                throw new AnnotatedException("Could not read certificate issuer.", e2);
                            }
                        }
                        int i = 0;
                        while (true) {
                            generalNameArr2 = generalNameArr;
                            if (i >= generalNameArr.length) {
                                break;
                            }
                            Enumeration objects2 = ASN1Sequence.getInstance(generalNameArr[i].getName().getDERObject()).getObjects();
                            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
                            while (objects2.hasMoreElements()) {
                                aSN1EncodableVector2.add((DEREncodable) objects2.nextElement());
                            }
                            aSN1EncodableVector2.add(distributionPoint3.getName());
                            generalNameArr[i] = new GeneralName(new X509Name(new DERSequence(aSN1EncodableVector2)));
                            i++;
                        }
                    }
                    boolean z2 = false;
                    if (generalNameArr2 != null) {
                        int i2 = 0;
                        while (true) {
                            z2 = false;
                            if (i2 >= generalNameArr2.length) {
                                break;
                            } else if (arrayList.contains(generalNameArr2[i2])) {
                                z2 = true;
                                break;
                            } else {
                                i2++;
                            }
                        }
                    }
                    if (!z2) {
                        throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                    }
                } else if (distributionPoint.getCRLIssuer() == null) {
                    throw new AnnotatedException("Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint.");
                } else {
                    GeneralName[] names = distributionPoint.getCRLIssuer().getNames();
                    int i3 = 0;
                    while (true) {
                        z = false;
                        if (i3 >= names.length) {
                            break;
                        } else if (arrayList.contains(names[i3])) {
                            z = true;
                            break;
                        } else {
                            i3++;
                        }
                    }
                    if (!z) {
                        throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                    }
                }
            }
            try {
                BasicConstraints basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Extension) obj, BASIC_CONSTRAINTS));
                if (obj instanceof X509Certificate) {
                    if (issuingDistributionPoint.onlyContainsUserCerts() && basicConstraints != null && basicConstraints.isCA()) {
                        throw new AnnotatedException("CA Cert CRL only contains user certificates.");
                    }
                    if (issuingDistributionPoint.onlyContainsCACerts() && (basicConstraints == null || !basicConstraints.isCA())) {
                        throw new AnnotatedException("End CRL only contains CA certificates.");
                    }
                }
                if (issuingDistributionPoint.onlyContainsAttributeCerts()) {
                    throw new AnnotatedException("onlyContainsAttributeCerts boolean is asserted.");
                }
            } catch (Exception e3) {
                throw new AnnotatedException("Basic constraints extension could not be decoded.", e3);
            }
        } catch (Exception e4) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e4);
        }
    }

    public static void processCRLC(X509CRL x509crl, X509CRL x509crl2, ExtendedPKIXParameters extendedPKIXParameters) {
        if (x509crl == null) {
            return;
        }
        try {
            String str = ISSUING_DISTRIBUTION_POINT;
            IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl2, str));
            if (!extendedPKIXParameters.isUseDeltasEnabled()) {
                return;
            }
            if (!x509crl.getIssuerX500Principal().equals(x509crl2.getIssuerX500Principal())) {
                throw new AnnotatedException("Complete CRL issuer does not match delta CRL issuer.");
            }
            try {
                IssuingDistributionPoint issuingDistributionPoint2 = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, str));
                boolean z = false;
                if (issuingDistributionPoint != null ? issuingDistributionPoint.equals(issuingDistributionPoint2) : issuingDistributionPoint2 == null) {
                    z = true;
                }
                if (!z) {
                    throw new AnnotatedException("Issuing distribution point extension from delta CRL and complete CRL does not match.");
                }
                try {
                    String str2 = AUTHORITY_KEY_IDENTIFIER;
                    DERObject extensionValue = CertPathValidatorUtilities.getExtensionValue(x509crl2, str2);
                    try {
                        DERObject extensionValue2 = CertPathValidatorUtilities.getExtensionValue(x509crl, str2);
                        if (extensionValue == null) {
                            throw new AnnotatedException("CRL authority key identifier is null.");
                        }
                        if (extensionValue2 == null) {
                            throw new AnnotatedException("Delta CRL authority key identifier is null.");
                        }
                        if (!extensionValue.equals(extensionValue2)) {
                            throw new AnnotatedException("Delta CRL authority key identifier does not match complete CRL authority key identifier.");
                        }
                    } catch (AnnotatedException e) {
                        throw new AnnotatedException("Authority key identifier extension could not be extracted from delta CRL.", e);
                    }
                } catch (AnnotatedException e2) {
                    throw new AnnotatedException("Authority key identifier extension could not be extracted from complete CRL.", e2);
                }
            } catch (Exception e3) {
                throw new AnnotatedException("Issuing distribution point extension from delta CRL could not be decoded.", e3);
            }
        } catch (Exception e4) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e4);
        }
    }

    public static ReasonsMask processCRLD(X509CRL x509crl, DistributionPoint distributionPoint) {
        try {
            IssuingDistributionPoint issuingDistributionPoint = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT));
            if (issuingDistributionPoint != null && issuingDistributionPoint.getOnlySomeReasons() != null && distributionPoint.getReasons() != null) {
                return new ReasonsMask(distributionPoint.getReasons().intValue()).intersect(new ReasonsMask(issuingDistributionPoint.getOnlySomeReasons().intValue()));
            }
            if ((issuingDistributionPoint == null || issuingDistributionPoint.getOnlySomeReasons() == null) && distributionPoint.getReasons() == null) {
                return ReasonsMask.allReasons;
            }
            return (distributionPoint.getReasons() == null ? ReasonsMask.allReasons : new ReasonsMask(distributionPoint.getReasons().intValue())).intersect(issuingDistributionPoint == null ? ReasonsMask.allReasons : new ReasonsMask(issuingDistributionPoint.getOnlySomeReasons().intValue()));
        } catch (Exception e) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e);
        }
    }

    public static Set processCRLF(X509CRL x509crl, Object obj, X509Certificate x509Certificate, PublicKey publicKey, ExtendedPKIXParameters extendedPKIXParameters, List list) {
        int i;
        X509CertStoreSelector x509CertStoreSelector = new X509CertStoreSelector();
        try {
            x509CertStoreSelector.setSubject(CertPathValidatorUtilities.getIssuerPrincipal(x509crl).getEncoded());
            try {
                Collection findCertificates = CertPathValidatorUtilities.findCertificates(x509CertStoreSelector, extendedPKIXParameters.getStores());
                findCertificates.addAll(CertPathValidatorUtilities.findCertificates(x509CertStoreSelector, extendedPKIXParameters.getAdditionalStores()));
                findCertificates.addAll(CertPathValidatorUtilities.findCertificates(x509CertStoreSelector, extendedPKIXParameters.getCertStores()));
                findCertificates.add(x509Certificate);
                Iterator it = findCertificates.iterator();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    X509Certificate x509Certificate2 = (X509Certificate) it.next();
                    if (x509Certificate2.equals(x509Certificate)) {
                        arrayList.add(x509Certificate2);
                        arrayList2.add(publicKey);
                    } else {
                        try {
                            CertPathBuilder certPathBuilder = CertPathBuilder.getInstance("PKIX", BouncyCastleProvider.PROVIDER_NAME);
                            X509CertStoreSelector x509CertStoreSelector2 = new X509CertStoreSelector();
                            x509CertStoreSelector2.setCertificate(x509Certificate2);
                            ExtendedPKIXParameters extendedPKIXParameters2 = (ExtendedPKIXParameters) extendedPKIXParameters.clone();
                            extendedPKIXParameters2.setTargetCertConstraints(x509CertStoreSelector2);
                            ExtendedPKIXBuilderParameters extendedPKIXBuilderParameters = (ExtendedPKIXBuilderParameters) ExtendedPKIXBuilderParameters.getInstance(extendedPKIXParameters2);
                            if (list.contains(x509Certificate2)) {
                                extendedPKIXBuilderParameters.setRevocationEnabled(false);
                            } else {
                                extendedPKIXBuilderParameters.setRevocationEnabled(true);
                            }
                            List<? extends Certificate> certificates = certPathBuilder.build(extendedPKIXBuilderParameters).getCertPath().getCertificates();
                            arrayList.add(x509Certificate2);
                            arrayList2.add(CertPathValidatorUtilities.getNextWorkingKey(certificates, 0));
                        } catch (CertPathBuilderException e) {
                            throw new AnnotatedException("Internal error.", e);
                        } catch (CertPathValidatorException e2) {
                            throw new AnnotatedException("Public key of issuer certificate of CRL could not be retrieved.", e2);
                        } catch (Exception e3) {
                            throw new RuntimeException(e3.getMessage());
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                AnnotatedException annotatedException = null;
                for (i = 0; i < arrayList.size(); i++) {
                    boolean[] keyUsage = ((X509Certificate) arrayList.get(i)).getKeyUsage();
                    if (keyUsage == null || (keyUsage.length >= 7 && keyUsage[6])) {
                        hashSet.add(arrayList2.get(i));
                    } else {
                        annotatedException = new AnnotatedException("Issuer certificate key usage extension does not permit CRL signing.");
                    }
                }
                if (hashSet.isEmpty() && annotatedException == null) {
                    throw new AnnotatedException("Cannot find a valid issuer certificate.");
                }
                if (hashSet.isEmpty() && annotatedException != null) {
                    throw annotatedException;
                }
                return hashSet;
            } catch (AnnotatedException e4) {
                throw new AnnotatedException("Issuer certificate for CRL cannot be searched.", e4);
            }
        } catch (IOException e5) {
            throw new AnnotatedException("Subject criteria for certificate selector to find issuer certificate for CRL could not be set.", e5);
        }
    }

    public static PublicKey processCRLG(X509CRL x509crl, Set set) {
        Iterator it = set.iterator();
        Exception e = null;
        while (it.hasNext()) {
            PublicKey publicKey = (PublicKey) it.next();
            try {
                x509crl.verify(publicKey);
                return publicKey;
            } catch (Exception e2) {
                e = e2;
            }
        }
        throw new AnnotatedException("Cannot verify CRL.", e);
    }

    public static X509CRL processCRLH(Set set, PublicKey publicKey) {
        Iterator it = set.iterator();
        Exception e = null;
        while (it.hasNext()) {
            X509CRL x509crl = (X509CRL) it.next();
            try {
                x509crl.verify(publicKey);
                return x509crl;
            } catch (Exception e2) {
                e = e2;
            }
        }
        if (e == null) {
            return null;
        }
        throw new AnnotatedException("Cannot verify delta CRL.", e);
    }

    public static void processCRLI(Date date, X509CRL x509crl, Object obj, CertStatus certStatus, ExtendedPKIXParameters extendedPKIXParameters) {
        if (!extendedPKIXParameters.isUseDeltasEnabled() || x509crl == null) {
            return;
        }
        CertPathValidatorUtilities.getCertStatus(date, x509crl, obj, certStatus);
    }

    public static void processCRLJ(Date date, X509CRL x509crl, Object obj, CertStatus certStatus) {
        if (certStatus.getCertStatus() == 11) {
            CertPathValidatorUtilities.getCertStatus(date, x509crl, obj, certStatus);
        }
    }

    public static void processCertA(CertPath certPath, ExtendedPKIXParameters extendedPKIXParameters, int i, PublicKey publicKey, boolean z, X500Principal x500Principal, X509Certificate x509Certificate) {
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate2 = (X509Certificate) certificates.get(i);
        if (!z) {
            try {
                CertPathValidatorUtilities.verifyX509Certificate(x509Certificate2, publicKey, extendedPKIXParameters.getSigProvider());
            } catch (GeneralSecurityException e) {
                throw new ExtCertPathValidatorException("Could not validate certificate signature.", e, certPath, i);
            }
        }
        try {
            x509Certificate2.checkValidity(CertPathValidatorUtilities.getValidCertDateFromValidityModel(extendedPKIXParameters, certPath, i));
            if (extendedPKIXParameters.isRevocationEnabled()) {
                try {
                    checkCRLs(extendedPKIXParameters, x509Certificate2, CertPathValidatorUtilities.getValidCertDateFromValidityModel(extendedPKIXParameters, certPath, i), x509Certificate, publicKey, certificates);
                } catch (AnnotatedException e2) {
                    throw new ExtCertPathValidatorException(e2.getMessage(), e2.getCause() != null ? e2.getCause() : e2, certPath, i);
                }
            }
            if (CertPathValidatorUtilities.getEncodedIssuerPrincipal(x509Certificate2).equals(x500Principal)) {
                return;
            }
            throw new ExtCertPathValidatorException("IssuerName(" + CertPathValidatorUtilities.getEncodedIssuerPrincipal(x509Certificate2) + ") does not match SubjectName(" + x500Principal + ") of signing certificate.", null, certPath, i);
        } catch (CertificateExpiredException e3) {
            throw new ExtCertPathValidatorException("Could not validate certificate: " + e3.getMessage(), e3, certPath, i);
        } catch (CertificateNotYetValidException e4) {
            throw new ExtCertPathValidatorException("Could not validate certificate: " + e4.getMessage(), e4, certPath, i);
        } catch (AnnotatedException e5) {
            throw new ExtCertPathValidatorException("Could not validate time of certificate.", e5, certPath, i);
        }
    }

    public static void processCertBC(CertPath certPath, int i, PKIXNameConstraintValidator pKIXNameConstraintValidator) {
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i);
        int size = certificates.size();
        if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate) || size - i >= size) {
            try {
                ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(new ASN1InputStream(CertPathValidatorUtilities.getSubjectPrincipal(x509Certificate).getEncoded()).readObject());
                try {
                    pKIXNameConstraintValidator.checkPermittedDN(aSN1Sequence);
                    pKIXNameConstraintValidator.checkExcludedDN(aSN1Sequence);
                    try {
                        GeneralNames generalNames = GeneralNames.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, SUBJECT_ALTERNATIVE_NAME));
                        Enumeration elements = new X509Name(aSN1Sequence).getValues(X509Name.EmailAddress).elements();
                        while (elements.hasMoreElements()) {
                            GeneralName generalName = new GeneralName(1, (String) elements.nextElement());
                            try {
                                pKIXNameConstraintValidator.checkPermitted(generalName);
                                pKIXNameConstraintValidator.checkExcluded(generalName);
                            } catch (PKIXNameConstraintValidatorException e) {
                                throw new CertPathValidatorException("Subtree check for certificate subject alternative email failed.", e, certPath, i);
                            }
                        }
                        if (generalNames == null) {
                            return;
                        }
                        try {
                            GeneralName[] names = generalNames.getNames();
                            for (int i2 = 0; i2 < names.length; i2++) {
                                try {
                                    pKIXNameConstraintValidator.checkPermitted(names[i2]);
                                    pKIXNameConstraintValidator.checkExcluded(names[i2]);
                                } catch (PKIXNameConstraintValidatorException e2) {
                                    throw new CertPathValidatorException("Subtree check for certificate subject alternative name failed.", e2, certPath, i);
                                }
                            }
                        } catch (Exception e3) {
                            throw new CertPathValidatorException("Subject alternative name contents could not be decoded.", e3, certPath, i);
                        }
                    } catch (Exception e4) {
                        throw new CertPathValidatorException("Subject alternative name extension could not be decoded.", e4, certPath, i);
                    }
                } catch (PKIXNameConstraintValidatorException e5) {
                    throw new CertPathValidatorException("Subtree check for certificate subject failed.", e5, certPath, i);
                }
            } catch (Exception e6) {
                throw new CertPathValidatorException("Exception extracting subject name when checking subtrees.", e6, certPath, i);
            }
        }
    }

    public static PKIXPolicyNode processCertD(CertPath certPath, int i, Set set, PKIXPolicyNode pKIXPolicyNode, List[] listArr, int i2) {
        PKIXPolicyNode pKIXPolicyNode2;
        PKIXPolicyNode pKIXPolicyNode3;
        String str;
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i);
        int size = certificates.size();
        int i3 = size - i;
        try {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CERTIFICATE_POLICIES));
            if (aSN1Sequence == null || pKIXPolicyNode == null) {
                return null;
            }
            Enumeration objects = aSN1Sequence.getObjects();
            HashSet hashSet = new HashSet();
            while (objects.hasMoreElements()) {
                PolicyInformation policyInformation = PolicyInformation.getInstance(objects.nextElement());
                DERObjectIdentifier policyIdentifier = policyInformation.getPolicyIdentifier();
                hashSet.add(policyIdentifier.getId());
                if (!"2.5.29.32.0".equals(policyIdentifier.getId())) {
                    try {
                        Set qualifierSet = CertPathValidatorUtilities.getQualifierSet(policyInformation.getPolicyQualifiers());
                        if (!CertPathValidatorUtilities.processCertD1i(i3, listArr, policyIdentifier, qualifierSet)) {
                            CertPathValidatorUtilities.processCertD1ii(i3, listArr, policyIdentifier, qualifierSet);
                        }
                    } catch (CertPathValidatorException e) {
                        throw new ExtCertPathValidatorException("Policy qualifier info set could not be build.", e, certPath, i);
                    }
                }
            }
            if (set.isEmpty() || set.contains("2.5.29.32.0")) {
                set.clear();
                set.addAll(hashSet);
            } else {
                HashSet hashSet2 = new HashSet();
                for (Object obj : set) {
                    if (hashSet.contains(obj)) {
                        hashSet2.add(obj);
                    }
                }
                set.clear();
                set.addAll(hashSet2);
            }
            if (i2 > 0 || (i3 < size && CertPathValidatorUtilities.isSelfIssued(x509Certificate))) {
                Enumeration objects2 = aSN1Sequence.getObjects();
                while (true) {
                    if (!objects2.hasMoreElements()) {
                        break;
                    }
                    PolicyInformation policyInformation2 = PolicyInformation.getInstance(objects2.nextElement());
                    if ("2.5.29.32.0".equals(policyInformation2.getPolicyIdentifier().getId())) {
                        Set qualifierSet2 = CertPathValidatorUtilities.getQualifierSet(policyInformation2.getPolicyQualifiers());
                        List list = listArr[i3 - 1];
                        for (int i4 = 0; i4 < list.size(); i4++) {
                            PKIXPolicyNode pKIXPolicyNode4 = (PKIXPolicyNode) list.get(i4);
                            for (Object obj2 : pKIXPolicyNode4.getExpectedPolicies()) {
                                if (obj2 instanceof String) {
                                    str = (String) obj2;
                                } else if (obj2 instanceof DERObjectIdentifier) {
                                    str = ((DERObjectIdentifier) obj2).getId();
                                }
                                Iterator children = pKIXPolicyNode4.getChildren();
                                boolean z = false;
                                while (children.hasNext()) {
                                    if (str.equals(((PKIXPolicyNode) children.next()).getValidPolicy())) {
                                        z = true;
                                    }
                                }
                                if (!z) {
                                    HashSet hashSet3 = new HashSet();
                                    hashSet3.add(str);
                                    PKIXPolicyNode pKIXPolicyNode5 = new PKIXPolicyNode(new ArrayList(), i3, hashSet3, pKIXPolicyNode4, qualifierSet2, str, false);
                                    pKIXPolicyNode4.addChild(pKIXPolicyNode5);
                                    listArr[i3].add(pKIXPolicyNode5);
                                }
                            }
                        }
                    }
                }
            }
            int i5 = i3 - 1;
            PKIXPolicyNode pKIXPolicyNode6 = pKIXPolicyNode;
            while (true) {
                pKIXPolicyNode2 = pKIXPolicyNode6;
                if (i5 < 0) {
                    break;
                }
                List list2 = listArr[i5];
                int i6 = 0;
                while (true) {
                    pKIXPolicyNode3 = pKIXPolicyNode2;
                    if (i6 < list2.size()) {
                        PKIXPolicyNode pKIXPolicyNode7 = (PKIXPolicyNode) list2.get(i6);
                        PKIXPolicyNode pKIXPolicyNode8 = pKIXPolicyNode2;
                        if (!pKIXPolicyNode7.hasChildren()) {
                            PKIXPolicyNode removePolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode2, listArr, pKIXPolicyNode7);
                            pKIXPolicyNode8 = removePolicyNode;
                            if (removePolicyNode == null) {
                                pKIXPolicyNode3 = removePolicyNode;
                                break;
                            }
                        }
                        i6++;
                        pKIXPolicyNode2 = pKIXPolicyNode8;
                    }
                }
                i5--;
                pKIXPolicyNode6 = pKIXPolicyNode3;
            }
            Set<String> criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs != null) {
                boolean contains = criticalExtensionOIDs.contains(CERTIFICATE_POLICIES);
                List list3 = listArr[i3];
                for (int i7 = 0; i7 < list3.size(); i7++) {
                    ((PKIXPolicyNode) list3.get(i7)).setCritical(contains);
                }
            }
            return pKIXPolicyNode2;
        } catch (AnnotatedException e2) {
            throw new ExtCertPathValidatorException("Could not read certificate policies extension from certificate.", e2, certPath, i);
        }
    }

    public static PKIXPolicyNode processCertE(CertPath certPath, int i, PKIXPolicyNode pKIXPolicyNode) {
        try {
            if (ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), CERTIFICATE_POLICIES)) == null) {
                pKIXPolicyNode = null;
            }
            return pKIXPolicyNode;
        } catch (AnnotatedException e) {
            throw new ExtCertPathValidatorException("Could not read certificate policies extension from certificate.", e, certPath, i);
        }
    }

    public static void processCertF(CertPath certPath, int i, PKIXPolicyNode pKIXPolicyNode, int i2) {
        if (i2 > 0 || pKIXPolicyNode != null) {
            return;
        }
        throw new ExtCertPathValidatorException("No valid policy tree found when one expected.", null, certPath, i);
    }

    public static int wrapupCertA(int i, X509Certificate x509Certificate) {
        int i2 = i;
        if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate)) {
            i2 = i;
            if (i != 0) {
                i2 = i - 1;
            }
        }
        return i2;
    }

    public static int wrapupCertB(CertPath certPath, int i, int i2) {
        try {
            ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), POLICY_CONSTRAINTS));
            if (aSN1Sequence != null) {
                Enumeration objects = aSN1Sequence.getObjects();
                while (objects.hasMoreElements()) {
                    ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) objects.nextElement();
                    if (aSN1TaggedObject.getTagNo() == 0) {
                        try {
                            if (DERInteger.getInstance(aSN1TaggedObject, false).getValue().intValue() == 0) {
                                return 0;
                            }
                        } catch (Exception e) {
                            throw new ExtCertPathValidatorException("Policy constraints requireExplicitPolicy field could not be decoded.", e, certPath, i);
                        }
                    }
                }
            }
            return i2;
        } catch (AnnotatedException e2) {
            throw new ExtCertPathValidatorException("Policy constraints could not be decoded.", e2, certPath, i);
        }
    }

    public static void wrapupCertF(CertPath certPath, int i, List list, Set set) {
        X509Certificate x509Certificate = (X509Certificate) certPath.getCertificates().get(i);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((PKIXCertPathChecker) it.next()).check(x509Certificate, set);
            } catch (CertPathValidatorException e) {
                throw new ExtCertPathValidatorException("Additional certificate path checker failed.", e, certPath, i);
            }
        }
        if (set.isEmpty()) {
            return;
        }
        throw new ExtCertPathValidatorException("Certificate has unsupported critical extension", null, certPath, i);
    }

    public static PKIXPolicyNode wrapupCertG(CertPath certPath, ExtendedPKIXParameters extendedPKIXParameters, Set set, int i, List[] listArr, PKIXPolicyNode pKIXPolicyNode, Set set2) {
        PKIXPolicyNode pKIXPolicyNode2;
        int size = certPath.getCertificates().size();
        if (pKIXPolicyNode == null) {
            if (extendedPKIXParameters.isExplicitPolicyRequired()) {
                throw new ExtCertPathValidatorException("Explicit policy requested but none available.", null, certPath, i);
            }
            pKIXPolicyNode2 = null;
        } else if (CertPathValidatorUtilities.isAnyPolicy(set)) {
            pKIXPolicyNode2 = pKIXPolicyNode;
            if (extendedPKIXParameters.isExplicitPolicyRequired()) {
                if (set2.isEmpty()) {
                    throw new ExtCertPathValidatorException("Explicit policy requested but none available.", null, certPath, i);
                }
                HashSet<PKIXPolicyNode> hashSet = new HashSet();
                for (List list : listArr) {
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        PKIXPolicyNode pKIXPolicyNode3 = (PKIXPolicyNode) list.get(i2);
                        if ("2.5.29.32.0".equals(pKIXPolicyNode3.getValidPolicy())) {
                            Iterator children = pKIXPolicyNode3.getChildren();
                            while (children.hasNext()) {
                                hashSet.add(children.next());
                            }
                        }
                    }
                }
                for (PKIXPolicyNode pKIXPolicyNode4 : hashSet) {
                    set2.contains(pKIXPolicyNode4.getValidPolicy());
                }
                pKIXPolicyNode2 = pKIXPolicyNode;
                if (pKIXPolicyNode != null) {
                    int i3 = size - 1;
                    while (true) {
                        pKIXPolicyNode2 = pKIXPolicyNode;
                        if (i3 < 0) {
                            break;
                        }
                        List list2 = listArr[i3];
                        int i4 = 0;
                        while (i4 < list2.size()) {
                            PKIXPolicyNode pKIXPolicyNode5 = (PKIXPolicyNode) list2.get(i4);
                            PKIXPolicyNode pKIXPolicyNode6 = pKIXPolicyNode;
                            if (!pKIXPolicyNode5.hasChildren()) {
                                pKIXPolicyNode6 = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode, listArr, pKIXPolicyNode5);
                            }
                            i4++;
                            pKIXPolicyNode = pKIXPolicyNode6;
                        }
                        i3--;
                    }
                }
            }
        } else {
            HashSet<PKIXPolicyNode> hashSet2 = new HashSet();
            for (List list3 : listArr) {
                for (int i5 = 0; i5 < list3.size(); i5++) {
                    PKIXPolicyNode pKIXPolicyNode7 = (PKIXPolicyNode) list3.get(i5);
                    if ("2.5.29.32.0".equals(pKIXPolicyNode7.getValidPolicy())) {
                        Iterator children2 = pKIXPolicyNode7.getChildren();
                        while (children2.hasNext()) {
                            PKIXPolicyNode pKIXPolicyNode8 = (PKIXPolicyNode) children2.next();
                            if (!"2.5.29.32.0".equals(pKIXPolicyNode8.getValidPolicy())) {
                                hashSet2.add(pKIXPolicyNode8);
                            }
                        }
                    }
                }
            }
            for (PKIXPolicyNode pKIXPolicyNode9 : hashSet2) {
                if (!set.contains(pKIXPolicyNode9.getValidPolicy())) {
                    pKIXPolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode, listArr, pKIXPolicyNode9);
                }
            }
            pKIXPolicyNode2 = pKIXPolicyNode;
            if (pKIXPolicyNode != null) {
                int i6 = size - 1;
                while (true) {
                    pKIXPolicyNode2 = pKIXPolicyNode;
                    if (i6 < 0) {
                        break;
                    }
                    List list4 = listArr[i6];
                    int i7 = 0;
                    while (i7 < list4.size()) {
                        PKIXPolicyNode pKIXPolicyNode10 = (PKIXPolicyNode) list4.get(i7);
                        PKIXPolicyNode pKIXPolicyNode11 = pKIXPolicyNode;
                        if (!pKIXPolicyNode10.hasChildren()) {
                            pKIXPolicyNode11 = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode, listArr, pKIXPolicyNode10);
                        }
                        i7++;
                        pKIXPolicyNode = pKIXPolicyNode11;
                    }
                    i6--;
                }
            }
        }
        return pKIXPolicyNode2;
    }
}
