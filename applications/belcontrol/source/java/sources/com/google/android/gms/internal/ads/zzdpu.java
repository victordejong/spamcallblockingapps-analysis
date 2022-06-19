package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbnt;
import java.util.LinkedList;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdpu.class */
public final class zzdpu<AdT extends zzbnt> {
    private final zzdpc zzhhi;
    private final zzdov zzhop;
    @GuardedBy("this")
    private zzdqa zzhoq;
    @GuardedBy("this")
    private zzeae<zzdpm<AdT>> zzhor;
    @GuardedBy("this")
    private zzdzw<zzdpm<AdT>> zzhos;
    private final zzdpx<AdT> zzhou;
    @GuardedBy("this")
    private int zzhot = zzdpz.zzhoz;
    private final zzdzl<zzdpm<AdT>> zzhow = new zzdpv(this);
    private final LinkedList<zzdqa> zzhov = new LinkedList<>();

    public zzdpu(zzdpc zzdpcVar, zzdov zzdovVar, zzdpx<AdT> zzdpxVar) {
        this.zzhhi = zzdpcVar;
        this.zzhop = zzdovVar;
        this.zzhou = zzdpxVar;
        zzdovVar.zza(new zzdpw(this));
    }

    private final boolean zzawk() {
        zzdzw<zzdpm<AdT>> zzdzwVar = this.zzhos;
        return zzdzwVar == null || zzdzwVar.isDone();
    }

    public final void zzd(zzdqa zzdqaVar) {
        while (zzawk()) {
            if (zzdqaVar == null && this.zzhov.isEmpty()) {
                return;
            }
            zzdqa zzdqaVar2 = zzdqaVar;
            if (zzdqaVar == null) {
                zzdqaVar2 = this.zzhov.remove();
            }
            if (zzdqaVar2.zzaup() != null && this.zzhhi.zzb(zzdqaVar2.zzaup())) {
                this.zzhoq = zzdqaVar2.zzauq();
                this.zzhor = zzeae.zzbag();
                zzdzw<zzdpm<AdT>> zza = this.zzhou.zza(this.zzhoq);
                this.zzhos = zza;
                zzdzk.zza(zza, this.zzhow, zzdqaVar2.getExecutor());
                return;
            }
            zzdqaVar = null;
        }
        if (zzdqaVar != null) {
            this.zzhov.add(zzdqaVar);
        }
    }

    public final /* synthetic */ void zzawl() {
        synchronized (this) {
            zzd(this.zzhoq);
        }
    }

    public final void zzb(zzdqa zzdqaVar) {
        this.zzhov.add(zzdqaVar);
    }

    public final /* synthetic */ zzdzw zzc(zzdpm zzdpmVar) {
        zzdzw zzag;
        synchronized (this) {
            zzag = zzdzk.zzag(new zzdpy(zzdpmVar, this.zzhoq));
        }
        return zzag;
    }

    public final zzdzw<zzdpy<AdT>> zzc(zzdqa zzdqaVar) {
        synchronized (this) {
            if (zzawk()) {
                return null;
            }
            this.zzhot = zzdpz.zzhpb;
            if (this.zzhoq.zzaup() != null && zzdqaVar.zzaup() != null && this.zzhoq.zzaup().equals(zzdqaVar.zzaup())) {
                this.zzhot = zzdpz.zzhpa;
                return zzdzk.zzb(this.zzhor, new zzdpt(this), zzdqaVar.getExecutor());
            }
            return null;
        }
    }
}
