package com.google.android.gms.internal.ads;

import com.amazon.device.ads.DtbConstants;
import com.google.android.gms.ads.internal.zzt;
import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckv.class */
public final class zzckv implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ long zzc;
    public final /* synthetic */ long zzd;
    public final /* synthetic */ long zze;
    public final /* synthetic */ long zzf;
    public final /* synthetic */ long zzg;
    public final /* synthetic */ boolean zzh;
    public final /* synthetic */ int zzi;
    public final /* synthetic */ int zzj;
    public final /* synthetic */ zzcla zzk;

    public zzckv(zzcla zzclaVar, String str, String str2, long j, long j2, long j3, long j4, long j5, boolean z, int i, int i2) {
        this.zzk = zzclaVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = j;
        this.zzd = j2;
        this.zze = j3;
        this.zzf = j4;
        this.zzg = j5;
        this.zzh = z;
        this.zzi = i;
        this.zzj = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap m8667T = C22128a.m8667T("event", "precacheProgress");
        m8667T.put("src", this.zza);
        m8667T.put("cachedSrc", this.zzb);
        m8667T.put("bufferedDuration", Long.toString(this.zzc));
        m8667T.put("totalDuration", Long.toString(this.zzd));
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbl)).booleanValue()) {
            m8667T.put("qoeLoadedBytes", Long.toString(this.zze));
            m8667T.put("qoeCachedBytes", Long.toString(this.zzf));
            m8667T.put("totalBytes", Long.toString(this.zzg));
            m8667T.put("reportTime", Long.toString(zzt.zzj().mo38787c()));
        }
        m8667T.put("cacheReady", true != this.zzh ? DtbConstants.NETWORK_TYPE_UNKNOWN : "1");
        m8667T.put("playerCount", Integer.toString(this.zzi));
        m8667T.put("playerPreparedCount", Integer.toString(this.zzj));
        zzcla.zzs(this.zzk, "onPrecacheEvent", m8667T);
    }
}
