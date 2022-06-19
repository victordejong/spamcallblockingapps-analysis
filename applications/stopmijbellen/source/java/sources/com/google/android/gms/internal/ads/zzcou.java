package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcou.class */
public final class zzcou implements zzfwm<Map<String, String>> {
    public final /* synthetic */ List zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ Uri zzc;
    public final /* synthetic */ zzcow zzd;

    public zzcou(zzcow zzcowVar, List list, String str, Uri uri) {
        this.zzd = zzcowVar;
        this.zza = list;
        this.zzb = str;
        this.zzc = uri;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        zzciz.zzj("Failed to parse gmsg params for: ".concat(String.valueOf(this.zzc)));
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(Map<String, String> map) {
        this.zzd.zzO(map, this.zza, this.zzb);
    }
}
