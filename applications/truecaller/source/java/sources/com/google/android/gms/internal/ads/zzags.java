package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.util.Pair;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzags.class */
public final class zzags {
    private final zzain zza = new zzain();
    private final zzaip zzb = new zzaip();
    private final zzcy zzc;
    private final Handler zzd;
    private long zze;
    private int zzf;
    private boolean zzg;
    private zzagp zzh;
    private zzagp zzi;
    private zzagp zzj;
    private int zzk;
    private Object zzl;
    private long zzm;

    public zzags(zzcy zzcyVar, Handler handler) {
        this.zzc = zzcyVar;
        this.zzd = handler;
    }

    private final boolean zzA(zzaiq zzaiqVar, zzhf zzhfVar, boolean z) {
        int zzi = zzaiqVar.zzi(zzhfVar.zza);
        return !zzaiqVar.zzf(zzaiqVar.zzh(zzi, this.zza, false).zzc, this.zzb, 0L).zzh && zzaiqVar.zzu(zzi, this.zza, this.zzb, this.zzf, this.zzg) == -1 && z;
    }

    private final long zzB(zzaiq zzaiqVar, Object obj, int i) {
        zzaiqVar.zzy(obj, this.zza);
        this.zza.zzb(i);
        this.zza.zzk(i);
        return 0L;
    }

    private static final boolean zzC(zzhf zzhfVar) {
        return !zzhfVar.zzb() && zzhfVar.zze == -1;
    }

    private final void zzs() {
        zzfog zzu = zzfoj.zzu();
        zzagp zzagpVar = this.zzh;
        while (true) {
            zzagp zzagpVar2 = zzagpVar;
            if (zzagpVar2 == null) {
                break;
            }
            zzu.zze((zzfog) zzagpVar2.zzf.zza);
            zzagpVar = zzagpVar2.zzo();
        }
        zzagp zzagpVar3 = this.zzi;
        this.zzd.post(new Runnable(this, zzu, zzagpVar3 == null ? null : zzagpVar3.zzf.zza) { // from class: com.google.android.gms.internal.ads.zzagr
            private final zzags zza;
            private final zzfog zzb;
            private final zzhf zzc;

            {
                this.zza = this;
                this.zzb = zzu;
                this.zzc = zzhfVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzq(this.zzb, this.zzc);
            }
        });
    }

    private static zzhf zzt(zzaiq zzaiqVar, Object obj, long j, long j2, zzain zzainVar) {
        zzaiqVar.zzy(obj, zzainVar);
        int zze = zzainVar.zze(j);
        return zze == -1 ? new zzhf(obj, j2, zzainVar.zzf(j)) : new zzhf(obj, zze, zzainVar.zzc(zze), j2);
    }

    private final boolean zzu(zzaiq zzaiqVar) {
        zzagp zzagpVar = this.zzh;
        if (zzagpVar == null) {
            return true;
        }
        int zzi = zzaiqVar.zzi(zzagpVar.zzb);
        while (true) {
            zzi = zzaiqVar.zzu(zzi, this.zza, this.zzb, this.zzf, this.zzg);
            while (zzagpVar.zzo() != null && !zzagpVar.zzf.zzg) {
                zzagpVar = zzagpVar.zzo();
            }
            zzagp zzo = zzagpVar.zzo();
            if (zzi == -1 || zzo == null || zzaiqVar.zzi(zzo.zzb) != zzi) {
                break;
            }
            zzagpVar = zzo;
        }
        boolean zzl = zzl(zzagpVar);
        zzagpVar.zzf = zzo(zzaiqVar, zzagpVar.zzf);
        return !zzl;
    }

