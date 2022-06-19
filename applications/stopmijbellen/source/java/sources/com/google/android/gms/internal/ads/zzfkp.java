package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfkp.class */
public final class zzfkp {
    private static final zzfkp zza = new zzfkp();
    private final ArrayList<zzfke> zzb = new ArrayList<>();
    private final ArrayList<zzfke> zzc = new ArrayList<>();

    private zzfkp() {
    }

    public static zzfkp zza() {
        return zza;
    }

    public final Collection<zzfke> zzb() {
        return Collections.unmodifiableCollection(this.zzc);
    }

    public final Collection<zzfke> zzc() {
        return Collections.unmodifiableCollection(this.zzb);
    }

    public final void zzd(zzfke zzfkeVar) {
        this.zzb.add(zzfkeVar);
    }

    public final void zze(zzfke zzfkeVar) {
        boolean zzg = zzg();
        this.zzb.remove(zzfkeVar);
        this.zzc.remove(zzfkeVar);
        if (!zzg || zzg()) {
            return;
        }
        zzfkw.zzb().zzf();
    }

    public final void zzf(zzfke zzfkeVar) {
        boolean zzg = zzg();
        this.zzc.add(zzfkeVar);
        if (!zzg) {
            zzfkw.zzb().zze();
        }
    }

    public final boolean zzg() {
        return this.zzc.size() > 0;
    }
}
