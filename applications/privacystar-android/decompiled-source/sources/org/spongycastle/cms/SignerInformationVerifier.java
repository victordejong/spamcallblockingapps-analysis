package org.spongycastle.cms;

import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.operator.ContentVerifier;
import org.spongycastle.operator.ContentVerifierProvider;
import org.spongycastle.operator.DigestCalculator;
import org.spongycastle.operator.DigestCalculatorProvider;
import org.spongycastle.operator.OperatorCreationException;
import org.spongycastle.operator.SignatureAlgorithmIdentifierFinder;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/SignerInformationVerifier.class */
public class SignerInformationVerifier {
    private DigestCalculatorProvider digestProvider;
    private SignatureAlgorithmIdentifierFinder sigAlgorithmFinder;
    private CMSSignatureAlgorithmNameGenerator sigNameGenerator;
    private ContentVerifierProvider verifierProvider;

    public SignerInformationVerifier(CMSSignatureAlgorithmNameGenerator cMSSignatureAlgorithmNameGenerator, SignatureAlgorithmIdentifierFinder signatureAlgorithmIdentifierFinder, ContentVerifierProvider contentVerifierProvider, DigestCalculatorProvider digestCalculatorProvider) {
        this.sigNameGenerator = cMSSignatureAlgorithmNameGenerator;
        this.sigAlgorithmFinder = signatureAlgorithmIdentifierFinder;
        this.verifierProvider = contentVerifierProvider;
        this.digestProvider = digestCalculatorProvider;
    }

    public X509CertificateHolder getAssociatedCertificate() {
        return this.verifierProvider.getAssociatedCertificate();
    }

    public ContentVerifier getContentVerifier(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2) throws OperatorCreationException {
        return this.verifierProvider.get(this.sigAlgorithmFinder.find(this.sigNameGenerator.getSignatureName(algorithmIdentifier2, algorithmIdentifier)));
    }

    public DigestCalculator getDigestCalculator(AlgorithmIdentifier algorithmIdentifier) throws OperatorCreationException {
        return this.digestProvider.get(algorithmIdentifier);
    }

    public boolean hasAssociatedCertificate() {
        return this.verifierProvider.hasAssociatedCertificate();
    }
}
