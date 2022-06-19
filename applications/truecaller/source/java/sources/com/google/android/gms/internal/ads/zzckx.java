package com.google.android.gms.internal.ads;

import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckx.class */
public final class zzckx implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ int zzc;
    public final /* synthetic */ zzcla zzd;

    public zzckx(zzcla zzclaVar, String str, String str2, int i) {
        this.zzd = zzclaVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap m8667T = C22128a.m8667T("event", "precacheComplete");
        m8667T.put("src", this.zza);
        m8667T.put("cachedSrc", this.zzb);
        m8667T.put("totalBytes", Integer.toString(this.zzc));
        zzcla.zzs(this.zzd, "onPrecacheEvent", m8667T);
    }
}
