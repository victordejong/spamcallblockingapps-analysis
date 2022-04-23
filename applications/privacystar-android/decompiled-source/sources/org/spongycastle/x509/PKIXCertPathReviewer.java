package org.spongycastle.x509;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertificateFactory;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXParameters;
import java.security.cert.PolicyNode;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Vector;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.x509.AccessDescription;
import org.spongycastle.asn1.x509.AuthorityInformationAccess;
import org.spongycastle.asn1.x509.AuthorityKeyIdentifier;
import org.spongycastle.asn1.x509.BasicConstraints;
import org.spongycastle.asn1.x509.CRLDistPoint;
import org.spongycastle.asn1.x509.DistributionPoint;
import org.spongycastle.asn1.x509.DistributionPointName;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.GeneralNames;
import org.spongycastle.asn1.x509.GeneralSubtree;
import org.spongycastle.asn1.x509.NameConstraints;
import org.spongycastle.asn1.x509.qualified.MonetaryValue;
import org.spongycastle.asn1.x509.qualified.QCStatement;
import org.spongycastle.i18n.ErrorBundle;
import org.spongycastle.i18n.filter.TrustedInput;
import org.spongycastle.i18n.filter.UntrustedInput;
import org.spongycastle.jce.provider.AnnotatedException;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.provider.PKIXNameConstraintValidator;
import org.spongycastle.jce.provider.PKIXNameConstraintValidatorException;
import org.spongycastle.util.Integers;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/x509/PKIXCertPathReviewer.class */
public class PKIXCertPathReviewer extends CertPathValidatorUtilities {
    private static final String RESOURCE_NAME = "org.spongycastle.x509.CertPathReviewerMessages";
    protected CertPath certPath;
    protected List certs;
    protected List[] errors;
    private boolean initialized;

    /* renamed from: n */
    protected int f1816n;
    protected List[] notifications;
    protected PKIXParameters pkixParams;
    protected PolicyNode policyTree;
    protected PublicKey subjectPublicKey;
    protected TrustAnchor trustAnchor;
    protected Date validDate;
    private static final String QC_STATEMENT = Extension.qCStatements.getId();
    private static final String CRL_DIST_POINTS = Extension.cRLDistributionPoints.getId();
    private static final String AUTH_INFO_ACCESS = Extension.authorityInfoAccess.getId();

    public PKIXCertPathReviewer() {
    }

    public PKIXCertPathReviewer(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        init(certPath, pKIXParameters);
    }

