package org.bouncycastle.x509;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.net.URLConnection;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
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
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.Vector;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.x509.AccessDescription;
import org.bouncycastle.asn1.x509.AuthorityInformationAccess;
import org.bouncycastle.asn1.x509.AuthorityKeyIdentifier;
import org.bouncycastle.asn1.x509.BasicConstraints;
import org.bouncycastle.asn1.x509.CRLDistPoint;
import org.bouncycastle.asn1.x509.DistributionPoint;
import org.bouncycastle.asn1.x509.DistributionPointName;
import org.bouncycastle.asn1.x509.GeneralName;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.GeneralSubtree;
import org.bouncycastle.asn1.x509.NameConstraints;
import org.bouncycastle.asn1.x509.X509Extensions;
import org.bouncycastle.asn1.x509.qualified.ETSIQCObjectIdentifiers;
import org.bouncycastle.asn1.x509.qualified.MonetaryValue;
import org.bouncycastle.asn1.x509.qualified.QCStatement;
import org.bouncycastle.asn1.x509.qualified.RFC3739QCObjectIdentifiers;
import org.bouncycastle.i18n.ErrorBundle;
import org.bouncycastle.i18n.filter.TrustedInput;
import org.bouncycastle.i18n.filter.UntrustedInput;
import org.bouncycastle.jce.provider.AnnotatedException;
import org.bouncycastle.jce.provider.CertPathValidatorUtilities;
import org.bouncycastle.jce.provider.PKIXNameConstraintValidator;
import org.bouncycastle.jce.provider.PKIXNameConstraintValidatorException;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/x509/PKIXCertPathReviewer.class */
public class PKIXCertPathReviewer extends CertPathValidatorUtilities {
    private static final String RESOURCE_NAME = "org.bouncycastle.x509.CertPathReviewerMessages";
    public CertPath certPath;
    public List certs;
    public List[] errors;
    private boolean initialized;

    /* renamed from: n */
    public int f7682n;
    public List[] notifications;
    public PKIXParameters pkixParams;
    public PolicyNode policyTree;
    public PublicKey subjectPublicKey;
    public TrustAnchor trustAnchor;
    public Date validDate;
    private static final String QC_STATEMENT = X509Extensions.QCStatements.getId();
    private static final String CRL_DIST_POINTS = X509Extensions.CRLDistributionPoints.getId();
    private static final String AUTH_INFO_ACCESS = X509Extensions.AuthorityInfoAccess.getId();

    public PKIXCertPathReviewer() {
    }

