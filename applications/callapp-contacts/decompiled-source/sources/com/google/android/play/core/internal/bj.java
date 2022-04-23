package com.google.android.play.core.internal;

import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bj.class */
final class bj extends bk {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f31369a;

    public bj(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.f31369a = bArr;
    }

    @Override // com.google.android.play.core.internal.bk, java.security.cert.Certificate
    public final byte[] getEncoded() throws CertificateEncodingException {
        return this.f31369a;
    }
}