    /* JADX WARN: Type inference failed for: r0v104, types: [long] */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    private final zzagq zzv(zzaiq zzaiqVar, zzagp zzagpVar, long j) {
        char c;
        Object obj;
        char c2;
        zzagq zzagqVar = zzagpVar.zzf;
        long zza = (zzagpVar.zza() + zzagqVar.zze) - j;
        if (!zzagqVar.zzg) {
            zzhf zzhfVar = zzagqVar.zza;
            zzaiqVar.zzy(zzhfVar.zza, this.zza);
            if (!zzhfVar.zzb()) {
                int zzc = this.zza.zzc(zzhfVar.zze);
                if (zzc != this.zza.zzg(zzhfVar.zze)) {
                    return zzx(zzaiqVar, zzhfVar.zza, zzhfVar.zze, zzc, zzagqVar.zze, zzhfVar.zzd);
                }
                zzB(zzaiqVar, zzhfVar.zza, zzhfVar.zze);
                return zzy(zzaiqVar, zzhfVar.zza, 0L, zzagqVar.zze, zzhfVar.zzd);
            }
            int i = zzhfVar.zzb;
            if (this.zza.zzg(i) == -1) {
                return null;
            }
            int zzd = this.zza.zzd(i, zzhfVar.zzc);
            if (zzd < 0) {
                return zzx(zzaiqVar, zzhfVar.zza, i, zzd, zzagqVar.zzc, zzhfVar.zzd);
            }
            ?? r0 = zzagqVar.zzc;
            char c3 = r0;
            if (r0 == -9223372036854775807L) {
                zzaip zzaipVar = this.zzb;
                zzain zzainVar = this.zza;
                Pair<Object, Long> zzw = zzaiqVar.zzw(zzaipVar, zzainVar, zzainVar.zzc, -9223372036854775807L, Math.max(0L, zza));
                if (zzw == null) {
                    return null;
                }
                c3 = ((Long) zzw.second).longValue();
            }
            zzB(zzaiqVar, zzhfVar.zza, zzhfVar.zzb);
            return zzy(zzaiqVar, zzhfVar.zza, Math.max(0L, (long) c3), zzagqVar.zzc, zzhfVar.zzd);
        }
        boolean z = false;
        int zzu = zzaiqVar.zzu(zzaiqVar.zzi(zzagqVar.zza.zza), this.zza, this.zzb, this.zzf, this.zzg);
        if (zzu == -1) {
            return null;
        }
        int i2 = zzaiqVar.zzh(zzu, this.zza, true).zzc;
        Object obj2 = this.zza.zzb;
        char c4 = zzagqVar.zza.zzd;
        if (zzaiqVar.zzf(i2, this.zzb, 0L).zzn == zzu) {
            Pair<Object, Long> zzw2 = zzaiqVar.zzw(this.zzb, this.zza, i2, -9223372036854775807L, Math.max(0L, zza));
            if (zzw2 == null) {
                return null;
            }
            Object obj3 = zzw2.first;
            c = ((Long) zzw2.second).longValue();
            zzagp zzo = zzagpVar.zzo();
            if (zzo == null || !zzo.zzb.equals(obj3)) {
                char c5 = this.zze;
                this.zze = 1 + c5;
                c2 = c5;
            } else {
                c2 = zzo.zzf.zza.zzd;
            }
            obj = obj3;
            c4 = c2;
            z = true;
        } else {
            c = 0;
            obj = obj2;
        }
        return zzw(zzaiqVar, zzt(zzaiqVar, obj, c, c4, this.zza), z ? 1L : 0L, c);
    }

