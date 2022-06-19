package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmq.class */
public final class zzcmq implements zzfrz<Map<String, String>> {
    public final /* synthetic */ List zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ Uri zzc;
    public final /* synthetic */ zzcms zzd;

    public zzcmq(zzcms zzcmsVar, List list, String str, Uri uri) {
        this.zzd = zzcmsVar;
        this.zza = list;
        this.zzb = str;
        this.zzc = uri;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        String valueOf = String.valueOf(this.zzc);
        valueOf.length();
        zzcgt.zzi("Failed to parse gmsg params for: ".concat(valueOf));
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(Map<String, String> map) {
        this.zzd.zzQ(map, this.zza, this.zzb);
    }
}
