package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdh.class */
public final class zzbdh {
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

    public final zzbdg zza() {
        return new zzbdg(8, -1L, this.zza, -1, this.zzb, this.zzc, this.zzd, false, null, null, null, null, this.zze, this.zzf, this.zzg, null, null, false, null, this.zzh, this.zzi, this.zzj, this.zzk, null);
    }

    public final zzbdh zzb(Bundle bundle) {
        this.zza = bundle;
        return this;
    }

    public final zzbdh zzc(List<String> list) {
        this.zzb = list;
        return this;
    }

    public final zzbdh zzd(boolean z) {
        this.zzc = z;
        return this;
    }

    public final zzbdh zze(int i) {
        this.zzd = i;
        return this;
    }

    public final zzbdh zzf(int i) {
        this.zzh = i;
        return this;
    }

    public final zzbdh zzg(String str) {
        this.zzi = str;
        return this;
    }

    public final zzbdh zzh(int i) {
        this.zzk = i;
        return this;
    }
}
