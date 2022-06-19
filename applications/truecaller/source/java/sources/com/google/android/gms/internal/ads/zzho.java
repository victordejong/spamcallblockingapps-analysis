package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzho.class */
public final class zzho {
    public final int zza;
    public final zzhf zzb;
    private final CopyOnWriteArrayList<zzhn> zzc;

    public zzho() {
        this(new CopyOnWriteArrayList(), 0, null, 0L);
    }

    private zzho(CopyOnWriteArrayList<zzhn> copyOnWriteArrayList, int i, zzhf zzhfVar, long j) {
        this.zzc = copyOnWriteArrayList;
        this.zza = i;
        this.zzb = zzhfVar;
    }

    private static final long zzn(long j) {
        long zza = zzadx.zza(j);
        if (zza == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return zza;
    }

    public final zzho zza(int i, zzhf zzhfVar, long j) {
        return new zzho(this.zzc, i, zzhfVar, 0L);
    }

    public final void zzb(Handler handler, zzhp zzhpVar) {
        this.zzc.add(new zzhn(handler, zzhpVar));
    }

    public final void zzc(zzhp zzhpVar) {
        Iterator<zzhn> it = this.zzc.iterator();
        while (it.hasNext()) {
            zzhn next = it.next();
            if (next.zzb == zzhpVar) {
                this.zzc.remove(next);
            }
        }
    }

    public final void zzd(zzgx zzgxVar, int i, int i2, zzafv zzafvVar, int i3, Object obj, long j, long j2) {
        zze(zzgxVar, new zzhc(1, -1, null, 0, null, zzn(j), zzn(j2)));
    }

    public final void zze(zzgx zzgxVar, zzhc zzhcVar) {
        Iterator<zzhn> it = this.zzc.iterator();
        while (it.hasNext()) {
            zzhn next = it.next();
            zzamq.zzj(next.zza, new Runnable(this, next.zzb, zzgxVar, zzhcVar) { // from class: com.google.android.gms.internal.ads.zzhi
                private final zzho zza;
                private final zzhp zzb;
                private final zzgx zzc;
                private final zzhc zzd;

                {
                    this.zza = this;
                    this.zzb = zzhpVar;
                    this.zzc = zzgxVar;
                    this.zzd = zzhcVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzho zzhoVar = this.zza;
                    this.zzb.zzC(zzhoVar.zza, zzhoVar.zzb, this.zzc, this.zzd);
                }
            });
        }
    }

    public final void zzf(zzgx zzgxVar, int i, int i2, zzafv zzafvVar, int i3, Object obj, long j, long j2) {
        zzg(zzgxVar, new zzhc(1, -1, null, 0, null, zzn(j), zzn(j2)));
    }

    public final void zzg(zzgx zzgxVar, zzhc zzhcVar) {
        Iterator<zzhn> it = this.zzc.iterator();
        while (it.hasNext()) {
            zzhn next = it.next();
            zzamq.zzj(next.zza, new Runnable(this, next.zzb, zzgxVar, zzhcVar) { // from class: com.google.android.gms.internal.ads.zzhj
                private final zzho zza;
                private final zzhp zzb;
                private final zzgx zzc;
                private final zzhc zzd;

                {
                    this.zza = this;
                    this.zzb = zzhpVar;
                    this.zzc = zzgxVar;
                    this.zzd = zzhcVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzho zzhoVar = this.zza;
                    this.zzb.zzD(zzhoVar.zza, zzhoVar.zzb, this.zzc, this.zzd);
                }
            });
        }
    }

    public final void zzh(zzgx zzgxVar, int i, int i2, zzafv zzafvVar, int i3, Object obj, long j, long j2) {
        zzi(zzgxVar, new zzhc(1, -1, null, 0, null, zzn(j), zzn(j2)));
    }

    public final void zzi(zzgx zzgxVar, zzhc zzhcVar) {
        Iterator<zzhn> it = this.zzc.iterator();
        while (it.hasNext()) {
            zzhn next = it.next();
            zzamq.zzj(next.zza, new Runnable(this, next.zzb, zzgxVar, zzhcVar) { // from class: com.google.android.gms.internal.ads.zzhk
                private final zzho zza;
                private final zzhp zzb;
                private final zzgx zzc;
                private final zzhc zzd;

                {
                    this.zza = this;
                    this.zzb = zzhpVar;
                    this.zzc = zzgxVar;
                    this.zzd = zzhcVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzho zzhoVar = this.zza;
                    this.zzb.zzE(zzhoVar.zza, zzhoVar.zzb, this.zzc, this.zzd);
                }
            });
        }
    }

    public final void zzj(zzgx zzgxVar, int i, int i2, zzafv zzafvVar, int i3, Object obj, long j, long j2, IOException iOException, boolean z) {
        zzk(zzgxVar, new zzhc(1, -1, null, 0, null, zzn(j), zzn(j2)), iOException, z);
    }

    public final void zzk(zzgx zzgxVar, zzhc zzhcVar, IOException iOException, boolean z) {
        Iterator<zzhn> it = this.zzc.iterator();
        while (it.hasNext()) {
            zzhn next = it.next();
            zzamq.zzj(next.zza, new Runnable(this, next.zzb, zzgxVar, zzhcVar, iOException, z) { // from class: com.google.android.gms.internal.ads.zzhl
                private final zzho zza;
                private final zzhp zzb;
                private final zzgx zzc;
                private final zzhc zzd;
                private final IOException zze;
                private final boolean zzf;

                {
                    this.zza = this;
                    this.zzb = zzhpVar;
                    this.zzc = zzgxVar;
                    this.zzd = zzhcVar;
                    this.zze = iOException;
                    this.zzf = z;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzho zzhoVar = this.zza;
                    this.zzb.zzF(zzhoVar.zza, zzhoVar.zzb, this.zzc, this.zzd, this.zze, this.zzf);
                }
            });
        }
    }

    public final void zzl(int i, zzafv zzafvVar, int i2, Object obj, long j) {
        zzm(new zzhc(1, i, zzafvVar, 0, null, zzn(j), -9223372036854775807L));
    }

    public final void zzm(zzhc zzhcVar) {
        Iterator<zzhn> it = this.zzc.iterator();
        while (it.hasNext()) {
            zzhn next = it.next();
            zzamq.zzj(next.zza, new Runnable(this, next.zzb, zzhcVar) { // from class: com.google.android.gms.internal.ads.zzhm
                private final zzho zza;
                private final zzhp zzb;
                private final zzhc zzc;

                {
                    this.zza = this;
                    this.zzb = zzhpVar;
                    this.zzc = zzhcVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzho zzhoVar = this.zza;
                    this.zzb.zzG(zzhoVar.zza, zzhoVar.zzb, this.zzc);
                }
            });
        }
    }
}