    private final zzagq zzw(zzaiq zzaiqVar, zzhf zzhfVar, long j, long j2) {
        zzaiqVar.zzy(zzhfVar.zza, this.zza);
        return zzhfVar.zzb() ? zzx(zzaiqVar, zzhfVar.zza, zzhfVar.zzb, zzhfVar.zzc, j, zzhfVar.zzd) : zzy(zzaiqVar, zzhfVar.zza, j2, j, zzhfVar.zzd);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Type inference failed for: r3v1 */
    private final zzagq zzx(zzaiq zzaiqVar, Object obj, int i, int i2, long j, long j2) {
        zzhf zzhfVar = new zzhf(obj, i, i2, j2);
        long zzh = zzaiqVar.zzy(zzhfVar.zza, this.zza).zzh(zzhfVar.zzb, zzhfVar.zzc);
        if (i2 == this.zza.zzc(i)) {
            this.zza.zzi();
        }
        this.zza.zzj(zzhfVar.zzb);
        return new zzagq(zzhfVar, (((zzh > (-9223372036854775807L) ? 1 : (zzh == (-9223372036854775807L) ? 0 : -1)) == 0 || (zzh > 0L ? 1 : (zzh == 0L ? 0 : -1)) > 0) ? false : Math.max(0L, (-1) + zzh)) == true ? 1L : 0L, j, -9223372036854775807L, zzh, false, false, false, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    private final zzagq zzy(zzaiq zzaiqVar, Object obj, long j, long j2, long j3) {
        char c;
        zzaiqVar.zzy(obj, this.zza);
        int zzf = this.zza.zzf(j);
        zzhf zzhfVar = new zzhf(obj, j3, zzf);
        boolean zzC = zzC(zzhfVar);
        boolean zzz = zzz(zzaiqVar, zzhfVar);
        boolean zzA = zzA(zzaiqVar, zzhfVar, zzC);
        if (zzf != -1) {
            this.zza.zzj(zzf);
        }
        if (zzf != -1) {
            this.zza.zzb(zzf);
            c = 0;
        } else {
            c = 1;
        }
        char c2 = c != -9223372036854775807L ? c : this.zza.zzd;
        char c3 = j;
        if (c2 != -9223372036854775807L) {
            c3 = j;
            if (j >= c2) {
                c3 = Math.max(0L, 65535 + c2);
            }
        }
        return new zzagq(zzhfVar, c3, j2, c, c2, false, zzC, zzz, zzA);
    }

    private final boolean zzz(zzaiq zzaiqVar, zzhf zzhfVar) {
        if (!zzC(zzhfVar)) {
            return false;
        }
        return zzaiqVar.zzf(zzaiqVar.zzy(zzhfVar.zza, this.zza).zzc, this.zzb, 0L).zzo == zzaiqVar.zzi(zzhfVar.zza);
    }

    public final boolean zza(zzaiq zzaiqVar, int i) {
        this.zzf = i;
        return zzu(zzaiqVar);
    }

    public final boolean zzb(zzaiq zzaiqVar, boolean z) {
        this.zzg = z;
        return zzu(zzaiqVar);
    }

    public final boolean zzc(zzhe zzheVar) {
        zzagp zzagpVar = this.zzj;
        return zzagpVar != null && zzagpVar.zza == zzheVar;
    }

    public final void zzd(long j) {
        zzagp zzagpVar = this.zzj;
        if (zzagpVar != null) {
            zzagpVar.zzh(j);
        }
    }

    public final boolean zze() {
        zzagp zzagpVar = this.zzj;
        boolean z = true;
        if (zzagpVar != null) {
            if (zzagpVar.zzf.zzi || !zzagpVar.zzd() || this.zzj.zzf.zze == -9223372036854775807L) {
                z = false;
            } else if (this.zzk >= 100) {
                return false;
            } else {
                z = true;
            }
        }
        return z;
    }

    public final zzagq zzf(long j, zzahd zzahdVar) {
        zzagp zzagpVar = this.zzj;
        return zzagpVar == null ? zzw(zzahdVar.zza, zzahdVar.zzb, zzahdVar.zzc, zzahdVar.zzs) : zzv(zzahdVar.zza, zzagpVar, j);
    }

    public final zzagp zzg() {
        return this.zzj;
    }

    public final zzagp zzh() {
        return this.zzh;
    }

    public final zzagp zzi() {
        return this.zzi;
    }

    public final zzagp zzj() {
        zzagp zzagpVar = this.zzi;
        boolean z = false;
        if (zzagpVar != null) {
            z = false;
            if (zzagpVar.zzo() != null) {
                z = true;
            }
        }
        zzakt.zzd(z);
        this.zzi = this.zzi.zzo();
        zzs();
        return this.zzi;
    }

    public final zzagp zzk() {
        zzagp zzagpVar = this.zzh;
        if (zzagpVar == null) {
            return null;
        }
        if (zzagpVar == this.zzi) {
            this.zzi = zzagpVar.zzo();
        }
        this.zzh.zzm();
        int i = this.zzk - 1;
        this.zzk = i;
        if (i == 0) {
            this.zzj = null;
            zzagp zzagpVar2 = this.zzh;
            this.zzl = zzagpVar2.zzb;
            this.zzm = zzagpVar2.zzf.zza.zzd;
        }
        this.zzh = this.zzh.zzo();
        zzs();
        return this.zzh;
    }

    public final boolean zzl(zzagp zzagpVar) {
        zzakt.zzd(zzagpVar != null);
        if (zzagpVar.equals(this.zzj)) {
            return false;
        }
        this.zzj = zzagpVar;
        boolean z = false;
        while (zzagpVar.zzo() != null) {
            zzagpVar = zzagpVar.zzo();
            if (zzagpVar == this.zzi) {
                this.zzi = this.zzh;
                z = true;
            }
            zzagpVar.zzm();
            this.zzk--;
        }
        this.zzj.zzn(null);
        zzs();
        return z;
    }

    public final void zzm() {
        if (this.zzk == 0) {
            return;
        }
        zzagp zzagpVar = this.zzh;
        zzakt.zze(zzagpVar);
        this.zzl = zzagpVar.zzb;
        this.zzm = zzagpVar.zzf.zza.zzd;
        while (zzagpVar != null) {
            zzagpVar.zzm();
            zzagpVar = zzagpVar.zzo();
        }
        this.zzh = null;
        this.zzj = null;
        this.zzi = null;
        this.zzk = 0;
        zzs();
    }

    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    public final boolean zzn(zzaiq zzaiqVar, long j, long j2) {
        zzagq zzagqVar;
        boolean z;
        zzagp zzagpVar = null;
        for (zzagp zzagpVar2 = this.zzh; zzagpVar2 != null; zzagpVar2 = zzagpVar2.zzo()) {
            zzagq zzagqVar2 = zzagpVar2.zzf;
            if (zzagpVar == null) {
                zzagqVar = zzo(zzaiqVar, zzagqVar2);
            } else {
                zzagq zzv = zzv(zzaiqVar, zzagpVar, j);
                if (zzv == null) {
                    return !zzl(zzagpVar);
                } else if (zzagqVar2.zzb != zzv.zzb || !zzagqVar2.zza.equals(zzv.zza)) {
                    return !zzl(zzagpVar);
                } else {
                    zzagqVar = zzv;
                }
            }
            zzagpVar2.zzf = zzagqVar.zzb(zzagqVar2.zzc);
            long j3 = zzagqVar2.zze;
            long j4 = zzagqVar.zze;
            if (j3 != -9223372036854775807L && j3 != j4) {
                zzagpVar2.zzr();
                long j5 = zzagqVar.zze;
                char zza = j5 == -9223372036854775807L ? (char) 65535 : j5 + zzagpVar2.zza();
                if (zzagpVar2 == this.zzi) {
                    boolean z2 = zzagpVar2.zzf.zzf;
                    if (j2 == Long.MIN_VALUE || j2 >= zza) {
                        z = true;
                        return !zzl(zzagpVar2) && !z;
                    }
                }
                z = false;
                if (!zzl(zzagpVar2)) {
                    return false;
                }
            }
            zzagpVar = zzagpVar2;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    public final zzagq zzo(zzaiq zzaiqVar, zzagq zzagqVar) {
        char c;
        int i;
        zzhf zzhfVar = zzagqVar.zza;
        boolean zzC = zzC(zzhfVar);
        boolean zzz = zzz(zzaiqVar, zzhfVar);
        boolean zzA = zzA(zzaiqVar, zzhfVar, zzC);
        zzaiqVar.zzy(zzagqVar.zza.zza, this.zza);
        if (zzhfVar.zzb() || (i = zzhfVar.zze) == -1) {
            c = 1;
        } else {
            this.zza.zzb(i);
            c = 0;
        }
        char zzh = zzhfVar.zzb() ? this.zza.zzh(zzhfVar.zzb, zzhfVar.zzc) : c != -9223372036854775807L ? c : this.zza.zzd;
        if (zzhfVar.zzb()) {
            this.zza.zzj(zzhfVar.zzb);
        } else {
            int i2 = zzhfVar.zze;
            if (i2 != -1) {
                this.zza.zzj(i2);
            }
        }
        return new zzagq(zzhfVar, zzagqVar.zzb, zzagqVar.zzc, c, zzh, false, zzC, zzz, zzA);
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    public final zzhf zzp(zzaiq zzaiqVar, Object obj, long j) {
        char c;
        int zzi;
        int i = zzaiqVar.zzy(obj, this.zza).zzc;
        Object obj2 = this.zzl;
        if (obj2 == null || (zzi = zzaiqVar.zzi(obj2)) == -1 || zzaiqVar.zzh(zzi, this.zza, false).zzc != i) {
            zzagp zzagpVar = this.zzh;
            while (true) {
                zzagp zzagpVar2 = zzagpVar;
                if (zzagpVar2 == null) {
                    zzagp zzagpVar3 = this.zzh;
                    while (true) {
                        zzagp zzagpVar4 = zzagpVar3;
                        if (zzagpVar4 != null) {
                            int zzi2 = zzaiqVar.zzi(zzagpVar4.zzb);
                            if (zzi2 != -1 && zzaiqVar.zzh(zzi2, this.zza, false).zzc == i) {
                                c = zzagpVar4.zzf.zza.zzd;
                                break;
                            }
                            zzagpVar3 = zzagpVar4.zzo();
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
                } else if (zzagpVar2.zzb.equals(obj)) {
                    c = zzagpVar2.zzf.zza.zzd;
                    break;
                } else {
                    zzagpVar = zzagpVar2.zzo();
                }
            }
        } else {
            c = this.zzm;
        }
        return zzt(zzaiqVar, obj, j, c, this.zza);
    }

    public final /* synthetic */ void zzq(zzfog zzfogVar, zzhf zzhfVar) {
        this.zzc.zze(zzfogVar.zzf(), zzhfVar);
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
    public final com.google.android.gms.internal.ads.zzagp zzr(com.google.android.gms.internal.ads.zzahw[] r13, com.google.android.gms.internal.ads.zzjz r14, com.google.android.gms.internal.ads.zzko r15, com.google.android.gms.internal.ads.zzagz r16, com.google.android.gms.internal.ads.zzagq r17, com.google.android.gms.internal.ads.zzka r18) {
        /*
            r12 = this;
            r0 = r12
            com.google.android.gms.internal.ads.zzagp r0 = r0.zzj
            r19 = r0
            r0 = r19
            if (r0 != 0) goto L2f
            r0 = r17
            com.google.android.gms.internal.ads.zzhf r0 = r0.zza
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
            long r0 = r0.zza()
            r1 = r12
            com.google.android.gms.internal.ads.zzagp r1 = r1.zzj
            com.google.android.gms.internal.ads.zzagq r1 = r1.zzf
            long r1 = r1.zze
            long r0 = r0 + r1
            r1 = r17
            long r1 = r1.zzb
            long r0 = r0 - r1
            r20 = r0
        L47:
            com.google.android.gms.internal.ads.zzagp r0 = new com.google.android.gms.internal.ads.zzagp
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
            r13 = r0
            r0 = r12
            com.google.android.gms.internal.ads.zzagp r0 = r0.zzj
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L6c
            r0 = r14
            r1 = r13
            r0.zzn(r1)
            goto L76
        L6c:
            r0 = r12
            r1 = r13
            r0.zzh = r1
            r0 = r12
            r1 = r13
            r0.zzi = r1
        L76:
            r0 = r12
            r1 = 0
            r0.zzl = r1
            r0 = r12
            r1 = r13
            r0.zzj = r1
            r0 = r12
            r1 = r12
            int r1 = r1.zzk
            r2 = 1
            int r1 = r1 + r2
            r0.zzk = r1
            r0 = r12
            r0.zzs()
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzags.zzr(com.google.android.gms.internal.ads.zzahw[], com.google.android.gms.internal.ads.zzjz, com.google.android.gms.internal.ads.zzko, com.google.android.gms.internal.ads.zzagz, com.google.android.gms.internal.ads.zzagq, com.google.android.gms.internal.ads.zzka):com.google.android.gms.internal.ads.zzagp");
    }
}
