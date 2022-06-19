package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.util.Pair;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzhx.class */
public final class zzhx {
    private final zzca zza = new zzca();
    private final zzcc zzb = new zzcc();
    private final zzlb zzc;
    private final Handler zzd;
    private long zze;
    private int zzf;
    private boolean zzg;
    private zzhu zzh;
    private zzhu zzi;
    private zzhu zzj;
    private int zzk;
    private Object zzl;
    private long zzm;

    public zzhx(zzlb zzlbVar, Handler handler) {
        this.zzc = zzlbVar;
        this.zzd = handler;
    }

    private final boolean zzA(zzcd zzcdVar, zzpz zzpzVar) {
        if (!zzC(zzpzVar)) {
            return false;
        }
        return zzcdVar.zze(zzcdVar.zzn(zzpzVar.zza, this.zza).zzd, this.zzb, 0L).zzp == zzcdVar.zza(zzpzVar.zza);
    }

    private final boolean zzB(zzcd zzcdVar) {
        zzhu zzhuVar = this.zzh;
        if (zzhuVar == null) {
            return true;
        }
        int zza = zzcdVar.zza(zzhuVar.zzb);
        while (true) {
            zza = zzcdVar.zzi(zza, this.zza, this.zzb, this.zzf, this.zzg);
            while (zzhuVar.zzh() != null && !zzhuVar.zzf.zzg) {
                zzhuVar = zzhuVar.zzh();
            }
            zzhu zzh = zzhuVar.zzh();
            if (zza == -1 || zzh == null || zzcdVar.zza(zzh.zzb) != zza) {
                break;
            }
            zzhuVar = zzh;
        }
        boolean zzm = zzm(zzhuVar);
        zzhuVar.zzf = zzg(zzcdVar, zzhuVar.zzf);
        return !zzm;
    }

    private static final boolean zzC(zzpz zzpzVar) {
        return !zzpzVar.zzb() && zzpzVar.zze == -1;
    }

    private final long zzs(zzcd zzcdVar, Object obj, int i) {
        zzcdVar.zzn(obj, this.zza);
        this.zza.zzg(i);
        this.zza.zzi(i);
        return 0L;
    }

    /* JADX WARN: Type inference failed for: r0v104, types: [long] */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    private final zzhv zzt(zzcd zzcdVar, zzhu zzhuVar, long j) {
        char c;
        Object obj;
        char c2;
        zzhv zzhvVar = zzhuVar.zzf;
        long zze = (zzhuVar.zze() + zzhvVar.zze) - j;
        if (!zzhvVar.zzg) {
            zzpz zzpzVar = zzhvVar.zza;
            zzcdVar.zzn(zzpzVar.zza, this.zza);
            if (!zzpzVar.zzb()) {
                int zzd = this.zza.zzd(zzpzVar.zze);
                if (zzd != this.zza.zza(zzpzVar.zze)) {
                    return zzv(zzcdVar, zzpzVar.zza, zzpzVar.zze, zzd, zzhvVar.zze, zzpzVar.zzd);
                }
                zzs(zzcdVar, zzpzVar.zza, zzpzVar.zze);
                return zzw(zzcdVar, zzpzVar.zza, 0L, zzhvVar.zze, zzpzVar.zzd);
            }
            int i = zzpzVar.zzb;
            if (this.zza.zza(i) == -1) {
                return null;
            }
            int zze2 = this.zza.zze(i, zzpzVar.zzc);
            if (zze2 < 0) {
                return zzv(zzcdVar, zzpzVar.zza, i, zze2, zzhvVar.zzc, zzpzVar.zzd);
            }
            ?? r0 = zzhvVar.zzc;
            char c3 = r0;
            if (r0 == -9223372036854775807L) {
                zzcc zzccVar = this.zzb;
                zzca zzcaVar = this.zza;
                Pair<Object, Long> zzm = zzcdVar.zzm(zzccVar, zzcaVar, zzcaVar.zzd, -9223372036854775807L, Math.max(0L, zze));
                if (zzm == null) {
                    return null;
                }
                c3 = ((Long) zzm.second).longValue();
            }
            zzs(zzcdVar, zzpzVar.zza, zzpzVar.zzb);
            return zzw(zzcdVar, zzpzVar.zza, Math.max(0L, (long) c3), zzhvVar.zzc, zzpzVar.zzd);
        }
        boolean z = false;
        int zzi = zzcdVar.zzi(zzcdVar.zza(zzhvVar.zza.zza), this.zza, this.zzb, this.zzf, this.zzg);
        if (zzi == -1) {
            return null;
        }
        int i2 = zzcdVar.zzd(zzi, this.zza, true).zzd;
        Object obj2 = this.zza.zzc;
        char c4 = zzhvVar.zza.zzd;
        if (zzcdVar.zze(i2, this.zzb, 0L).zzo == zzi) {
            Pair<Object, Long> zzm2 = zzcdVar.zzm(this.zzb, this.zza, i2, -9223372036854775807L, Math.max(0L, zze));
            if (zzm2 == null) {
                return null;
            }
            Object obj3 = zzm2.first;
            c = ((Long) zzm2.second).longValue();
            zzhu zzh = zzhuVar.zzh();
            if (zzh == null || !zzh.zzb.equals(obj3)) {
                char c5 = this.zze;
                this.zze = 1 + c5;
                c2 = c5;
            } else {
                c2 = zzh.zzf.zza.zzd;
            }
            obj = obj3;
            c4 = c2;
            z = true;
        } else {
            c = 0;
            obj = obj2;
        }
        return zzu(zzcdVar, zzx(zzcdVar, obj, c, c4, this.zza), z ? 1L : 0L, c);
    }

