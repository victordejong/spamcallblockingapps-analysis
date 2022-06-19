package com.google.android.play.core.internal;

import java.security.cert.X509Certificate;
/* renamed from: com.google.android.play.core.internal.g */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/g.class */
final class C8488g extends C8491h {

    /* renamed from: a */
    private final byte[] f38035a;

    public C8488g(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.f38035a = bArr;
    }

    @Override // com.google.android.play.core.internal.C8491h, java.security.cert.Certificate
    public final byte[] getEncoded() {
        return this.f38035a;
    }
}
