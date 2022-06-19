package com.google.android.gms.internal.ads;

import com.amazon.device.ads.DtbConstants;
import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckw.class */
public final class zzckw implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ int zzc;
    public final /* synthetic */ int zzd;
    public final /* synthetic */ long zze;
    public final /* synthetic */ long zzf;
    public final /* synthetic */ boolean zzg;
    public final /* synthetic */ int zzh;
    public final /* synthetic */ int zzi;
    public final /* synthetic */ zzcla zzj;

    public zzckw(zzcla zzclaVar, String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        this.zzj = zzclaVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = i2;
        this.zze = j;
        this.zzf = j2;
        this.zzg = z;
        this.zzh = i3;
        this.zzi = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap m8667T = C22128a.m8667T("event", "precacheProgress");
        m8667T.put("src", this.zza);
        m8667T.put("cachedSrc", this.zzb);
        m8667T.put("bytesLoaded", Integer.toString(this.zzc));
        m8667T.put("totalBytes", Integer.toString(this.zzd));
        m8667T.put("bufferedDuration", Long.toString(this.zze));
        m8667T.put("totalDuration", Long.toString(this.zzf));
        m8667T.put("cacheReady", true != this.zzg ? DtbConstants.NETWORK_TYPE_UNKNOWN : "1");
        m8667T.put("playerCount", Integer.toString(this.zzh));
        m8667T.put("playerPreparedCount", Integer.toString(this.zzi));
        zzcla.zzs(this.zzj, "onPrecacheEvent", m8667T);
    }
}
