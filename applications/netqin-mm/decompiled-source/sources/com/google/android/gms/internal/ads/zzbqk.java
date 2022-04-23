package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqk.class */
public final class zzbqk implements zzeoy<zzbwk> {

    /* renamed from: a */
    public final zzbqh f25371a;

    public zzbqk(zzbqh zzbqhVar) {
        this.f25371a = zzbqhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzbwk a = this.f25371a.m15176a();
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
