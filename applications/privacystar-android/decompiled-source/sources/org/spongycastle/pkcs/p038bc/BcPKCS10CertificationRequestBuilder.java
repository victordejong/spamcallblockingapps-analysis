package org.spongycastle.pkcs.p038bc;

import java.io.IOException;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.util.SubjectPublicKeyInfoFactory;
import org.spongycastle.pkcs.PKCS10CertificationRequestBuilder;
/* renamed from: org.spongycastle.pkcs.bc.BcPKCS10CertificationRequestBuilder */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pkcs/bc/BcPKCS10CertificationRequestBuilder.class */
public class BcPKCS10CertificationRequestBuilder extends PKCS10CertificationRequestBuilder {
    public BcPKCS10CertificationRequestBuilder(X500Name x500Name, AsymmetricKeyParameter asymmetricKeyParameter) throws IOException {
        super(x500Name, SubjectPublicKeyInfoFactory.createSubjectPublicKeyInfo(asymmetricKeyParameter));
    }
}
