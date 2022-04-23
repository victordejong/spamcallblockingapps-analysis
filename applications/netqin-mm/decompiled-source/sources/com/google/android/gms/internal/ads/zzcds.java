package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcds.class */
public final class zzcds implements zzeoy<zzcil> {

    /* renamed from: a */
    public final zzcdl f25792a;

    public zzcds(zzcdl zzcdlVar) {
        this.f25792a = zzcdlVar;
    }

    /* renamed from: a */
    public static zzcil m14773a(zzcdl zzcdlVar) {
        zzcil b = zzcdlVar.m14774b();
        zzepe.m12187a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m14773a(this.f25792a);
    }
}