    public PKIXCertPathReviewer(CertPath certPath, PKIXParameters pKIXParameters) {
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
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.KEY_USAGE);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.CERTIFICATE_POLICIES);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.POLICY_MAPPINGS);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.INHIBIT_ANY_POLICY);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.ISSUING_DISTRIBUTION_POINT);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.DELTA_CRL_INDICATOR);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.POLICY_CONSTRAINTS);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.BASIC_CONSTRAINTS);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.SUBJECT_ALTERNATIVE_NAME);
                criticalExtensionOIDs.remove(CertPathValidatorUtilities.NAME_CONSTRAINTS);
                String str = QC_STATEMENT;
                if (criticalExtensionOIDs.contains(str) && processQcStatements(x509Certificate, size)) {
                    criticalExtensionOIDs.remove(str);
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
                        addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.unknownCriticalExt", new Object[]{new DERObjectIdentifier(it.next())}), size);
                    }
                }
            }
        }
    }

    private void checkNameConstraints() {
        PKIXNameConstraintValidator pKIXNameConstraintValidator = new PKIXNameConstraintValidator();
        try {
            for (int size = this.certs.size() - 1; size > 0; size--) {
                X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
                if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate)) {
                    X500Principal subjectPrincipal = CertPathValidatorUtilities.getSubjectPrincipal(x509Certificate);
                    try {
                        ASN1Sequence aSN1Sequence = (ASN1Sequence) new ASN1InputStream(new ByteArrayInputStream(subjectPrincipal.getEncoded())).readObject();
                        try {
                            pKIXNameConstraintValidator.checkPermittedDN(aSN1Sequence);
                            try {
                                pKIXNameConstraintValidator.checkExcludedDN(aSN1Sequence);
                                try {
                                    ASN1Sequence aSN1Sequence2 = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.SUBJECT_ALTERNATIVE_NAME);
                                    if (aSN1Sequence2 != null) {
                                        for (int i = 0; i < aSN1Sequence2.size(); i++) {
                                            GeneralName generalName = GeneralName.getInstance(aSN1Sequence2.getObjectAt(i));
                                            try {
                                                pKIXNameConstraintValidator.checkPermitted(generalName);
                                                pKIXNameConstraintValidator.checkExcluded(generalName);
                                            } catch (PKIXNameConstraintValidatorException e) {
                                                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.notPermittedEmail", new Object[]{new UntrustedInput(generalName)}), e, this.certPath, size);
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
                    ASN1Sequence aSN1Sequence3 = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.NAME_CONSTRAINTS);
                    if (aSN1Sequence3 != null) {
                        NameConstraints nameConstraints = new NameConstraints(aSN1Sequence3);
                        ASN1Sequence permittedSubtrees = nameConstraints.getPermittedSubtrees();
                        if (permittedSubtrees != null) {
                            pKIXNameConstraintValidator.intersectPermittedSubtree(permittedSubtrees);
                        }
                        ASN1Sequence excludedSubtrees = nameConstraints.getExcludedSubtrees();
                        if (excludedSubtrees != null) {
                            Enumeration objects = excludedSubtrees.getObjects();
                            while (objects.hasMoreElements()) {
                                pKIXNameConstraintValidator.addExcludedSubtree(GeneralSubtree.getInstance(objects.nextElement()));
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
        int i = this.f7682n;
        int size = this.certs.size() - 1;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (size <= 0) {
                addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.totalPathLength", new Object[]{new Integer(i3)}));
                return;
            }
            X509Certificate x509Certificate = (X509Certificate) this.certs.get(size);
            int i4 = i;
            int i5 = i3;
            if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate)) {
                if (i <= 0) {
                    addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.pathLenghtExtended"));
                }
                i4 = i - 1;
                i5 = i3 + 1;
            }
            try {
                basicConstraints = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CertPathValidatorUtilities.BASIC_CONSTRAINTS));
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
            size--;
            i2 = i5;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0418 A[Catch: CertPathReviewerException -> 0x0c08, TRY_ENTER, TRY_LEAVE, TryCatch #3 {CertPathReviewerException -> 0x0c08, blocks: (B:18:0x00bb, B:22:0x00d7, B:24:0x00f2, B:28:0x0107, B:30:0x011a, B:32:0x0122, B:34:0x0154, B:36:0x0160, B:38:0x016c, B:40:0x017c, B:41:0x019e, B:45:0x01aa, B:48:0x01ba, B:51:0x01d0, B:53:0x01da, B:55:0x01ed, B:59:0x0201, B:61:0x020a, B:65:0x0224, B:67:0x022d, B:69:0x0235, B:71:0x0256, B:73:0x026c, B:75:0x0278, B:77:0x029a, B:79:0x02a4, B:81:0x02b5, B:82:0x02bf, B:84:0x02c7, B:86:0x02d3, B:88:0x02db, B:91:0x02e7, B:97:0x0305, B:101:0x0375, B:102:0x0399, B:109:0x03b3, B:111:0x03bf, B:113:0x03d1, B:115:0x03d9, B:121:0x040c, B:123:0x0418, B:125:0x042e, B:127:0x043a, B:137:0x047b, B:138:0x0495, B:140:0x0497, B:143:0x04a3, B:145:0x04b2, B:147:0x04bc, B:149:0x04c6, B:151:0x04fa, B:153:0x0508, B:154:0x050e, B:155:0x052e, B:156:0x052f, B:157:0x0532, B:158:0x054f, B:161:0x0555, B:163:0x0573, B:165:0x057d, B:167:0x05b1, B:168:0x05de, B:169:0x05f2, B:171:0x05fc, B:174:0x0617, B:176:0x0621, B:178:0x0631, B:181:0x0645, B:182:0x0669, B:184:0x066b, B:185:0x068e, B:189:0x0698, B:194:0x06b5, B:207:0x0704, B:210:0x071e, B:213:0x072d, B:215:0x0737, B:219:0x0758, B:223:0x0774, B:227:0x0790, B:230:0x07b9, B:235:0x07fd, B:236:0x081d, B:238:0x0820, B:239:0x0840, B:241:0x0842, B:242:0x0866, B:247:0x0899, B:248:0x08b9, B:250:0x08bc, B:256:0x08d9, B:258:0x08e9, B:260:0x08f3, B:262:0x08fd, B:265:0x0912, B:271:0x0936, B:275:0x0946, B:276:0x0966, B:278:0x0968, B:280:0x096e, B:282:0x0978, B:284:0x0982, B:289:0x099c, B:291:0x09a7, B:293:0x09c2, B:295:0x09cb, B:297:0x09d3, B:300:0x09f0, B:302:0x09f8, B:304:0x0a00, B:307:0x0a1c, B:312:0x0a39, B:314:0x0a45, B:316:0x0a55, B:318:0x0a5c, B:319:0x0a65, B:322:0x0a74, B:323:0x0a94, B:325:0x0a98, B:330:0x0ab4, B:332:0x0abf, B:334:0x0ada, B:336:0x0ae3, B:338:0x0aeb, B:340:0x0b05, B:343:0x0b1e, B:344:0x0b2a, B:346:0x0b34, B:348:0x0b43, B:350:0x0b51, B:355:0x0b68, B:360:0x0b82, B:362:0x0b8e, B:364:0x0b9e, B:366:0x0ba5, B:367:0x0bae, B:374:0x0bca, B:375:0x0be4, B:377:0x0be7, B:378:0x0c07), top: B:386:0x00bb, inners: #0, #2, #5, #6, #7, #8, #9, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x07b9 A[Catch: AnnotatedException -> 0x07fb, CertPathReviewerException -> 0x0c08, TRY_ENTER, TRY_LEAVE, TryCatch #0 {AnnotatedException -> 0x07fb, blocks: (B:227:0x0790, B:230:0x07b9), top: B:382:0x0790, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:405:0x0876 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:417:0x0215 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0201 A[Catch: CertPathReviewerException -> 0x0c08, TRY_ENTER, TryCatch #3 {CertPathReviewerException -> 0x0c08, blocks: (B:18:0x00bb, B:22:0x00d7, B:24:0x00f2, B:28:0x0107, B:30:0x011a, B:32:0x0122, B:34:0x0154, B:36:0x0160, B:38:0x016c, B:40:0x017c, B:41:0x019e, B:45:0x01aa, B:48:0x01ba, B:51:0x01d0, B:53:0x01da, B:55:0x01ed, B:59:0x0201, B:61:0x020a, B:65:0x0224, B:67:0x022d, B:69:0x0235, B:71:0x0256, B:73:0x026c, B:75:0x0278, B:77:0x029a, B:79:0x02a4, B:81:0x02b5, B:82:0x02bf, B:84:0x02c7, B:86:0x02d3, B:88:0x02db, B:91:0x02e7, B:97:0x0305, B:101:0x0375, B:102:0x0399, B:109:0x03b3, B:111:0x03bf, B:113:0x03d1, B:115:0x03d9, B:121:0x040c, B:123:0x0418, B:125:0x042e, B:127:0x043a, B:137:0x047b, B:138:0x0495, B:140:0x0497, B:143:0x04a3, B:145:0x04b2, B:147:0x04bc, B:149:0x04c6, B:151:0x04fa, B:153:0x0508, B:154:0x050e, B:155:0x052e, B:156:0x052f, B:157:0x0532, B:158:0x054f, B:161:0x0555, B:163:0x0573, B:165:0x057d, B:167:0x05b1, B:168:0x05de, B:169:0x05f2, B:171:0x05fc, B:174:0x0617, B:176:0x0621, B:178:0x0631, B:181:0x0645, B:182:0x0669, B:184:0x066b, B:185:0x068e, B:189:0x0698, B:194:0x06b5, B:207:0x0704, B:210:0x071e, B:213:0x072d, B:215:0x0737, B:219:0x0758, B:223:0x0774, B:227:0x0790, B:230:0x07b9, B:235:0x07fd, B:236:0x081d, B:238:0x0820, B:239:0x0840, B:241:0x0842, B:242:0x0866, B:247:0x0899, B:248:0x08b9, B:250:0x08bc, B:256:0x08d9, B:258:0x08e9, B:260:0x08f3, B:262:0x08fd, B:265:0x0912, B:271:0x0936, B:275:0x0946, B:276:0x0966, B:278:0x0968, B:280:0x096e, B:282:0x0978, B:284:0x0982, B:289:0x099c, B:291:0x09a7, B:293:0x09c2, B:295:0x09cb, B:297:0x09d3, B:300:0x09f0, B:302:0x09f8, B:304:0x0a00, B:307:0x0a1c, B:312:0x0a39, B:314:0x0a45, B:316:0x0a55, B:318:0x0a5c, B:319:0x0a65, B:322:0x0a74, B:323:0x0a94, B:325:0x0a98, B:330:0x0ab4, B:332:0x0abf, B:334:0x0ada, B:336:0x0ae3, B:338:0x0aeb, B:340:0x0b05, B:343:0x0b1e, B:344:0x0b2a, B:346:0x0b34, B:348:0x0b43, B:350:0x0b51, B:355:0x0b68, B:360:0x0b82, B:362:0x0b8e, B:364:0x0b9e, B:366:0x0ba5, B:367:0x0bae, B:374:0x0bca, B:375:0x0be4, B:377:0x0be7, B:378:0x0c07), top: B:386:0x00bb, inners: #0, #2, #5, #6, #7, #8, #9, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0235 A[Catch: CertPathReviewerException -> 0x0c08, TRY_LEAVE, TryCatch #3 {CertPathReviewerException -> 0x0c08, blocks: (B:18:0x00bb, B:22:0x00d7, B:24:0x00f2, B:28:0x0107, B:30:0x011a, B:32:0x0122, B:34:0x0154, B:36:0x0160, B:38:0x016c, B:40:0x017c, B:41:0x019e, B:45:0x01aa, B:48:0x01ba, B:51:0x01d0, B:53:0x01da, B:55:0x01ed, B:59:0x0201, B:61:0x020a, B:65:0x0224, B:67:0x022d, B:69:0x0235, B:71:0x0256, B:73:0x026c, B:75:0x0278, B:77:0x029a, B:79:0x02a4, B:81:0x02b5, B:82:0x02bf, B:84:0x02c7, B:86:0x02d3, B:88:0x02db, B:91:0x02e7, B:97:0x0305, B:101:0x0375, B:102:0x0399, B:109:0x03b3, B:111:0x03bf, B:113:0x03d1, B:115:0x03d9, B:121:0x040c, B:123:0x0418, B:125:0x042e, B:127:0x043a, B:137:0x047b, B:138:0x0495, B:140:0x0497, B:143:0x04a3, B:145:0x04b2, B:147:0x04bc, B:149:0x04c6, B:151:0x04fa, B:153:0x0508, B:154:0x050e, B:155:0x052e, B:156:0x052f, B:157:0x0532, B:158:0x054f, B:161:0x0555, B:163:0x0573, B:165:0x057d, B:167:0x05b1, B:168:0x05de, B:169:0x05f2, B:171:0x05fc, B:174:0x0617, B:176:0x0621, B:178:0x0631, B:181:0x0645, B:182:0x0669, B:184:0x066b, B:185:0x068e, B:189:0x0698, B:194:0x06b5, B:207:0x0704, B:210:0x071e, B:213:0x072d, B:215:0x0737, B:219:0x0758, B:223:0x0774, B:227:0x0790, B:230:0x07b9, B:235:0x07fd, B:236:0x081d, B:238:0x0820, B:239:0x0840, B:241:0x0842, B:242:0x0866, B:247:0x0899, B:248:0x08b9, B:250:0x08bc, B:256:0x08d9, B:258:0x08e9, B:260:0x08f3, B:262:0x08fd, B:265:0x0912, B:271:0x0936, B:275:0x0946, B:276:0x0966, B:278:0x0968, B:280:0x096e, B:282:0x0978, B:284:0x0982, B:289:0x099c, B:291:0x09a7, B:293:0x09c2, B:295:0x09cb, B:297:0x09d3, B:300:0x09f0, B:302:0x09f8, B:304:0x0a00, B:307:0x0a1c, B:312:0x0a39, B:314:0x0a45, B:316:0x0a55, B:318:0x0a5c, B:319:0x0a65, B:322:0x0a74, B:323:0x0a94, B:325:0x0a98, B:330:0x0ab4, B:332:0x0abf, B:334:0x0ada, B:336:0x0ae3, B:338:0x0aeb, B:340:0x0b05, B:343:0x0b1e, B:344:0x0b2a, B:346:0x0b34, B:348:0x0b43, B:350:0x0b51, B:355:0x0b68, B:360:0x0b82, B:362:0x0b8e, B:364:0x0b9e, B:366:0x0ba5, B:367:0x0bae, B:374:0x0bca, B:375:0x0be4, B:377:0x0be7, B:378:0x0c07), top: B:386:0x00bb, inners: #0, #2, #5, #6, #7, #8, #9, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0278 A[Catch: CertPathReviewerException -> 0x0c08, TRY_LEAVE, TryCatch #3 {CertPathReviewerException -> 0x0c08, blocks: (B:18:0x00bb, B:22:0x00d7, B:24:0x00f2, B:28:0x0107, B:30:0x011a, B:32:0x0122, B:34:0x0154, B:36:0x0160, B:38:0x016c, B:40:0x017c, B:41:0x019e, B:45:0x01aa, B:48:0x01ba, B:51:0x01d0, B:53:0x01da, B:55:0x01ed, B:59:0x0201, B:61:0x020a, B:65:0x0224, B:67:0x022d, B:69:0x0235, B:71:0x0256, B:73:0x026c, B:75:0x0278, B:77:0x029a, B:79:0x02a4, B:81:0x02b5, B:82:0x02bf, B:84:0x02c7, B:86:0x02d3, B:88:0x02db, B:91:0x02e7, B:97:0x0305, B:101:0x0375, B:102:0x0399, B:109:0x03b3, B:111:0x03bf, B:113:0x03d1, B:115:0x03d9, B:121:0x040c, B:123:0x0418, B:125:0x042e, B:127:0x043a, B:137:0x047b, B:138:0x0495, B:140:0x0497, B:143:0x04a3, B:145:0x04b2, B:147:0x04bc, B:149:0x04c6, B:151:0x04fa, B:153:0x0508, B:154:0x050e, B:155:0x052e, B:156:0x052f, B:157:0x0532, B:158:0x054f, B:161:0x0555, B:163:0x0573, B:165:0x057d, B:167:0x05b1, B:168:0x05de, B:169:0x05f2, B:171:0x05fc, B:174:0x0617, B:176:0x0621, B:178:0x0631, B:181:0x0645, B:182:0x0669, B:184:0x066b, B:185:0x068e, B:189:0x0698, B:194:0x06b5, B:207:0x0704, B:210:0x071e, B:213:0x072d, B:215:0x0737, B:219:0x0758, B:223:0x0774, B:227:0x0790, B:230:0x07b9, B:235:0x07fd, B:236:0x081d, B:238:0x0820, B:239:0x0840, B:241:0x0842, B:242:0x0866, B:247:0x0899, B:248:0x08b9, B:250:0x08bc, B:256:0x08d9, B:258:0x08e9, B:260:0x08f3, B:262:0x08fd, B:265:0x0912, B:271:0x0936, B:275:0x0946, B:276:0x0966, B:278:0x0968, B:280:0x096e, B:282:0x0978, B:284:0x0982, B:289:0x099c, B:291:0x09a7, B:293:0x09c2, B:295:0x09cb, B:297:0x09d3, B:300:0x09f0, B:302:0x09f8, B:304:0x0a00, B:307:0x0a1c, B:312:0x0a39, B:314:0x0a45, B:316:0x0a55, B:318:0x0a5c, B:319:0x0a65, B:322:0x0a74, B:323:0x0a94, B:325:0x0a98, B:330:0x0ab4, B:332:0x0abf, B:334:0x0ada, B:336:0x0ae3, B:338:0x0aeb, B:340:0x0b05, B:343:0x0b1e, B:344:0x0b2a, B:346:0x0b34, B:348:0x0b43, B:350:0x0b51, B:355:0x0b68, B:360:0x0b82, B:362:0x0b8e, B:364:0x0b9e, B:366:0x0ba5, B:367:0x0bae, B:374:0x0bca, B:375:0x0be4, B:377:0x0be7, B:378:0x0c07), top: B:386:0x00bb, inners: #0, #2, #5, #6, #7, #8, #9, #10 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkPolicy() {
        /*
            Method dump skipped, instructions count: 3097
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.PKIXCertPathReviewer.checkPolicy():void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:(2:175|86)|(7:(16:88|171|92|(12:94|98|(2:101|99)|187|102|(2:105|103)|177|106|107|173|108|109)|97|98|(1:99)|187|102|(1:103)|177|106|107|173|108|109)|177|106|107|173|108|109)|89|171|92|(0)|97|98|(1:99)|187|102|(1:103)) */
    /* JADX WARN: Can't wrap try/catch for region: R(19:58|(2:166|60)(2:64|(2:155|66)(4:69|(3:162|71|(2:73|(1:75)))|76|77))|(2:182|78)|84|(19:175|86|(16:88|171|92|(12:94|98|(2:101|99)|187|102|(2:105|103)|177|106|107|173|108|109)|97|98|(1:99)|187|102|(1:103)|177|106|107|173|108|109)|89|171|92|(0)|97|98|(1:99)|187|102|(1:103)|177|106|107|173|108|109)|113|(1:117)|118|(7:120|(1:124)|164|125|(2:127|(1:129))(1:130)|133|(1:137))|138|169|139|140|153|141|142|186|145|56) */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0668, code lost:
        addError(new org.bouncycastle.i18n.ErrorBundle(org.bouncycastle.x509.PKIXCertPathReviewer.RESOURCE_NAME, "CertPathReviewer.pubKeyError"), r19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x069e, code lost:
        r17 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0488, code lost:
        addError(new org.bouncycastle.i18n.ErrorBundle(org.bouncycastle.x509.PKIXCertPathReviewer.RESOURCE_NAME, "CertPathReviewer.crlAuthInfoAccError"), r19);
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x04be A[LOOP:1: B:99:0x04b4->B:101:0x04be, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x04f9 A[LOOP:2: B:103:0x04ef->B:105:0x04f9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0565  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x05a3  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0439 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x047c A[Catch: AnnotatedException -> 0x0486, TRY_ENTER, TRY_LEAVE, TryCatch #12 {AnnotatedException -> 0x0486, blocks: (B:92:0x046e, B:94:0x047c), top: B:171:0x046e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkSignatures() {
        /*
            Method dump skipped, instructions count: 1700
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.PKIXCertPathReviewer.checkSignatures():void");
    }

    private X509CRL getCRL(String str) {
        X509CRL x509crl;
        try {
            URL url = new URL(str);
            if (!url.getProtocol().equals("http") && !url.getProtocol().equals("https")) {
                x509crl = null;
                return x509crl;
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() != 200) {
                throw new Exception(httpURLConnection.getResponseMessage());
            }
            x509crl = (X509CRL) CertificateFactory.getInstance("X.509", "BC").generateCRL(httpURLConnection.getInputStream());
            return x509crl;
        } catch (Exception e) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.loadCrlDistPointError", new Object[]{new UntrustedInput(str), e.getMessage(), e, e.getClass().getName()}));
        }
    }

    private boolean processQcStatements(X509Certificate x509Certificate, int i) {
        ErrorBundle errorBundle;
        try {
            ASN1Sequence aSN1Sequence = (ASN1Sequence) CertPathValidatorUtilities.getExtensionValue(x509Certificate, QC_STATEMENT);
            boolean z = false;
            for (int i2 = 0; i2 < aSN1Sequence.size(); i2++) {
                QCStatement qCStatement = QCStatement.getInstance(aSN1Sequence.getObjectAt(i2));
                if (ETSIQCObjectIdentifiers.id_etsi_qcs_QcCompliance.equals(qCStatement.getStatementId())) {
                    errorBundle = new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcEuCompliance");
                } else {
                    if (!RFC3739QCObjectIdentifiers.id_qcs_pkixQCSyntax_v1.equals(qCStatement.getStatementId())) {
                        if (ETSIQCObjectIdentifiers.id_etsi_qcs_QcSSCD.equals(qCStatement.getStatementId())) {
                            errorBundle = new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcSSCD");
                        } else if (ETSIQCObjectIdentifiers.id_etsi_qcs_LimiteValue.equals(qCStatement.getStatementId())) {
                            MonetaryValue monetaryValue = MonetaryValue.getInstance(qCStatement.getStatementInfo());
                            monetaryValue.getCurrency();
                            double doubleValue = monetaryValue.getAmount().doubleValue() * Math.pow(10.0d, monetaryValue.getExponent().doubleValue());
                            addNotification(monetaryValue.getCurrency().isAlphabetic() ? new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcLimitValueAlpha", new Object[]{monetaryValue.getCurrency().getAlphabetic(), new TrustedInput(new Double(doubleValue)), monetaryValue}) : new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcLimitValueNum", new Object[]{new Integer(monetaryValue.getCurrency().getNumeric()), new TrustedInput(new Double(doubleValue)), monetaryValue}), i);
                        } else {
                            addNotification(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcUnknownStatement", new Object[]{qCStatement.getStatementId(), new UntrustedInput(qCStatement)}), i);
                            z = true;
                        }
                    }
                }
                addNotification(errorBundle, i);
            }
            return true ^ z;
        } catch (AnnotatedException e) {
            addError(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.QcStatementExtError"), i);
            return false;
        }
    }

    public void addError(ErrorBundle errorBundle) {
        this.errors[0].add(errorBundle);
    }

    public void addError(ErrorBundle errorBundle, int i) {
        if (i < -1 || i >= this.f7682n) {
            throw new IndexOutOfBoundsException();
        }
        this.errors[i + 1].add(errorBundle);
    }

    public void addNotification(ErrorBundle errorBundle) {
        this.notifications[0].add(errorBundle);
    }

    public void addNotification(ErrorBundle errorBundle, int i) {
        if (i < -1 || i >= this.f7682n) {
            throw new IndexOutOfBoundsException();
        }
        this.notifications[i + 1].add(errorBundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:87:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x047a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void checkCRLs(java.security.cert.PKIXParameters r14, java.security.cert.X509Certificate r15, java.util.Date r16, java.security.cert.X509Certificate r17, java.security.PublicKey r18, java.util.Vector r19, int r20) {
        /*
            Method dump skipped, instructions count: 1836
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.PKIXCertPathReviewer.checkCRLs(java.security.cert.PKIXParameters, java.security.cert.X509Certificate, java.util.Date, java.security.cert.X509Certificate, java.security.PublicKey, java.util.Vector, int):void");
    }

    public void checkRevocation(PKIXParameters pKIXParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Vector vector, Vector vector2, int i) {
        checkCRLs(pKIXParameters, x509Certificate, date, x509Certificate2, publicKey, vector, i);
    }

    public void doChecks() {
        if (this.initialized) {
            if (this.notifications != null) {
                return;
            }
            int i = this.f7682n;
            this.notifications = new List[i + 1];
            this.errors = new List[i + 1];
            int i2 = 0;
            while (true) {
                List[] listArr = this.notifications;
                if (i2 >= listArr.length) {
                    checkSignatures();
                    checkNameConstraints();
                    checkPathLength();
                    checkPolicy();
                    checkCriticalExtensions();
                    return;
                }
                listArr[i2] = new ArrayList();
                this.errors[i2] = new ArrayList();
                i2++;
            }
        } else {
            throw new IllegalStateException("Object not initialized. Call init() first.");
        }
    }

    public Vector getCRLDistUrls(CRLDistPoint cRLDistPoint) {
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
        return this.f7682n;
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

    public Vector getOCSPUrls(AuthorityInformationAccess authorityInformationAccess) {
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

    public Collection getTrustAnchors(X509Certificate x509Certificate, Set set) {
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(CertPathValidatorUtilities.getEncodedIssuerPrincipal(x509Certificate).getEncoded());
            byte[] extensionValue = x509Certificate.getExtensionValue(X509Extensions.AuthorityKeyIdentifier.getId());
            if (extensionValue != null) {
                AuthorityKeyIdentifier authorityKeyIdentifier = AuthorityKeyIdentifier.getInstance(ASN1Object.fromByteArray(((ASN1OctetString) ASN1Object.fromByteArray(extensionValue)).getOctets()));
                x509CertSelector.setSerialNumber(authorityKeyIdentifier.getAuthorityCertSerialNumber());
                byte[] keyIdentifier = authorityKeyIdentifier.getKeyIdentifier();
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
                } else if (trustAnchor.getCAName() != null && trustAnchor.getCAPublicKey() != null && CertPathValidatorUtilities.getEncodedIssuerPrincipal(x509Certificate).equals(new X500Principal(trustAnchor.getCAName()))) {
                    arrayList.add(trustAnchor);
                }
            }
            return arrayList;
        } catch (IOException e) {
            throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.trustAnchorIssuerError"));
        }
    }

    public void init(CertPath certPath, PKIXParameters pKIXParameters) {
        if (!this.initialized) {
            this.initialized = true;
            Objects.requireNonNull(certPath, "certPath was null");
            this.certPath = certPath;
            List<? extends Certificate> certificates = certPath.getCertificates();
            this.certs = certificates;
            this.f7682n = certificates.size();
            if (this.certs.isEmpty()) {
                throw new CertPathReviewerException(new ErrorBundle(RESOURCE_NAME, "CertPathReviewer.emptyCertPath"));
            }
            PKIXParameters pKIXParameters2 = (PKIXParameters) pKIXParameters.clone();
            this.pkixParams = pKIXParameters2;
            this.validDate = CertPathValidatorUtilities.getValidDate(pKIXParameters2);
            this.notifications = null;
            this.errors = null;
            this.trustAnchor = null;
            this.subjectPublicKey = null;
            this.policyTree = null;
            return;
        }
        throw new IllegalStateException("object is already initialized!");
    }

    public boolean isValidCertPath() {
        doChecks();
        boolean z = false;
        int i = 0;
        while (true) {
            List[] listArr = this.errors;
            if (i >= listArr.length) {
                z = true;
                break;
            } else if (!listArr[i].isEmpty()) {
                break;
            } else {
                i++;
            }
        }
        return z;
    }
}
