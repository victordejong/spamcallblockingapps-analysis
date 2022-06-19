package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbni.class */
public final class zzbni implements zzeqb<Runnable> {
    private final zzbnf zzfvq;

    public zzbni(zzbnf zzbnfVar) {
        this.zzfvq = zzbnfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Runnable) zzeqh.zza(this.zzfvq.zzakm(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
