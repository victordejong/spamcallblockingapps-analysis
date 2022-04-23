package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqc.class */
public final class zzbqc implements zzeoy<zzafy> {

    /* renamed from: a */
    public final zzbqa f25348a;

    public zzbqc(zzbqa zzbqaVar) {
        this.f25348a = zzbqaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzafy a = this.f25348a.m15183a();
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
