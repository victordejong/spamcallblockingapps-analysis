package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqv;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdkh.class */
final class zzdkh<R extends zzbqv<? extends zzbnt>> {
    private final Executor executor;
    private final zzdkp<R> zzhhe;
    private final zzdpc zzhhi;
    private final zzdkm zzhhp;
    private zzdkl zzhhq;

    public zzdkh(zzdpc zzdpcVar, zzdkm zzdkmVar, zzdkp<R> zzdkpVar, Executor executor) {
        this.zzhhi = zzdpcVar;
        this.zzhhp = zzdkmVar;
        this.zzhhe = zzdkpVar;
        this.executor = executor;
    }

    @Deprecated
    public final zzdpl zzaut() {
        zzdnp zzahg = this.zzhhe.zzc(this.zzhhp).zzagm().zzahg();
        return this.zzhhi.zza(zzahg.zzhkw, zzahg.zzhkx, zzahg.zzhla);
    }

    public final zzdzw<zzdkl> zzaus() {
        zzdzf zzdzfVar;
        zzdkl zzdklVar = this.zzhhq;
        if (zzdklVar != null) {
            return zzdzk.zzag(zzdklVar);
        }
        if (!zzadm.zzdef.get().booleanValue()) {
            zzdkl zzdklVar2 = new zzdkl(null, zzaut(), null);
            this.zzhhq = zzdklVar2;
            zzdzfVar = zzdzk.zzag(zzdklVar2);
        } else {
            zzdzfVar = zzdzf.zzg(this.zzhhe.zzc(this.zzhhp).zza(new zzdjx(this.zzhhi.zzavw().zzhnq)).zzagm().zzagj().zza(this.zzhhi.zzavw())).zza(new zzdki(this), this.executor).zza(zzcoc.class, new zzdkj(this), this.executor);
        }
        return zzdzk.zzb(zzdzfVar, zzdkg.zzeaj, this.executor);
    }
}
