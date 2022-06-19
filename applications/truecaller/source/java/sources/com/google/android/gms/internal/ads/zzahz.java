package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzahz.class */
public final class zzahz {
    public static final zzahz zza;
    public static final zzahz zzb = new zzahz(RecyclerView.FOREVER_NS, RecyclerView.FOREVER_NS);
    public static final zzahz zzc = new zzahz(RecyclerView.FOREVER_NS, 0);
    public static final zzahz zzd = new zzahz(0, RecyclerView.FOREVER_NS);
    public static final zzahz zze;
    public final long zzf;
    public final long zzg;

    static {
        zzahz zzahzVar = new zzahz(0L, 0L);
        zza = zzahzVar;
        zze = zzahzVar;
    }

    public zzahz(long j, long j2) {
        zzakt.zza(j >= 0);
        zzakt.zza(j2 >= 0);
        this.zzf = j;
        this.zzg = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzahz.class != obj.getClass()) {
            return false;
        }
        zzahz zzahzVar = (zzahz) obj;
        return this.zzf == zzahzVar.zzf && this.zzg == zzahzVar.zzg;
    }

    public final int hashCode() {
        return (((int) this.zzf) * 31) + ((int) this.zzg);
    }
}
