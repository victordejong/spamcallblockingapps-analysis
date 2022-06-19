package com.google.android.play.core.internal;

import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
/* renamed from: com.google.android.play.core.internal.bj */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bj.class */
final class C15046bj extends C15047bk {

    /* renamed from: a */
    private final byte[] f54772a;

    public C15046bj(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.f54772a = bArr;
    }

    @Override // com.google.android.play.core.internal.C15047bk, java.security.cert.Certificate
    public final byte[] getEncoded() throws CertificateEncodingException {
        return this.f54772a;
    }
}
