package com.google.android.gms.internal.ads;

import java.security.cert.X509Certificate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzvg.class */
final class zzvg extends zzvh {
    private final byte[] zza;

    public zzvg(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzvh, java.security.cert.Certificate
    public final byte[] getEncoded() {
        return this.zza;
    }
}
