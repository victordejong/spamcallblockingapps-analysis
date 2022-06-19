package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfe.class */
public final class zzbfe {
    private Bundle zza = new Bundle();
    private List<String> zzb = new ArrayList();
    private boolean zzc = false;
    private int zzd = -1;
    private final Bundle zze = new Bundle();
    private final Bundle zzf = new Bundle();
    private final List<String> zzg = new ArrayList();
    private int zzh = -1;
    private String zzi = null;
    private final List<String> zzj = new ArrayList();
    private int zzk = 60000;

    public final zzbfd zza() {
        return new zzbfd(8, -1L, this.zza, -1, this.zzb, this.zzc, this.zzd, false, null, null, null, null, this.zze, this.zzf, this.zzg, null, null, false, null, this.zzh, this.zzi, this.zzj, this.zzk, null);
    }

    public final zzbfe zzb(Bundle bundle) {
        this.zza = bundle;
        return this;
    }

    public final zzbfe zzc(int i) {
        this.zzk = i;
        return this;
    }

    public final zzbfe zzd(boolean z) {
        this.zzc = z;
        return this;
    }

    public final zzbfe zze(List<String> list) {
        this.zzb = list;
        return this;
    }

    public final zzbfe zzf(String str) {
        this.zzi = str;
        return this;
    }

    public final zzbfe zzg(int i) {
        this.zzd = i;
        return this;
    }

    public final zzbfe zzh(int i) {
        this.zzh = i;
        return this;
    }
}
