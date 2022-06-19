package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdf.class */
public final class zzbdf implements Runnable {
    private final /* synthetic */ String zzegh;
    private final /* synthetic */ String zzepp;
    private final /* synthetic */ long zzepq;
    private final /* synthetic */ long zzepr;
    private final /* synthetic */ long zzeps;
    private final /* synthetic */ long zzept;
    private final /* synthetic */ long zzepu;
    private final /* synthetic */ boolean zzepv;
    private final /* synthetic */ int zzepw;
    private final /* synthetic */ int zzepx;
    private final /* synthetic */ zzbdd zzepy;

    public zzbdf(zzbdd zzbddVar, String str, String str2, long j, long j2, long j3, long j4, long j5, boolean z, int i, int i2) {
        this.zzepy = zzbddVar;
        this.zzegh = str;
        this.zzepp = str2;
        this.zzepq = j;
        this.zzepr = j2;
        this.zzeps = j3;
        this.zzept = j4;
        this.zzepu = j5;
        this.zzepv = z;
        this.zzepw = i;
        this.zzepx = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.zzegh);
        hashMap.put("cachedSrc", this.zzepp);
        hashMap.put("bufferedDuration", Long.toString(this.zzepq));
        hashMap.put("totalDuration", Long.toString(this.zzepr));
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue()) {
            hashMap.put("qoeLoadedBytes", Long.toString(this.zzeps));
            hashMap.put("qoeCachedBytes", Long.toString(this.zzept));
            hashMap.put("totalBytes", Long.toString(this.zzepu));
            hashMap.put("reportTime", Long.toString(zzr.zzky().currentTimeMillis()));
        }
        hashMap.put("cacheReady", this.zzepv ? "1" : "0");
        hashMap.put("playerCount", Integer.toString(this.zzepw));
        hashMap.put("playerPreparedCount", Integer.toString(this.zzepx));
        zzbdd.zza(this.zzepy, "onPrecacheEvent", hashMap);
    }
}
