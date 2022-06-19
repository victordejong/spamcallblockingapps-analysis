package com.google.android.gms.internal.ads;

import com.amazon.device.ads.DtbConstants;
import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcku.class */
public final class zzcku implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ int zzc;
    public final /* synthetic */ int zzd;
    public final /* synthetic */ zzcla zze;

    public zzcku(zzcla zzclaVar, String str, String str2, int i, int i2, boolean z) {
        this.zze = zzclaVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap m8667T = C22128a.m8667T("event", "precacheProgress");
        m8667T.put("src", this.zza);
        m8667T.put("cachedSrc", this.zzb);
        m8667T.put("bytesLoaded", Integer.toString(this.zzc));
        m8667T.put("totalBytes", Integer.toString(this.zzd));
        m8667T.put("cacheReady", DtbConstants.NETWORK_TYPE_UNKNOWN);
        zzcla.zzs(this.zze, "onPrecacheEvent", m8667T);
    }
}
