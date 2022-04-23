package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblb.class */
public final class zzblb implements zzeoy<zzarj> {

    /* renamed from: a */
    public final zzbky f25122a;

    public zzblb(zzbky zzbkyVar) {
        this.f25122a = zzbkyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzarj b = this.f25122a.m15345b();
        zzepe.m12187a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }
}
