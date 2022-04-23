package com.google.android.gms.internal.ads;

import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/due.class */
final class due extends dwy {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f27225a;

    public due(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.f27225a = bArr;
    }

    @Override // com.google.android.gms.internal.ads.dwy, java.security.cert.Certificate
    public final byte[] getEncoded() throws CertificateEncodingException {
        return this.f27225a;
    }
}
