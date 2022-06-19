package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqi.class */
public final class zzqi {
    public final int zza;
    public final zzpz zzb;
    private final CopyOnWriteArrayList<zzqh> zzc;

    public zzqi() {
        this(new CopyOnWriteArrayList(), 0, null, 0L);
    }

    private zzqi(CopyOnWriteArrayList<zzqh> copyOnWriteArrayList, int i, zzpz zzpzVar, long j) {
        this.zzc = copyOnWriteArrayList;
        this.zza = i;
        this.zzb = zzpzVar;
    }

    private static final long zzn(long j) {
        long zzd = zzk.zzd(j);
        if (zzd == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return zzd;
    }

    public final zzqi zza(int i, zzpz zzpzVar, long j) {
        return new zzqi(this.zzc, i, zzpzVar, 0L);
    }

    public final void zzb(Handler handler, zzqj zzqjVar) {
        this.zzc.add(new zzqh(handler, zzqjVar));
    }

    public final void zzc(final zzpw zzpwVar) {
        Iterator<zzqh> it2 = this.zzc.iterator();
        while (it2.hasNext()) {
            zzqh next = it2.next();
            final zzqj zzqjVar = next.zzb;
            zzfn.zzU(next.zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzqg
                @Override // java.lang.Runnable
                public final void run() {
                    zzqi zzqiVar = zzqi.this;
                    zzqjVar.zzbe(zzqiVar.zza, zzqiVar.zzb, zzpwVar);
                }
            });
        }
    }

    public final void zzd(int i, zzab zzabVar, int i2, Object obj, long j) {
        zzc(new zzpw(1, i, zzabVar, 0, null, zzn(j), -9223372036854775807L));
    }

    public final void zze(final zzpr zzprVar, final zzpw zzpwVar) {
        Iterator<zzqh> it2 = this.zzc.iterator();
        while (it2.hasNext()) {
            zzqh next = it2.next();
            final zzqj zzqjVar = next.zzb;
            zzfn.zzU(next.zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzqc
                @Override // java.lang.Runnable
                public final void run() {
                    zzqi zzqiVar = zzqi.this;
                    zzqjVar.zzbf(zzqiVar.zza, zzqiVar.zzb, zzprVar, zzpwVar);
                }
            });
        }
    }

    public final void zzf(zzpr zzprVar, int i, int i2, zzab zzabVar, int i3, Object obj, long j, long j2) {
        zze(zzprVar, new zzpw(1, -1, null, 0, null, zzn(j), zzn(j2)));
    }

    public final void zzg(final zzpr zzprVar, final zzpw zzpwVar) {
        Iterator<zzqh> it2 = this.zzc.iterator();
        while (it2.hasNext()) {
            zzqh next = it2.next();
            final zzqj zzqjVar = next.zzb;
            zzfn.zzU(next.zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzqd
                @Override // java.lang.Runnable
                public final void run() {
                    zzqi zzqiVar = zzqi.this;
                    zzqjVar.zzbg(zzqiVar.zza, zzqiVar.zzb, zzprVar, zzpwVar);
                }
            });
        }
    }

    public final void zzh(zzpr zzprVar, int i, int i2, zzab zzabVar, int i3, Object obj, long j, long j2) {
        zzg(zzprVar, new zzpw(1, -1, null, 0, null, zzn(j), zzn(j2)));
    }

    public final void zzi(final zzpr zzprVar, final zzpw zzpwVar, final IOException iOException, final boolean z) {
        Iterator<zzqh> it2 = this.zzc.iterator();
        while (it2.hasNext()) {
            zzqh next = it2.next();
            final zzqj zzqjVar = next.zzb;
            zzfn.zzU(next.zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzqf
                @Override // java.lang.Runnable
                public final void run() {
                    zzqi zzqiVar = zzqi.this;
                    zzqjVar.zzd(zzqiVar.zza, zzqiVar.zzb, zzprVar, zzpwVar, iOException, z);
                }
            });
        }
    }

    public final void zzj(zzpr zzprVar, int i, int i2, zzab zzabVar, int i3, Object obj, long j, long j2, IOException iOException, boolean z) {
        zzi(zzprVar, new zzpw(1, -1, null, 0, null, zzn(j), zzn(j2)), iOException, z);
    }

    public final void zzk(final zzpr zzprVar, final zzpw zzpwVar) {
        Iterator<zzqh> it2 = this.zzc.iterator();
        while (it2.hasNext()) {
            zzqh next = it2.next();
            final zzqj zzqjVar = next.zzb;
            zzfn.zzU(next.zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzqe
                @Override // java.lang.Runnable
                public final void run() {
                    zzqi zzqiVar = zzqi.this;
                    zzqjVar.zze(zzqiVar.zza, zzqiVar.zzb, zzprVar, zzpwVar);
                }
            });
        }
    }

    public final void zzl(zzpr zzprVar, int i, int i2, zzab zzabVar, int i3, Object obj, long j, long j2) {
        zzk(zzprVar, new zzpw(1, -1, null, 0, null, zzn(j), zzn(j2)));
    }

    public final void zzm(zzqj zzqjVar) {
        Iterator<zzqh> it2 = this.zzc.iterator();
        while (it2.hasNext()) {
            zzqh next = it2.next();
            if (next.zzb == zzqjVar) {
                this.zzc.remove(next);
            }
        }
    }
}
