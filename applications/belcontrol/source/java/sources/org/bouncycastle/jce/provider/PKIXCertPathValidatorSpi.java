package org.bouncycastle.jce.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathParameters;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertPathValidatorSpi;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXCertPathValidatorResult;
import java.security.cert.PKIXParameters;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.x509.ExtendedPKIXParameters;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi.class */
public class PKIXCertPathValidatorSpi extends CertPathValidatorSpi {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v100 */
    /* JADX WARN: Type inference failed for: r0v102, types: [java.security.cert.PKIXCertPathChecker] */
    /* JADX WARN: Type inference failed for: r0v104, types: [org.bouncycastle.util.Selector, java.util.List] */
    /* JADX WARN: Type inference failed for: r0v110 */
    /* JADX WARN: Type inference failed for: r0v116 */
    /* JADX WARN: Type inference failed for: r0v119 */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.util.List, java.util.Set] */
    /* JADX WARN: Type inference failed for: r0v120 */
    /* JADX WARN: Type inference failed for: r0v121 */
    /* JADX WARN: Type inference failed for: r0v122 */
    /* JADX WARN: Type inference failed for: r0v123 */
    /* JADX WARN: Type inference failed for: r0v124 */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v17, types: [int, java.security.cert.TrustAnchor] */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v24, types: [org.bouncycastle.jce.provider.PKIXPolicyNode] */
    /* JADX WARN: Type inference failed for: r0v25, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v34, types: [java.security.cert.TrustAnchor] */
    /* JADX WARN: Type inference failed for: r0v35, types: [java.security.cert.X509Certificate, java.security.cert.TrustAnchor] */
    /* JADX WARN: Type inference failed for: r0v46, types: [java.util.List, java.util.Iterator, boolean] */
    /* JADX WARN: Type inference failed for: r0v52, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v61, types: [java.util.List, java.util.List[], java.util.Set, int] */
    /* JADX WARN: Type inference failed for: r0v62, types: [org.bouncycastle.jce.provider.PKIXPolicyNode, java.security.cert.TrustAnchor, java.security.cert.PolicyNode] */
    /* JADX WARN: Type inference failed for: r0v69, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v70, types: [java.util.List[], java.util.Set, org.bouncycastle.jce.provider.PKIXNameConstraintValidator] */
    /* JADX WARN: Type inference failed for: r0v71, types: [org.bouncycastle.jce.provider.PKIXPolicyNode, int] */
    /* JADX WARN: Type inference failed for: r0v78, types: [java.util.List[], org.bouncycastle.jce.provider.PKIXPolicyNode] */
    /* JADX WARN: Type inference failed for: r0v79, types: [org.bouncycastle.jce.provider.PKIXPolicyNode, org.bouncycastle.jce.provider.PKIXNameConstraintValidator] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.List, int] */
    /* JADX WARN: Type inference failed for: r0v84, types: [int] */
    /* JADX WARN: Type inference failed for: r0v89, types: [java.util.List, java.util.Set] */
    /* JADX WARN: Type inference failed for: r0v99 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r5v10, types: [org.bouncycastle.jce.provider.PKIXPolicyNode] */
    /* JADX WARN: Type inference failed for: r5v7, types: [org.bouncycastle.jce.provider.PKIXPolicyNode] */
    @Override // java.security.cert.CertPathValidatorSpi
    public CertPathValidatorResult engineValidate(CertPath certPath, CertPathParameters certPathParameters) {
        X500Principal x500Principal;
        PublicKey publicKey;
        ?? hasNext;
        HashSet hashSet;
        ?? r0;
        boolean z;
        ?? r02;
        X500Principal x500Principal2;
        PublicKey publicKey2;
        PublicKey publicKey3;
        HashSet hashSet2;
        ?? r03;
        if (!(certPathParameters instanceof PKIXParameters)) {
            throw new InvalidAlgorithmParameterException("Parameters must be a " + PKIXParameters.class.getName() + " instance.");
        }
        ExtendedPKIXParameters extendedPKIXParameters = certPathParameters instanceof ExtendedPKIXParameters ? (ExtendedPKIXParameters) certPathParameters : ExtendedPKIXParameters.getInstance((PKIXParameters) certPathParameters);
        if (extendedPKIXParameters.getTrustAnchors() == null) {
            throw new InvalidAlgorithmParameterException("trustAnchors is null, this is not allowed for certification path validation.");
        }
        if (certPath.getCertificates().size().isEmpty()) {
            throw new CertPathValidatorException("Certification path is empty.", null, certPath, 0);
        }
        ?? initialPolicies = extendedPKIXParameters.getInitialPolicies();
        try {
            initialPolicies = CertPathValidatorUtilities.findTrustAnchor((X509Certificate) initialPolicies.get(initialPolicies.size() - 1), extendedPKIXParameters.getTrustAnchors(), extendedPKIXParameters.getSigProvider());
            if (initialPolicies == 0) {
                throw new CertPathValidatorException("Trust anchor for certification path not found.", null, certPath, -1);
            }
            int i = initialPolicies + 1;
            ArrayList[] arrayListArr = new ArrayList[i];
            int i2 = 0;
            while (true) {
                ?? r04 = i2;
                if (r04 >= i) {
                    break;
                }
                r04[i2] = new ArrayList();
                i2++;
            }
            HashSet hashSet3 = new HashSet();
            hashSet3.add("2.5.29.32.0");
            ?? pKIXPolicyNode = new PKIXPolicyNode(new ArrayList(), 0, hashSet3, null, new HashSet(), "2.5.29.32.0", false);
            PublicKey publicKey4 = pKIXPolicyNode;
            pKIXPolicyNode[0].add(publicKey4);
            new PKIXNameConstraintValidator();
            new HashSet();
            int i3 = extendedPKIXParameters.isExplicitPolicyRequired() ? 0 : i;
            int i4 = extendedPKIXParameters.isAnyPolicyInhibited() ? 0 : i;
            boolean isPolicyMappingInhibited = extendedPKIXParameters.isPolicyMappingInhibited();
            ?? r05 = isPolicyMappingInhibited;
            if (isPolicyMappingInhibited) {
                r05 = 0;
                i = 0;
            }
            ?? trustedCert = r05.getTrustedCert();
            X509Certificate x509Certificate = trustedCert;
            try {
                if (x509Certificate != null) {
                    x500Principal = CertPathValidatorUtilities.getSubjectPrincipal(x509Certificate);
                    publicKey = x509Certificate.getPublicKey();
                } else {
                    x500Principal = new X500Principal(trustedCert.getCAName());
                    publicKey = trustedCert.getCAPublicKey();
                }
                try {
                    AlgorithmIdentifier algorithmIdentifier = CertPathValidatorUtilities.getAlgorithmIdentifier(publicKey);
                    algorithmIdentifier.getObjectId();
                    algorithmIdentifier.getParameters();
                    if (extendedPKIXParameters.getTargetConstraints() != null) {
                        ?? targetConstraints = extendedPKIXParameters.getTargetConstraints();
                        if (!targetConstraints.match((X509Certificate) targetConstraints.get(0))) {
                            throw new ExtCertPathValidatorException("Target certificate in certification path does not match targetConstraints.", null, certPath, 0);
                        }
                    }
                    Iterator<PKIXCertPathChecker> it = extendedPKIXParameters.getCertPathCheckers().iterator();
                    while (true) {
                        hasNext = it.hasNext();
                        if (hasNext == 0) {
                            break;
                        }
                        ?? r06 = (PKIXCertPathChecker) hasNext.next();
                        r06.init(false);
                        it = r06;
                    }
                    int size = hasNext.size();
                    int i5 = i4;
                    int i6 = i5;
                    int i7 = i5 - 1;
                    X500Principal x500Principal3 = x500Principal;
                    X500Principal x500Principal4 = x500Principal3;
                    X509Certificate x509Certificate2 = x500Principal3;
                    X509Certificate x509Certificate3 = x500Principal3;
                    while (true) {
                        ?? r07 = i7;
                        if (r07 < 0) {
                            RFC3280CertPathUtilities.wrapupCertA(i3, x509Certificate3);
                            int i8 = i7 + 1;
                            RFC3280CertPathUtilities.wrapupCertB(certPath, i8, i8);
                            x509Certificate3.getCriticalExtensionOIDs();
                            if (hashSet != null) {
                                HashSet hashSet4 = new HashSet(hashSet);
                                hashSet4.remove(RFC3280CertPathUtilities.KEY_USAGE);
                                hashSet4.remove(RFC3280CertPathUtilities.CERTIFICATE_POLICIES);
                                hashSet4.remove(RFC3280CertPathUtilities.POLICY_MAPPINGS);
                                hashSet4.remove(RFC3280CertPathUtilities.INHIBIT_ANY_POLICY);
                                hashSet4.remove(RFC3280CertPathUtilities.ISSUING_DISTRIBUTION_POINT);
                                hashSet4.remove(RFC3280CertPathUtilities.DELTA_CRL_INDICATOR);
                                hashSet4.remove(RFC3280CertPathUtilities.POLICY_CONSTRAINTS);
                                hashSet4.remove(RFC3280CertPathUtilities.BASIC_CONSTRAINTS);
                                hashSet4.remove(RFC3280CertPathUtilities.SUBJECT_ALTERNATIVE_NAME);
                                hashSet4.remove(RFC3280CertPathUtilities.NAME_CONSTRAINTS);
                                hashSet4.remove(RFC3280CertPathUtilities.CRL_DISTRIBUTION_POINTS);
                                r0 = hashSet4;
                            } else {
                                r0 = new HashSet();
                            }
                            RFC3280CertPathUtilities.wrapupCertF(certPath, r0, r0, r0);
                            ?? wrapupCertG = RFC3280CertPathUtilities.wrapupCertG(certPath, extendedPKIXParameters, r0, r0, r0, publicKey4, r0);
                            if (wrapupCertG <= 0 && wrapupCertG == 0) {
                                throw new CertPathValidatorException("Path processing failed on policy.", null, certPath, i7);
                            }
                            return new PKIXCertPathValidatorResult(wrapupCertG, wrapupCertG, x509Certificate3.getPublicKey());
                        }
                        x509Certificate3 = (X509Certificate) r07.get(i7);
                        ?? r08 = i7;
                        if (r08 == r08.size() - 1) {
                            r02 = 1;
                            z = true;
                        } else {
                            r02 = 0;
                            z = false;
                        }
                        RFC3280CertPathUtilities.processCertA(certPath, extendedPKIXParameters, i7, publicKey, z, x500Principal4, x509Certificate);
                        RFC3280CertPathUtilities.processCertBC(certPath, i7, r02);
                        ?? processCertE = RFC3280CertPathUtilities.processCertE(certPath, i7, RFC3280CertPathUtilities.processCertD(certPath, i7, r02, publicKey4, r02, i6));
                        RFC3280CertPathUtilities.processCertF(certPath, i7, processCertE, i3);
                        int i9 = processCertE - i7;
                        if (i9 != i9) {
                            ?? r09 = i9;
                            if (x509Certificate3 != null) {
                                int version = x509Certificate3.getVersion();
                                r09 = version;
                                if (version == 1) {
                                    throw new CertPathValidatorException("Version 1 certificates can't be used as CA ones.", null, certPath, i7);
                                }
                            }
                            RFC3280CertPathUtilities.prepareNextCertA(certPath, i7);
                            ?? prepareCertB = RFC3280CertPathUtilities.prepareCertB(certPath, i7, r09, r09, x509Certificate2 == 1 ? 1 : 0);
                            publicKey3 = prepareCertB;
                            RFC3280CertPathUtilities.prepareNextCertG(certPath, i7, prepareCertB);
                            RFC3280CertPathUtilities.prepareNextCertH1(certPath, i7, i3);
                            RFC3280CertPathUtilities.prepareNextCertH2(certPath, i7, x509Certificate2 == 1 ? 1 : 0);
                            int prepareNextCertI1 = RFC3280CertPathUtilities.prepareNextCertI1(certPath, i7, RFC3280CertPathUtilities.prepareNextCertH3(certPath, i7, i6));
                            i3 = prepareNextCertI1;
                            ?? prepareNextCertI2 = RFC3280CertPathUtilities.prepareNextCertI2(certPath, i7, prepareNextCertI1);
                            x509Certificate2 = prepareNextCertI2;
                            i6 = RFC3280CertPathUtilities.prepareNextCertJ(certPath, i7, prepareNextCertI2);
                            RFC3280CertPathUtilities.prepareNextCertK(certPath, i7);
                            size = RFC3280CertPathUtilities.prepareNextCertM(certPath, i7, RFC3280CertPathUtilities.prepareNextCertL(certPath, i7, size));
                            RFC3280CertPathUtilities.prepareNextCertN(certPath, i7);
                            x509Certificate3.getCriticalExtensionOIDs();
                            if (hashSet2 != null) {
                                HashSet hashSet5 = new HashSet(hashSet2);
                                hashSet5.remove(RFC3280CertPathUtilities.KEY_USAGE);
                                hashSet5.remove(RFC3280CertPathUtilities.CERTIFICATE_POLICIES);
                                hashSet5.remove(RFC3280CertPathUtilities.POLICY_MAPPINGS);
                                hashSet5.remove(RFC3280CertPathUtilities.INHIBIT_ANY_POLICY);
                                hashSet5.remove(RFC3280CertPathUtilities.ISSUING_DISTRIBUTION_POINT);
                                hashSet5.remove(RFC3280CertPathUtilities.DELTA_CRL_INDICATOR);
                                hashSet5.remove(RFC3280CertPathUtilities.POLICY_CONSTRAINTS);
                                hashSet5.remove(RFC3280CertPathUtilities.BASIC_CONSTRAINTS);
                                hashSet5.remove(RFC3280CertPathUtilities.SUBJECT_ALTERNATIVE_NAME);
                                hashSet5.remove(RFC3280CertPathUtilities.NAME_CONSTRAINTS);
                                r03 = hashSet5;
                            } else {
                                r03 = new HashSet();
                            }
                            RFC3280CertPathUtilities.prepareNextCertO(certPath, i7, r03, r03);
                            x500Principal2 = CertPathValidatorUtilities.getSubjectPrincipal(x509Certificate3);
                            try {
                                publicKey2 = CertPathValidatorUtilities.getNextWorkingKey(certPath.getCertificates(), i7);
                                AlgorithmIdentifier algorithmIdentifier2 = CertPathValidatorUtilities.getAlgorithmIdentifier(publicKey2);
                                algorithmIdentifier2.getObjectId();
                                algorithmIdentifier2.getParameters();
                                x509Certificate = x509Certificate3;
                            } catch (CertPathValidatorException e) {
                                throw new CertPathValidatorException("Next working key could not be retrieved.", e, certPath, i7);
                            }
                        } else {
                            x500Principal2 = x500Principal4;
                            PublicKey publicKey5 = publicKey;
                            publicKey2 = publicKey5;
                            publicKey3 = publicKey5;
                        }
                        i7--;
                        publicKey4 = publicKey3;
                        publicKey = publicKey2;
                        x500Principal4 = x500Principal2;
                    }
                } catch (CertPathValidatorException e2) {
                    throw new ExtCertPathValidatorException("Algorithm identifier of public key of trust anchor could not be read.", e2, certPath, -1);
                }
            } catch (IllegalArgumentException e3) {
                throw new ExtCertPathValidatorException("Subject of trust anchor could not be (re)encoded.", e3, certPath, -1);
            }
        } catch (AnnotatedException e4) {
            throw new CertPathValidatorException(e4.getMessage(), e4, certPath, initialPolicies.size() - 1);
        }
    }
}
