package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfk.class */
final class dfk implements dcq {

    /* renamed from: a  reason: collision with root package name */
    private final ddd<dcq> f26798a;

    public dfk(ddd<dcq> dddVar) {
        this.f26798a = dddVar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [byte[], byte[][]] */
    @Override // com.google.android.gms.internal.ads.dcq
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        return djs.a(new byte[]{this.f26798a.f26742b.a(), this.f26798a.f26742b.f26744a.a(bArr, bArr2)});
    }
}
