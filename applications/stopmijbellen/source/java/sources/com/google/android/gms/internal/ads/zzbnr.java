package com.google.android.gms.internal.ads;

import android.graphics.Color;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnr.class */
public final class zzbnr extends zzbnz {
    public static final int zza;
    public static final int zzb;
    private static final int zzc;
    private static final int zzd;
    private final String zze;
    private final List<zzbnu> zzf = new ArrayList();
    private final List<zzboi> zzg = new ArrayList();
    private final int zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;

    static {
        int rgb = Color.rgb(12, 174, 206);
        zzc = rgb;
        int rgb2 = Color.rgb(204, 204, 204);
        zzd = rgb2;
        zza = rgb2;
        zzb = rgb;
    }

    public zzbnr(String str, List<zzbnu> list, Integer num, Integer num2, Integer num3, int i, int i2, boolean z) {
        this.zze = str;
        for (int i3 = 0; i3 < list.size(); i3++) {
            zzbnu zzbnuVar = list.get(i3);
            this.zzf.add(zzbnuVar);
            this.zzg.add(zzbnuVar);
        }
        this.zzh = num != null ? num.intValue() : zza;
        this.zzi = num2 != null ? num2.intValue() : zzb;
        this.zzj = num3 != null ? num3.intValue() : 12;
        this.zzk = i;
        this.zzl = i2;
    }

    public final int zzb() {
        return this.zzk;
    }

    public final int zzc() {
        return this.zzl;
    }

    public final int zzd() {
        return this.zzh;
    }

    public final int zze() {
        return this.zzi;
    }

    public final int zzf() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzboa
    public final String zzg() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzboa
    public final List<zzboi> zzh() {
        return this.zzg;
    }

    public final List<zzbnu> zzi() {
        return this.zzf;
    }
}
