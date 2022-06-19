package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a33.class */
public final class a33 extends w13<a63> {
    public a33() {
        super(a63.class, new y23(xb3.class));
    }

    /* renamed from: l */
    public static final void m16704l(a63 a63Var) {
        gc3.m14963b(a63Var.m16689C(), 0);
        gc3.m14964a(a63Var.m16687E().zzc());
        m16703m(a63Var.m16688D());
    }

    /* renamed from: m */
    public static final void m16703m(g63 g63Var) {
        if (g63Var.m14979C() < 12 || g63Var.m14979C() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: b */
    public final String mo8529b() {
        return "type.googleapis.com/google.crypto.tink.AesCtrKey";
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ a63 mo8528c(zzgex zzgexVar) {
        return a63.m16686F(zzgexVar, vd3.m10041a());
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo8527d(a63 a63Var) {
        m16704l(a63Var);
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: h */
    public final u13<?, a63> mo8526h() {
        return new z23(this, d63.class);
    }

    @Override // com.google.android.gms.internal.ads.w13
    /* renamed from: i */
    public final int mo8525i() {
        return 3;
    }
}
