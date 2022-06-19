package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbnt;
import java.util.LinkedList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdpu.class */
public final class zzdpu<AdT extends zzbnt> {
    private final zzdpc zzhhi;
    private final zzdov zzhop;
    private zzdqa zzhoq;
    private zzeae<zzdpm<AdT>> zzhor;
    private zzdzw<zzdpm<AdT>> zzhos;
    private final zzdpx<AdT> zzhou;
    private int zzhot = zzdpz.zzhoz;
    private final zzdzl<zzdpm<AdT>> zzhow = new zzdpv(this);
    private final LinkedList<zzdqa> zzhov = new LinkedList<>();

    public zzdpu(zzdpc zzdpcVar, zzdov zzdovVar, zzdpx<AdT> zzdpxVar) {
        this.zzhhi = zzdpcVar;
        this.zzhop = zzdovVar;
        this.zzhou = zzdpxVar;
        zzdovVar.zza(new zzdoy(this) { // from class: com.google.android.gms.internal.ads.zzdpw
            private final zzdpu zzhoo;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhoo = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdoy
            public final void execute() {
                this.zzhoo.zzawl();
            }
        });
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

    public final /* synthetic */ zzdzw zzc(zzdpm zzdpmVar) throws Exception {
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
                return zzdzk.zzb(this.zzhor, new zzdyu(this) { // from class: com.google.android.gms.internal.ads.zzdpt
                    private final zzdpu zzhoo;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzhoo = this;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdyu
                    public final zzdzw zzf(Object obj) {
                        return this.zzhoo.zzc((zzdpm) obj);
                    }
                }, zzdqaVar.getExecutor());
            }
            return null;
        }
    }
}
