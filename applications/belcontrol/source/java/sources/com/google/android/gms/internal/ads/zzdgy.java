package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgy.class */
public final /* synthetic */ class zzdgy implements Callable {
    private final zzdzw zzfym;
    private final zzdzw zzgig;

    public zzdgy(zzdzw zzdzwVar, zzdzw zzdzwVar2) {
        this.zzgig = zzdzwVar;
        this.zzfym = zzdzwVar2;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return new zzdgw((String) this.zzgig.get(), (String) this.zzfym.get());
    }
}
