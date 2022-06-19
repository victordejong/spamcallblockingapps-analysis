package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzla.class */
final class zzla {
    private final zzca zza;
    private zzfss<zzpz> zzb = zzfss.zzo();
    private zzfsw<zzpz, zzcd> zzc = zzfsw.zzd();
    private zzpz zzd;
    private zzpz zze;
    private zzpz zzf;

    public zzla(zzca zzcaVar) {
        this.zza = zzcaVar;
    }

    private static zzpz zzj(zzbw zzbwVar, zzfss<zzpz> zzfssVar, zzpz zzpzVar, zzca zzcaVar) {
        zzcd zzm = zzbwVar.zzm();
        int zzh = zzbwVar.zzh();
        Object zzf = zzm.zzo() ? null : zzm.zzf(zzh);
        int zzb = (zzbwVar.zzp() || zzm.zzo()) ? -1 : zzm.zzd(zzh, zzcaVar, false).zzb(zzk.zzc(zzbwVar.zzk()));
        for (int i = 0; i < zzfssVar.size(); i++) {
            zzpz zzpzVar2 = zzfssVar.get(i);
            if (zzm(zzpzVar2, zzf, zzbwVar.zzp(), zzbwVar.zze(), zzbwVar.zzf(), zzb)) {
                return zzpzVar2;
            }
        }
        if (!zzfssVar.isEmpty() || zzpzVar == null || !zzm(zzpzVar, zzf, zzbwVar.zzp(), zzbwVar.zze(), zzbwVar.zzf(), zzb)) {
            return null;
        }
        return zzpzVar;
    }

    private final void zzk(zzfsv<zzpz, zzcd> zzfsvVar, zzpz zzpzVar, zzcd zzcdVar) {
        if (zzpzVar == null) {
            return;
        }
        if (zzcdVar.zza(zzpzVar.zza) != -1) {
            zzfsvVar.zza(zzpzVar, zzcdVar);
            return;
        }
        zzcd zzcdVar2 = this.zzc.get(zzpzVar);
        if (zzcdVar2 == null) {
            return;
        }
        zzfsvVar.zza(zzpzVar, zzcdVar2);
    }

    private final void zzl(zzcd zzcdVar) {
        zzfsv<zzpz, zzcd> zzfsvVar = new zzfsv<>();
        if (this.zzb.isEmpty()) {
            zzk(zzfsvVar, this.zze, zzcdVar);
            if (!zzfqc.zza(this.zzf, this.zze)) {
                zzk(zzfsvVar, this.zzf, zzcdVar);
            }
            if (!zzfqc.zza(this.zzd, this.zze) && !zzfqc.zza(this.zzd, this.zzf)) {
                zzk(zzfsvVar, this.zzd, zzcdVar);
            }
        } else {
            for (int i = 0; i < this.zzb.size(); i++) {
                zzk(zzfsvVar, this.zzb.get(i), zzcdVar);
            }
            if (!this.zzb.contains(this.zzd)) {
                zzk(zzfsvVar, this.zzd, zzcdVar);
            }
        }
        this.zzc = zzfsvVar.zzc();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
        if (r3.zze == r8) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean zzm(com.google.android.gms.internal.ads.zzpz r3, java.lang.Object r4, boolean r5, int r6, int r7, int r8) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzla.zzm(com.google.android.gms.internal.ads.zzpz, java.lang.Object, boolean, int, int, int):boolean");
    }

    public final zzcd zza(zzpz zzpzVar) {
        return this.zzc.get(zzpzVar);
    }

    public final zzpz zzb() {
        return this.zzd;
    }

    public final zzpz zzc() {
        zzpz zzpzVar;
        if (this.zzb.isEmpty()) {
            return null;
        }
        zzfss<zzpz> zzfssVar = this.zzb;
        if (!(zzfssVar instanceof List)) {
            Iterator<zzpz> it2 = zzfssVar.iterator();
            do {
                zzpzVar = it2.next();
            } while (it2.hasNext());
        } else if (zzfssVar.isEmpty()) {
            throw new NoSuchElementException();
        } else {
            zzpzVar = zzfssVar.get(zzfssVar.size() - 1);
        }
        return zzpzVar;
    }

    public final zzpz zzd() {
        return this.zze;
    }

    public final zzpz zze() {
        return this.zzf;
    }

    public final void zzg(zzbw zzbwVar) {
        this.zzd = zzj(zzbwVar, this.zzb, this.zze, this.zza);
    }

    public final void zzh(List<zzpz> list, zzpz zzpzVar, zzbw zzbwVar) {
        this.zzb = zzfss.zzm(list);
        if (!list.isEmpty()) {
            this.zze = list.get(0);
            Objects.requireNonNull(zzpzVar);
            this.zzf = zzpzVar;
        }
        if (this.zzd == null) {
            this.zzd = zzj(zzbwVar, this.zzb, this.zze, this.zza);
        }
        zzl(zzbwVar.zzm());
    }

    public final void zzi(zzbw zzbwVar) {
        this.zzd = zzj(zzbwVar, this.zzb, this.zze, this.zza);
        zzl(zzbwVar.zzm());
    }
}