    private final zzhv zzu(zzcd zzcdVar, zzpz zzpzVar, long j, long j2) {
        zzcdVar.zzn(zzpzVar.zza, this.zza);
        return zzpzVar.zzb() ? zzv(zzcdVar, zzpzVar.zza, zzpzVar.zzb, zzpzVar.zzc, j, zzpzVar.zzd) : zzw(zzcdVar, zzpzVar.zza, j2, j, zzpzVar.zzd);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r3v1 */
    private final zzhv zzv(zzcd zzcdVar, Object obj, int i, int i2, long j, long j2) {
        zzpz zzpzVar = new zzpz(obj, i, i2, j2);
        long zzf = zzcdVar.zzn(zzpzVar.zza, this.zza).zzf(zzpzVar.zzb, zzpzVar.zzc);
        if (i2 == this.zza.zzd(i)) {
            this.zza.zzh();
        }
        this.zza.zzk(zzpzVar.zzb);
        ?? r23 = false;
        if (zzf != -9223372036854775807L) {
            r23 = false;
            if (zzf <= 0) {
                r23 = Math.max(0L, (-1) + zzf);
            }
        }
        return new zzhv(zzpzVar, r23 == true ? 1L : 0L, j, -9223372036854775807L, zzf, false, false, false, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    private final zzhv zzw(zzcd zzcdVar, Object obj, long j, long j2, long j3) {
        char c;
        zzcdVar.zzn(obj, this.zza);
        int zzb = this.zza.zzb(j);
        zzpz zzpzVar = new zzpz(obj, j3, zzb);
        boolean zzC = zzC(zzpzVar);
        boolean zzA = zzA(zzcdVar, zzpzVar);
        boolean zzz = zzz(zzcdVar, zzpzVar, zzC);
        if (zzb != -1) {
            this.zza.zzk(zzb);
        }
        if (zzb != -1) {
            this.zza.zzg(zzb);
            c = 0;
        } else {
            c = 1;
        }
        char c2 = c != -9223372036854775807L ? c : this.zza.zze;
        char c3 = j;
        if (c2 != -9223372036854775807L) {
            c3 = j;
            if (j >= c2) {
                c3 = Math.max(0L, 65535 + c2);
            }
        }
        return new zzhv(zzpzVar, c3, j2, c, c2, false, zzC, zzA, zzz);
    }

    private static zzpz zzx(zzcd zzcdVar, Object obj, long j, long j2, zzca zzcaVar) {
        zzcdVar.zzn(obj, zzcaVar);
        int zzc = zzcaVar.zzc(j);
        return zzc == -1 ? new zzpz(obj, j2, zzcaVar.zzb(j)) : new zzpz(obj, zzc, zzcaVar.zzd(zzc), j2);
    }

    private final void zzy() {
        final zzfsp zzi = zzfss.zzi();
        zzhu zzhuVar = this.zzh;
        while (true) {
            zzhu zzhuVar2 = zzhuVar;
            if (zzhuVar2 == null) {
                break;
            }
            zzi.zze((zzfsp) zzhuVar2.zzf.zza);
            zzhuVar = zzhuVar2.zzh();
        }
        zzhu zzhuVar3 = this.zzi;
        final zzpz zzpzVar = zzhuVar3 == null ? null : zzhuVar3.zzf.zza;
        this.zzd.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzhw
            @Override // java.lang.Runnable
            public final void run() {
                zzhx.this.zzj(zzi, zzpzVar);
            }
        });
    }

    private final boolean zzz(zzcd zzcdVar, zzpz zzpzVar, boolean z) {
        int zza = zzcdVar.zza(zzpzVar.zza);
        return !zzcdVar.zze(zzcdVar.zzd(zza, this.zza, false).zzd, this.zzb, 0L).zzi && zzcdVar.zzi(zza, this.zza, this.zzb, this.zzf, this.zzg) == -1 && z;
    }

    public final zzhu zza() {
        zzhu zzhuVar = this.zzh;
        if (zzhuVar == null) {
            return null;
        }
        if (zzhuVar == this.zzi) {
            this.zzi = zzhuVar.zzh();
        }
        this.zzh.zzn();
        int i = this.zzk - 1;
        this.zzk = i;
        if (i == 0) {
            this.zzj = null;
            zzhu zzhuVar2 = this.zzh;
            this.zzl = zzhuVar2.zzb;
            this.zzm = zzhuVar2.zzf.zza.zzd;
        }
        this.zzh = this.zzh.zzh();
        zzy();
        return this.zzh;
    }

    public final zzhu zzb() {
        zzhu zzhuVar = this.zzi;
        boolean z = false;
        if (zzhuVar != null) {
            z = false;
            if (zzhuVar.zzh() != null) {
                z = true;
            }
        }
        zzdy.zzf(z);
        this.zzi = this.zzi.zzh();
        zzy();
        return this.zzi;
    }

    public final zzhu zzc() {
        return this.zzj;
    }

    public final zzhu zzd() {
        return this.zzh;
    }

    public final zzhu zze() {
        return this.zzi;
    }

    public final zzhv zzf(long j, zzif zzifVar) {
        zzhu zzhuVar = this.zzj;
        return zzhuVar == null ? zzu(zzifVar.zza, zzifVar.zzb, zzifVar.zzc, zzifVar.zzs) : zzt(zzifVar.zza, zzhuVar, j);
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    public final zzhv zzg(zzcd zzcdVar, zzhv zzhvVar) {
        char c;
        int i;
        zzpz zzpzVar = zzhvVar.zza;
        boolean zzC = zzC(zzpzVar);
        boolean zzA = zzA(zzcdVar, zzpzVar);
        boolean zzz = zzz(zzcdVar, zzpzVar, zzC);
        zzcdVar.zzn(zzhvVar.zza.zza, this.zza);
        if (zzpzVar.zzb() || (i = zzpzVar.zze) == -1) {
            c = 1;
        } else {
            this.zza.zzg(i);
            c = 0;
        }
        char zzf = zzpzVar.zzb() ? this.zza.zzf(zzpzVar.zzb, zzpzVar.zzc) : c != -9223372036854775807L ? c : this.zza.zze;
        if (zzpzVar.zzb()) {
            this.zza.zzk(zzpzVar.zzb);
        } else {
            int i2 = zzpzVar.zze;
            if (i2 != -1) {
                this.zza.zzk(i2);
            }
        }
        return new zzhv(zzpzVar, zzhvVar.zzb, zzhvVar.zzc, c, zzf, false, zzC, zzA, zzz);
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    public final zzpz zzh(zzcd zzcdVar, Object obj, long j) {
        char c;
        int zza;
        int i = zzcdVar.zzn(obj, this.zza).zzd;
        Object obj2 = this.zzl;
        if (obj2 == null || (zza = zzcdVar.zza(obj2)) == -1 || zzcdVar.zzd(zza, this.zza, false).zzd != i) {
            zzhu zzhuVar = this.zzh;
            while (true) {
                zzhu zzhuVar2 = zzhuVar;
                if (zzhuVar2 == null) {
                    zzhu zzhuVar3 = this.zzh;
                    while (true) {
                        zzhu zzhuVar4 = zzhuVar3;
                        if (zzhuVar4 != null) {
                            int zza2 = zzcdVar.zza(zzhuVar4.zzb);
                            if (zza2 != -1 && zzcdVar.zzd(zza2, this.zza, false).zzd == i) {
                                c = zzhuVar4.zzf.zza.zzd;
                                break;
                            }
                            zzhuVar3 = zzhuVar4.zzh();
                        } else {
                            ?? r0 = this.zze;
                            this.zze = 1 + r0;
                            c = r0;
                            if (this.zzh == null) {
                                this.zzl = obj;
                                this.zzm = r0;
                                c = r0;
                            }
                        }
                    }
                } else if (zzhuVar2.zzb.equals(obj)) {
                    c = zzhuVar2.zzf.zza.zzd;
                    break;
                } else {
                    zzhuVar = zzhuVar2.zzh();
                }
            }
        } else {
            c = this.zzm;
        }
        return zzx(zzcdVar, obj, j, c, this.zza);
    }

    public final void zzi() {
        if (this.zzk == 0) {
            return;
        }
        zzhu zzhuVar = this.zzh;
        zzdy.zzb(zzhuVar);
        this.zzl = zzhuVar.zzb;
        this.zzm = zzhuVar.zzf.zza.zzd;
        while (zzhuVar != null) {
            zzhuVar.zzn();
            zzhuVar = zzhuVar.zzh();
        }
        this.zzh = null;
        this.zzj = null;
        this.zzi = null;
        this.zzk = 0;
        zzy();
    }

    public final /* synthetic */ void zzj(zzfsp zzfspVar, zzpz zzpzVar) {
        this.zzc.zzX(zzfspVar.zzf(), zzpzVar);
    }

    public final void zzk(long j) {
        zzhu zzhuVar = this.zzj;
        if (zzhuVar != null) {
            zzhuVar.zzm(j);
        }
    }

    public final boolean zzl(zzpy zzpyVar) {
        zzhu zzhuVar = this.zzj;
        return zzhuVar != null && zzhuVar.zza == zzpyVar;
    }

    public final boolean zzm(zzhu zzhuVar) {
        zzdy.zzf(zzhuVar != null);
        if (zzhuVar.equals(this.zzj)) {
            return false;
        }
        this.zzj = zzhuVar;
        boolean z = false;
        while (zzhuVar.zzh() != null) {
            zzhuVar = zzhuVar.zzh();
            if (zzhuVar == this.zzi) {
                this.zzi = this.zzh;
                z = true;
            }
            zzhuVar.zzn();
            this.zzk--;
        }
        this.zzj.zzo(null);
        zzy();
        return z;
    }

    public final boolean zzn() {
        zzhu zzhuVar = this.zzj;
        boolean z = true;
        if (zzhuVar != null) {
            if (zzhuVar.zzf.zzi || !zzhuVar.zzr() || this.zzj.zzf.zze == -9223372036854775807L) {
                z = false;
            } else if (this.zzk >= 100) {
                return false;
            } else {
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    public final boolean zzo(zzcd zzcdVar, long j, long j2) {
        zzhv zzhvVar;
        boolean z;
        zzhu zzhuVar = null;
        for (zzhu zzhuVar2 = this.zzh; zzhuVar2 != null; zzhuVar2 = zzhuVar2.zzh()) {
            zzhv zzhvVar2 = zzhuVar2.zzf;
            if (zzhuVar == null) {
                zzhvVar = zzg(zzcdVar, zzhvVar2);
            } else {
                zzhv zzt = zzt(zzcdVar, zzhuVar, j);
                if (zzt == null) {
                    return !zzm(zzhuVar);
                } else if (zzhvVar2.zzb != zzt.zzb || !zzhvVar2.zza.equals(zzt.zza)) {
                    return !zzm(zzhuVar);
                } else {
                    zzhvVar = zzt;
                }
            }
            zzhuVar2.zzf = zzhvVar.zza(zzhvVar2.zzc);
            long j3 = zzhvVar2.zze;
            long j4 = zzhvVar.zze;
            if (j3 != -9223372036854775807L && j3 != j4) {
                zzhuVar2.zzq();
                long j5 = zzhvVar.zze;
                char zze = j5 == -9223372036854775807L ? (char) 65535 : j5 + zzhuVar2.zze();
                if (zzhuVar2 == this.zzi) {
                    boolean z2 = zzhuVar2.zzf.zzf;
                    if (j2 == Long.MIN_VALUE || j2 >= zze) {
                        z = true;
                        return !zzm(zzhuVar2) && !z;
                    }
                }
                z = false;
                if (!zzm(zzhuVar2)) {
                    return false;
                }
            }
            zzhuVar = zzhuVar2;
        }
        return true;
    }

    public final boolean zzp(zzcd zzcdVar, int i) {
        this.zzf = i;
        return zzB(zzcdVar);
    }

    public final boolean zzq(zzcd zzcdVar, boolean z) {
        this.zzg = z;
        return zzB(zzcdVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
        if (r20 != (-9223372036854775807L)) goto L10;
     */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzhu zzr(com.google.android.gms.internal.ads.zzim[] r13, com.google.android.gms.internal.ads.zzsv r14, com.google.android.gms.internal.ads.zztk r15, com.google.android.gms.internal.ads.zzie r16, com.google.android.gms.internal.ads.zzhv r17, com.google.android.gms.internal.ads.zzsw r18) {
        /*
            r12 = this;
            r0 = r12
            com.google.android.gms.internal.ads.zzhu r0 = r0.zzj
            r19 = r0
            r0 = r19
            if (r0 != 0) goto L2f
            r0 = r17
            com.google.android.gms.internal.ads.zzpz r0 = r0.zza
            boolean r0 = r0.zzb()
            if (r0 == 0) goto L29
            r0 = r17
            long r0 = r0.zzc
            r20 = r0
            r0 = r20
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L29
            goto L47
        L29:
            r0 = 0
            r20 = r0
            goto L47
        L2f:
            r0 = r19
            long r0 = r0.zze()
            r1 = r12
            com.google.android.gms.internal.ads.zzhu r1 = r1.zzj
            com.google.android.gms.internal.ads.zzhv r1 = r1.zzf
            long r1 = r1.zze
            long r0 = r0 + r1
            r1 = r17
            long r1 = r1.zzb
            long r0 = r0 - r1
            r20 = r0
        L47:
            com.google.android.gms.internal.ads.zzhu r0 = new com.google.android.gms.internal.ads.zzhu
            r1 = r0
            r2 = r13
            r3 = r20
            r4 = r14
            r5 = r15
            r6 = r16
            r7 = r17
            r8 = r18
            r9 = 0
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            r14 = r0
            r0 = r12
            com.google.android.gms.internal.ads.zzhu r0 = r0.zzj
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L6c
            r0 = r13
            r1 = r14
            r0.zzo(r1)
            goto L76
        L6c:
            r0 = r12
            r1 = r14
            r0.zzh = r1
            r0 = r12
            r1 = r14
            r0.zzi = r1
        L76:
            r0 = r12
            r1 = 0
            r0.zzl = r1
            r0 = r12
            r1 = r14
            r0.zzj = r1
            r0 = r12
            r1 = r12
            int r1 = r1.zzk
            r2 = 1
            int r1 = r1 + r2
            r0.zzk = r1
            r0 = r12
            r0.zzy()
            r0 = r14
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhx.zzr(com.google.android.gms.internal.ads.zzim[], com.google.android.gms.internal.ads.zzsv, com.google.android.gms.internal.ads.zztk, com.google.android.gms.internal.ads.zzie, com.google.android.gms.internal.ads.zzhv, com.google.android.gms.internal.ads.zzsw):com.google.android.gms.internal.ads.zzhu");
    }
}
