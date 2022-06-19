package com.google.android.gms.internal.ads;

import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/due.class */
final class due extends dwy {

    /* renamed from: a */
    private byte[] f47617a;

    public due(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.f47617a = bArr;
    }

    @Override // com.google.android.gms.internal.ads.dwy, java.security.cert.Certificate
    public final byte[] getEncoded() throws CertificateEncodingException {
        return this.f47617a;
    }
}
