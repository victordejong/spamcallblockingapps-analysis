package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdq.class */
public final class zzcdq implements zzeoy<zzcem> {

    /* renamed from: a */
    public final zzeph<zzcel> f25789a;

    public zzcdq(zzcdl zzcdlVar, zzeph<zzcel> zzephVar) {
        this.f25789a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcel zzcelVar = this.f25789a.get();
        zzepe.m12187a(zzcelVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcelVar;
    }
}
