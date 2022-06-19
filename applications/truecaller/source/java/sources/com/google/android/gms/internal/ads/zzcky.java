package com.google.android.gms.internal.ads;

import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcky.class */
public final class zzcky implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ long zzc;
    public final /* synthetic */ zzcla zzd;

    public zzcky(zzcla zzclaVar, String str, String str2, long j) {
        this.zzd = zzclaVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap m8667T = C22128a.m8667T("event", "precacheComplete");
        m8667T.put("src", this.zza);
        m8667T.put("cachedSrc", this.zzb);
        m8667T.put("totalDuration", Long.toString(this.zzc));
        zzcla.zzs(this.zzd, "onPrecacheEvent", m8667T);
    }
}