    private String IPtoString(byte[] bArr) {
        String str;
        try {
            str = InetAddress.getByAddress(bArr).getHostAddress();
        } catch (Exception e) {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i != bArr.length; i++) {
                stringBuffer.append(Integer.toHexString(bArr[i] & 255));
                stringBuffer.append(' ');
            }
            str = stringBuffer.toString();
        }
        return str;
    }

    private void checkCriticalExtensions() {
        List<PKIXCertPathChecker> certPathCheckers = this.pkixParams.getCertPathCheckers();
        for (PKIXCertPathChecker pKIXCertPathChecker : certPathCheckers) {
            try {
                try {
                    pKIXCertPathChecker.init(false);
                } catch (CertPathValidatorException e) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.certPathCheckerError", new Object[]{e.getMessage(), e, e.getClass().getName()}), e);
                }
            } catch (CertPathReviewerException e2) {
                addError(e2.getErrorMessage(), e2.getIndex());
                return;
            }
        }
        for (int size = this.certs.size() - 1; size >= 0; size--) {
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            Set<String> criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs != null && !criticalExtensionOIDs.isEmpty()) {
                criticalExtensionOIDs.remove(KEY_USAGE);
                criticalExtensionOIDs.remove(CERTIFICATE_POLICIES);
                criticalExtensionOIDs.remove(POLICY_MAPPINGS);
                criticalExtensionOIDs.remove(INHIBIT_ANY_POLICY);
                criticalExtensionOIDs.remove(ISSUING_DISTRIBUTION_POINT);
                criticalExtensionOIDs.remove(DELTA_CRL_INDICATOR);
                criticalExtensionOIDs.remove(POLICY_CONSTRAINTS);
                criticalExtensionOIDs.remove(BASIC_CONSTRAINTS);
                criticalExtensionOIDs.remove(SUBJECT_ALTERNATIVE_NAME);
                criticalExtensionOIDs.remove(NAME_CONSTRAINTS);
                if (criticalExtensionOIDs.contains(QC_STATEMENT) && processQcStatements(x509Certificate, size)) {
                    criticalExtensionOIDs.remove(QC_STATEMENT);
                }
                for (PKIXCertPathChecker pKIXCertPathChecker2 : certPathCheckers) {
                    try {
                        pKIXCertPathChecker2.check(x509Certificate, criticalExtensionOIDs);
                    } catch (CertPathValidatorException e3) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.criticalExtensionError", new Object[]{e3.getMessage(), e3, e3.getClass().getName()}), e3.getCause(), this.certPath, size);
                    }
                }
                if (!criticalExtensionOIDs.isEmpty()) {
                    Iterator<String> it = criticalExtensionOIDs.iterator();
                    while (it.hasNext()) {
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.unknownCriticalExt", new Object[]{new ASN1ObjectIdentifier(it.next())}), size);
                    }
                }
            }
        }
    }

    private void checkNameConstraints() {
        PKIXNameConstraintValidator pKIXNameConstraintValidator = new PKIXNameConstraintValidator();
        try {
            for (int size = this.certs.size() - 1; size > 0; size--) {
                int i = this.f1816n;
                X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
                if (!isSelfIssued(x509Certificate)) {
                    X500Principal subjectPrincipal = getSubjectPrincipal(x509Certificate);
                    try {
                        ASN1Sequence aSN1Sequence = (ASN1Sequence) new ASN1InputStream(new ByteArrayInputStream(subjectPrincipal.getEncoded())).readObject();
                        try {
                            pKIXNameConstraintValidator.checkPermittedDN(aSN1Sequence);
                            try {
                                pKIXNameConstraintValidator.checkExcludedDN(aSN1Sequence);
                                try {
                                    ASN1Sequence aSN1Sequence2 = (ASN1Sequence) getExtensionValue(x509Certificate, SUBJECT_ALTERNATIVE_NAME);
                                    if (aSN1Sequence2 != null) {
                                        for (int i2 = 0; i2 < aSN1Sequence2.size(); i2++) {
                                            GeneralName instance = GeneralName.getInstance(aSN1Sequence2.getObjectAt(i2));
                                            try {
                                                pKIXNameConstraintValidator.checkPermitted(instance);
                                                pKIXNameConstraintValidator.checkExcluded(instance);
                                            } catch (PKIXNameConstraintValidatorException e) {
                                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notPermittedEmail", new Object[]{new UntrustedInput(instance)}), e, this.certPath, size);
                                            }
                                        }
                                    }
                                } catch (AnnotatedException e2) {
                                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.subjAltNameExtError"), e2, this.certPath, size);
                                }
                            } catch (PKIXNameConstraintValidatorException e3) {
                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.excludedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e3, this.certPath, size);
                            }
                        } catch (PKIXNameConstraintValidatorException e4) {
                            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notPermittedDN", new Object[]{new UntrustedInput(subjectPrincipal.getName())}), e4, this.certPath, size);
                        }
                    } catch (IOException e5) {
                        throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.ncSubjectNameError", new Object[]{new UntrustedInput(subjectPrincipal)}), e5, this.certPath, size);
                    }
                }
                try {
                    ASN1Sequence aSN1Sequence3 = (ASN1Sequence) getExtensionValue(x509Certificate, NAME_CONSTRAINTS);
                    if (aSN1Sequence3 != null) {
                        NameConstraints instance2 = NameConstraints.getInstance(aSN1Sequence3);
                        GeneralSubtree[] permittedSubtrees = instance2.getPermittedSubtrees();
                        if (permittedSubtrees != null) {
                            pKIXNameConstraintValidator.intersectPermittedSubtree(permittedSubtrees);
                        }
                        GeneralSubtree[] excludedSubtrees = instance2.getExcludedSubtrees();
                        if (excludedSubtrees != null) {
                            for (int i3 = 0; i3 != excludedSubtrees.length; i3++) {
                                pKIXNameConstraintValidator.addExcludedSubtree(excludedSubtrees[i3]);
                            }
                        }
                    }
                } catch (AnnotatedException e6) {
                    throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.ncExtError"), e6, this.certPath, size);
                }
            }
        } catch (CertPathReviewerException e7) {
            addError(e7.getErrorMessage(), e7.getIndex());
        }
    }

    private void checkPathLength() {
        BasicConstraints basicConstraints;
        int i = this.f1816n;
        int i2 = 0;
        for (int size = this.certs.size() - 1; size > 0; size--) {
            int i3 = this.f1816n;
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            i2 = i2;
            int i4 = i;
            if (!isSelfIssued(x509Certificate)) {
                if (i <= 0) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.pathLengthExtended"));
                }
                i4 = i - 1;
                i2++;
            }
            try {
                basicConstraints = BasicConstraints.getInstance(getExtensionValue(x509Certificate, BASIC_CONSTRAINTS));
            } catch (AnnotatedException e) {
                addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.processLengthConstError"), size);
                basicConstraints = null;
            }
            i = i4;
            if (basicConstraints != null) {
                BigInteger pathLenConstraint = basicConstraints.getPathLenConstraint();
                i = i4;
                if (pathLenConstraint != null) {
                    int intValue = pathLenConstraint.intValue();
                    i = i4;
                    if (intValue < i4) {
                        i = intValue;
                    }
                }
            }
        }
        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.totalPathLength", new Object[]{Integers.valueOf(i2)}));
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0441 A[Catch: CertPathReviewerException -> 0x0bc3, TRY_ENTER, TRY_LEAVE, TryCatch #8 {CertPathReviewerException -> 0x0bc3, blocks: (B:18:0x00ae, B:22:0x00c6, B:24:0x00e1, B:28:0x00f6, B:30:0x0109, B:32:0x0111, B:34:0x0143, B:36:0x014f, B:38:0x015a, B:40:0x0169, B:41:0x018b, B:45:0x019f, B:49:0x01b3, B:51:0x01c8, B:53:0x01d0, B:55:0x01e3, B:59:0x0203, B:63:0x021b, B:67:0x0231, B:70:0x0247, B:72:0x0251, B:74:0x0270, B:77:0x029b, B:79:0x02a7, B:81:0x02d0, B:83:0x02da, B:85:0x02eb, B:86:0x02f5, B:88:0x02fd, B:90:0x0309, B:92:0x0311, B:95:0x031d, B:101:0x033b, B:104:0x039f, B:105:0x03c1, B:112:0x03e1, B:114:0x03ed, B:116:0x03ff, B:118:0x0407, B:124:0x0435, B:126:0x0441, B:128:0x0456, B:130:0x0462, B:140:0x049b, B:141:0x04b5, B:143:0x04b7, B:146:0x04d2, B:148:0x04e1, B:150:0x04eb, B:152:0x04f5, B:154:0x0525, B:155:0x0545, B:157:0x0549, B:159:0x0554, B:160:0x0574, B:161:0x0575, B:164:0x0584, B:166:0x05a2, B:168:0x05ac, B:170:0x05e0, B:171:0x060d, B:172:0x0621, B:173:0x0627, B:176:0x0634, B:178:0x063e, B:180:0x064f, B:182:0x0660, B:183:0x0682, B:185:0x0685, B:186:0x06a7, B:189:0x06ad, B:190:0x06bc, B:203:0x0701, B:206:0x071a, B:209:0x0728, B:211:0x0732, B:212:0x0743, B:214:0x075b, B:218:0x0775, B:222:0x0791, B:225:0x07a6, B:231:0x07cd, B:232:0x07ed, B:234:0x07f0, B:235:0x0810, B:237:0x0813, B:238:0x0835, B:242:0x084d, B:243:0x086f, B:245:0x0872, B:251:0x088b, B:253:0x089d, B:255:0x08a7, B:257:0x08b1, B:260:0x08c8, B:266:0x08eb, B:268:0x08f5, B:269:0x0915, B:272:0x091c, B:276:0x0926, B:278:0x0930, B:280:0x093a, B:281:0x095a, B:282:0x095b, B:283:0x095e, B:285:0x0968, B:289:0x0977, B:291:0x0982, B:293:0x099d, B:295:0x09a6, B:297:0x09ae, B:300:0x09cc, B:302:0x09d5, B:304:0x09dd, B:307:0x09fc, B:312:0x0a15, B:314:0x0a21, B:316:0x0a32, B:318:0x0a3a, B:319:0x0a43, B:323:0x0a58, B:325:0x0a65, B:329:0x0a75, B:331:0x0a81, B:333:0x0a9d, B:335:0x0aa6, B:337:0x0aae, B:339:0x0ac8, B:342:0x0ae1, B:344:0x0aec, B:346:0x0af4, B:348:0x0b0e, B:351:0x0b23, B:356:0x0b3c, B:358:0x0b48, B:360:0x0b59, B:362:0x0b61, B:363:0x0b6a, B:371:0x0b85, B:372:0x0b9f, B:374:0x0ba2, B:375:0x0bc2), top: B:393:0x00ae, inners: #0, #1, #2, #4, #5, #6, #7, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x071a A[Catch: AnnotatedException -> 0x07ee, CertPathReviewerException -> 0x0bc3, TRY_ENTER, TryCatch #0 {AnnotatedException -> 0x07ee, blocks: (B:203:0x0701, B:206:0x071a, B:209:0x0728, B:211:0x0732, B:212:0x0743, B:214:0x075b, B:218:0x0775), top: B:379:0x0701, outer: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x07a6 A[Catch: AnnotatedException -> 0x07cb, CertPathReviewerException -> 0x0bc3, TRY_ENTER, TRY_LEAVE, TryCatch #5 {AnnotatedException -> 0x07cb, blocks: (B:222:0x0791, B:225:0x07a6), top: B:387:0x0791, outer: #8 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkPolicy() {
        /*
            Method dump skipped, instructions count: 3028
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.x509.PKIXCertPathReviewer.checkPolicy():void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:147|83|(16:85|164|89|(12:91|95|(2:98|96)|179|99|(2:102|100)|162|103|104|149|105|106)|94|95|(1:96)|179|99|(1:100)|162|103|104|149|105|106)|86|164|89|(0)|94|95|(1:96)|179|99|(1:100)|162|103|104|149|105|106) */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x047e, code lost:
        addError(new org.spongycastle.i18n.ErrorBundle(org.spongycastle.x509.PKIXCertPathReviewer.RESOURCE_NAME, "CertPathReviewer.crlAuthInfoAccError"), r19);
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x04ef A[LOOP:2: B:100:0x04e5->B:102:0x04ef, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x059e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0472 A[Catch: AnnotatedException -> 0x047c, TRY_ENTER, TRY_LEAVE, TryCatch #11 {AnnotatedException -> 0x047c, blocks: (B:89:0x0463, B:91:0x0472), top: B:164:0x0463 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x04b4 A[LOOP:1: B:96:0x04aa->B:98:0x04b4, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkSignatures() {
        /*
            Method dump skipped, instructions count: 1678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.x509.PKIXCertPathReviewer.checkSignatures():void");
    }

    private X509CRL getCRL(String str) throws CertPathReviewerException {
        X509CRL x509crl;
        try {
            URL url = new URL(str);
            if (!url.getProtocol().equals("http") && !url.getProtocol().equals("https")) {
                x509crl = null;
                return x509crl;
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() == 200) {
                x509crl = (X509CRL) CertificateFactory.getInstance("X.509", BouncyCastleProvider.PROVIDER_NAME).generateCRL(httpURLConnection.getInputStream());
                return x509crl;
            }
            throw new Exception(httpURLConnection.getResponseMessage());
        } catch (Exception e) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.loadCrlDistPointError", new Object[]{new UntrustedInput(str), e.getMessage(), e, e.getClass().getName()}));
        }
    }

    private boolean processQcStatements(X509Certificate x509Certificate, int i) {
        try {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) getExtensionValue(x509Certificate, QC_STATEMENT);
            boolean z = false;
            for (int i2 = 0; i2 < aSN1Sequence.size(); i2++) {
                QCStatement instance = QCStatement.getInstance(aSN1Sequence.getObjectAt(i2));
                if (QCStatement.id_etsi_qcs_QcCompliance.equals(instance.getStatementId())) {
                    addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcEuCompliance"), i);
                } else if (!QCStatement.id_qcs_pkixQCSyntax_v1.equals(instance.getStatementId())) {
                    if (QCStatement.id_etsi_qcs_QcSSCD.equals(instance.getStatementId())) {
                        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcSSCD"), i);
                    } else if (QCStatement.id_etsi_qcs_LimiteValue.equals(instance.getStatementId())) {
                        MonetaryValue instance2 = MonetaryValue.getInstance(instance.getStatementInfo());
                        instance2.getCurrency();
                        double doubleValue = instance2.getAmount().doubleValue() * Math.pow(10.0d, instance2.getExponent().doubleValue());
                        addNotification(instance2.getCurrency().isAlphabetic() ? new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcLimitValueAlpha", new Object[]{instance2.getCurrency().getAlphabetic(), new TrustedInput(new Double(doubleValue)), instance2}) : new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcLimitValueNum", new Object[]{Integers.valueOf(instance2.getCurrency().getNumeric()), new TrustedInput(new Double(doubleValue)), instance2}), i);
                    } else {
                        addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcUnknownStatement", new Object[]{instance.getStatementId(), new UntrustedInput(instance)}), i);
                        z = true;
                    }
                }
            }
            return !z;
        } catch (AnnotatedException e) {
            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcStatementExtError"), i);
            return false;
        }
    }

    protected void addError(ErrorBundle errorBundle) {
        this.errors[0].add(errorBundle);
    }

    protected void addError(ErrorBundle errorBundle, int i) {
        if (i < -1 || i >= this.f1816n) {
            throw new IndexOutOfBoundsException();
        }
        this.errors[i + 1].add(errorBundle);
    }

    protected void addNotification(ErrorBundle errorBundle) {
        this.notifications[0].add(errorBundle);
    }

    protected void addNotification(ErrorBundle errorBundle, int i) {
        if (i < -1 || i >= this.f1816n) {
            throw new IndexOutOfBoundsException();
        }
        this.notifications[i + 1].add(errorBundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:88:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0471  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void checkCRLs(java.security.cert.PKIXParameters r14, java.security.cert.X509Certificate r15, java.util.Date r16, java.security.cert.X509Certificate r17, java.security.PublicKey r18, java.util.Vector r19, int r20) throws org.spongycastle.x509.CertPathReviewerException {
        /*
            Method dump skipped, instructions count: 1816
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.x509.PKIXCertPathReviewer.checkCRLs(java.security.cert.PKIXParameters, java.security.cert.X509Certificate, java.util.Date, java.security.cert.X509Certificate, java.security.PublicKey, java.util.Vector, int):void");
    }

    protected void checkRevocation(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, Vector vector2, int i) throws CertPathReviewerException {
        checkCRLs(pKIXParameters, x509Certificate, date, x509Certificate2, publicKey, vector, i);
    }

    protected void doChecks() {
        if (!this.initialized) {
            throw new IllegalStateException("Object not initialized. Call init() first.");
        } else if (this.notifications == null) {
            this.notifications = new List[this.f1816n + 1];
            this.errors = new List[this.f1816n + 1];
            for (int i = 0; i < this.notifications.length; i++) {
                this.notifications[i] = new ArrayList();
                this.errors[i] = new ArrayList();
            }
            checkSignatures();
            checkNameConstraints();
            checkPathLength();
            checkPolicy();
            checkCriticalExtensions();
        }
    }

    protected Vector getCRLDistUrls(CRLDistPoint cRLDistPoint) {
        Vector vector = new Vector();
        if (cRLDistPoint != null) {
            for (DistributionPoint distributionPoint : cRLDistPoint.getDistributionPoints()) {
                DistributionPointName distributionPoint2 = distributionPoint.getDistributionPoint();
                if (distributionPoint2.getType() == 0) {
                    GeneralName[] names = GeneralNames.getInstance(distributionPoint2.getName()).getNames();
                    for (int i = 0; i < names.length; i++) {
                        if (names[i].getTagNo() == 6) {
                            vector.add(((DERIA5String) names[i].getName()).getString());
                        }
                    }
                }
            }
        }
        return vector;
    }

    public CertPath getCertPath() {
        return this.certPath;
    }

    public int getCertPathSize() {
        return this.f1816n;
    }

    public List getErrors(int i) {
        doChecks();
        return this.errors[i + 1];
    }

    public List[] getErrors() {
        doChecks();
        return this.errors;
    }

    public List getNotifications(int i) {
        doChecks();
        return this.notifications[i + 1];
    }

    public List[] getNotifications() {
        doChecks();
        return this.notifications;
    }

    protected Vector getOCSPUrls(AuthorityInformationAccess authorityInformationAccess) {
        Vector vector = new Vector();
        if (authorityInformationAccess != null) {
            AccessDescription[] accessDescriptions = authorityInformationAccess.getAccessDescriptions();
            for (int i = 0; i < accessDescriptions.length; i++) {
                if (accessDescriptions[i].getAccessMethod().equals(AccessDescription.id_ad_ocsp)) {
                    GeneralName accessLocation = accessDescriptions[i].getAccessLocation();
                    if (accessLocation.getTagNo() == 6) {
                        vector.add(((DERIA5String) accessLocation.getName()).getString());
                    }
                }
            }
        }
        return vector;
    }

    public PolicyNode getPolicyTree() {
        doChecks();
        return this.policyTree;
    }

    public PublicKey getSubjectPublicKey() {
        doChecks();
        return this.subjectPublicKey;
    }

    public TrustAnchor getTrustAnchor() {
        doChecks();
        return this.trustAnchor;
    }

    protected Collection getTrustAnchors(X509Certificate x509Certificate, Set set) throws CertPathReviewerException {
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(getEncodedIssuerPrincipal(x509Certificate).getEncoded());
            byte[] extensionValue = x509Certificate.getExtensionValue(Extension.authorityKeyIdentifier.getId());
            if (extensionValue != null) {
                AuthorityKeyIdentifier instance = AuthorityKeyIdentifier.getInstance(ASN1Primitive.fromByteArray(((ASN1OctetString) ASN1Primitive.fromByteArray(extensionValue)).getOctets()));
                x509CertSelector.setSerialNumber(instance.getAuthorityCertSerialNumber());
                byte[] keyIdentifier = instance.getKeyIdentifier();
                if (keyIdentifier != null) {
                    x509CertSelector.setSubjectKeyIdentifier(new DEROctetString(keyIdentifier).getEncoded());
                }
            }
            while (it.hasNext()) {
                TrustAnchor trustAnchor = (TrustAnchor) it.next();
                if (trustAnchor.getTrustedCert() != null) {
                    if (x509CertSelector.match(trustAnchor.getTrustedCert())) {
                        arrayList.add(trustAnchor);
                    }
                } else if (!(trustAnchor.getCAName() == null || trustAnchor.getCAPublicKey() == null || !getEncodedIssuerPrincipal(x509Certificate).equals(new X500Principal(trustAnchor.getCAName())))) {
                    arrayList.add(trustAnchor);
                }
            }
            return arrayList;
        } catch (IOException e) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustAnchorIssuerError"));
        }
    }

    public void init(CertPath certPath, PKIXParameters pKIXParameters) throws CertPathReviewerException {
        if (this.initialized) {
            throw new IllegalStateException("object is already initialized!");
        }
        this.initialized = true;
        if (certPath == null) {
            throw new NullPointerException("certPath was null");
        }
        this.certPath = certPath;
        this.certs = certPath.getCertificates();
        this.f1816n = this.certs.size();
        if (this.certs.isEmpty()) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.emptyCertPath"));
        }
        this.pkixParams = (PKIXParameters) pKIXParameters.clone();
        this.validDate = getValidDate(this.pkixParams);
        this.notifications = null;
        this.errors = null;
        this.trustAnchor = null;
        this.subjectPublicKey = null;
        this.policyTree = null;
    }

    public boolean isValidCertPath() {
        doChecks();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= this.errors.length) {
                z = true;
                break;
            } else if (!this.errors[i].isEmpty()) {
                break;
            } else {
                i++;
            }
        }
        return z;
    }
}
