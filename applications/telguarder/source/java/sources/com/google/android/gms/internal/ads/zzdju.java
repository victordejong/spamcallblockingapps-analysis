package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdju.class */
final class zzdju<R> implements zzdqa {
    public final Executor executor;
    public final String zzbut;
    public final zzvl zzdud;
    public final zzvx zzhba;
    public final zzdkp<R> zzhhe;
    public final zzdko zzhhf;
    @Nullable
    private final zzdpl zzhhg;

    public zzdju(zzdkp<R> zzdkpVar, zzdko zzdkoVar, zzvl zzvlVar, String str, Executor executor, zzvx zzvxVar, @Nullable zzdpl zzdplVar) {
        this.zzhhe = zzdkpVar;
        this.zzhhf = zzdkoVar;
        this.zzdud = zzvlVar;
        this.zzbut = str;
        this.executor = executor;
        this.zzhba = zzvxVar;
        this.zzhhg = zzdplVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final Executor getExecutor() {
        return this.executor;
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    @Nullable
    public final zzdpl zzaup() {
        return this.zzhhg;
    }

    @Override // com.google.android.gms.internal.ads.zzdqa
    public final zzdqa zzauq() {
        return new zzdju(this.zzhhe, this.zzhhf, this.zzdud, this.zzbut, this.executor, this.zzhba, this.zzhhg);
    }
}
