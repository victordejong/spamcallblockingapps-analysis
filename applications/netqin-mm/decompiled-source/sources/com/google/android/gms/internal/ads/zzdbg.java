package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbg.class */
public final class zzdbg implements zzeoy<String> {

    /* renamed from: a */
    public final zzdbd f26870a;

    public zzdbg(zzdbd zzdbdVar) {
        this.f26870a = zzdbdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        String b = this.f26870a.m13668b();
        zzepe.m12187a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }
}
