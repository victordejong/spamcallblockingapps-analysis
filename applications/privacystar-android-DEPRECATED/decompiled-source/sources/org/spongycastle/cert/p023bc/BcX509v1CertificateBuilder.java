package org.spongycastle.cert.p023bc;

import java.io.IOException;
import java.math.BigInteger;
import java.util.Date;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.cert.X509v1CertificateBuilder;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.util.SubjectPublicKeyInfoFactory;
/* renamed from: org.spongycastle.cert.bc.BcX509v1CertificateBuilder */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/bc/BcX509v1CertificateBuilder.class */
public class BcX509v1CertificateBuilder extends X509v1CertificateBuilder {
    public BcX509v1CertificateBuilder(X500Name x500Name, BigInteger bigInteger, Date date, Date date2, X500Name x500Name2, AsymmetricKeyParameter asymmetricKeyParameter) throws IOException {
        super(x500Name, bigInteger, date, date2, x500Name2, SubjectPublicKeyInfoFactory.createSubjectPublicKeyInfo(asymmetricKeyParameter));
    }
}
