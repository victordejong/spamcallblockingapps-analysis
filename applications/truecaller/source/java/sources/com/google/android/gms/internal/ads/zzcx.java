package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcx.class */
public final class zzcx {
    private final zzain zza;
    private zzfoj<zzhf> zzb = zzfoj.zzi();
    private zzfon<zzhf, zzaiq> zzc = zzfon.zza();
    private zzhf zzd;
    private zzhf zze;
    private zzhf zzf;

    public zzcx(zzain zzainVar) {
        this.zza = zzainVar;
    }

    private final void zzj(zzaiq zzaiqVar) {
        zzfom<zzhf, zzaiq> zzfomVar = new zzfom<>();
        if (this.zzb.isEmpty()) {
            zzk(zzfomVar, this.zze, zzaiqVar);
            if (!zzflt.zza(this.zzf, this.zze)) {
                zzk(zzfomVar, this.zzf, zzaiqVar);
            }
            if (!zzflt.zza(this.zzd, this.zze) && !zzflt.zza(this.zzd, this.zzf)) {
                zzk(zzfomVar, this.zzd, zzaiqVar);
            }
        } else {
            for (int i = 0; i < this.zzb.size(); i++) {
                zzk(zzfomVar, this.zzb.get(i), zzaiqVar);
            }
            if (!this.zzb.contains(this.zzd)) {
                zzk(zzfomVar, this.zzd, zzaiqVar);
            }
        }
        this.zzc = zzfomVar.zzc();
    }

    private final void zzk(zzfom<zzhf, zzaiq> zzfomVar, zzhf zzhfVar, zzaiq zzaiqVar) {
        if (zzhfVar == null) {
            return;
        }
        if (zzaiqVar.zzi(zzhfVar.zza) != -1) {
            zzfomVar.zza(zzhfVar, zzaiqVar);
            return;
        }
        zzaiq zzaiqVar2 = this.zzc.get(zzhfVar);
        if (zzaiqVar2 == null) {
            return;
        }
        zzfomVar.zza(zzhfVar, zzaiqVar2);
    }

    private static zzhf zzl(zzahp zzahpVar, zzfoj<zzhf> zzfojVar, zzhf zzhfVar, zzain zzainVar) {
        zzaiq zzF = zzahpVar.zzF();
        int zzu = zzahpVar.zzu();
        Object zzj = zzF.zzt() ? null : zzF.zzj(zzu);
        int zzf = (zzahpVar.zzA() || zzF.zzt()) ? -1 : zzF.zzh(zzu, zzainVar, false).zzf(zzadx.zzb(zzahpVar.zzx()));
        for (int i = 0; i < zzfojVar.size(); i++) {
            zzhf zzhfVar2 = zzfojVar.get(i);
            if (zzm(zzhfVar2, zzj, zzahpVar.zzA(), zzahpVar.zzB(), zzahpVar.zzC(), zzf)) {
                return zzhfVar2;
            }
        }
        if (!zzfojVar.isEmpty() || zzhfVar == null || !zzm(zzhfVar, zzj, zzahpVar.zzA(), zzahpVar.zzB(), zzahpVar.zzC(), zzf)) {
            return null;
        }
        return zzhfVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
        if (r3.zze == r8) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean zzm(com.google.android.gms.internal.ads.zzhf r3, java.lang.Object r4, boolean r5, int r6, int r7, int r8) {
        /*
            r0 = r3
            java.lang.Object r0 = r0.zza
            r1 = r4
            boolean r0 = r0.equals(r1)
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L14
            r0 = 0
            return r0
        L14:
            r0 = r5
            if (r0 == 0) goto L31
            r0 = r10
            r5 = r0
            r0 = r3
            int r0 = r0.zzb
            r1 = r6
            if (r0 != r1) goto L4a
            r0 = r3
            int r0 = r0.zzc
            r1 = r7
            if (r0 != r1) goto L2f
            goto L48
        L2f:
            r0 = 0
            return r0
        L31:
            r0 = r10
            r5 = r0
            r0 = r3
            int r0 = r0.zzb
            r1 = -1
            if (r0 != r1) goto L4a
            r0 = r10
            r5 = r0
            r0 = r3
            int r0 = r0.zze
            r1 = r8
            if (r0 != r1) goto L4a
        L48:
            r0 = 1
            r5 = r0
        L4a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcx.zzm(com.google.android.gms.internal.ads.zzhf, java.lang.Object, boolean, int, int, int):boolean");
    }

    public final zzhf zzb() {
        return this.zzd;
    }

    public final zzhf zzc() {
        return this.zze;
    }

    public final zzhf zzd() {
        return this.zzf;
    }

    public final zzhf zze() {
        zzhf zzhfVar;
        if (this.zzb.isEmpty()) {
            return null;
        }
        zzfoj<zzhf> zzfojVar = this.zzb;
        if (!(zzfojVar instanceof List)) {
            Iterator<zzhf> it = zzfojVar.iterator();
            do {
                zzhfVar = it.next();
            } while (it.hasNext());
        } else if (zzfojVar.isEmpty()) {
            throw new NoSuchElementException();
        } else {
            zzhfVar = zzfojVar.get(zzfojVar.size() - 1);
        }
        return zzhfVar;
    }

    public final zzaiq zzf(zzhf zzhfVar) {
        return this.zzc.get(zzhfVar);
    }

    public final void zzg(zzahp zzahpVar) {
        this.zzd = zzl(zzahpVar, this.zzb, this.zze, this.zza);
    }

    public final void zzh(zzahp zzahpVar) {
        this.zzd = zzl(zzahpVar, this.zzb, this.zze, this.zza);
        zzj(zzahpVar.zzF());
    }

    public final void zzi(List<zzhf> list, zzhf zzhfVar, zzahp zzahpVar) {
        this.zzb = zzfoj.zzp(list);
        if (!list.isEmpty()) {
            this.zze = list.get(0);
            Objects.requireNonNull(zzhfVar);
            this.zzf = zzhfVar;
        }
        if (this.zzd == null) {
            this.zzd = zzl(zzahpVar, this.zzb, this.zze, this.zza);
        }
        zzj(zzahpVar.zzF());
    }
}
