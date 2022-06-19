package com.google.android.gms.internal.ads;

import androidx.core.app.NotificationCompat;
import com.facebook.appevents.AppEventsConstants;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdi.class */
public final class zzbdi implements Runnable {
    private final /* synthetic */ String zzegh;
    private final /* synthetic */ String zzepp;
    private final /* synthetic */ long zzepq;
    private final /* synthetic */ long zzepr;
    private final /* synthetic */ boolean zzepv;
    private final /* synthetic */ int zzepw;
    private final /* synthetic */ int zzepx;
    private final /* synthetic */ zzbdd zzepy;
    private final /* synthetic */ int zzepz;
    private final /* synthetic */ int zzeqa;

    public zzbdi(zzbdd zzbddVar, String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        this.zzepy = zzbddVar;
        this.zzegh = str;
        this.zzepp = str2;
        this.zzepz = i;
        this.zzeqa = i2;
        this.zzepq = j;
        this.zzepr = j2;
        this.zzepv = z;
        this.zzepw = i3;
        this.zzepx = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put(NotificationCompat.CATEGORY_EVENT, "precacheProgress");
        hashMap.put("src", this.zzegh);
        hashMap.put("cachedSrc", this.zzepp);
        hashMap.put("bytesLoaded", Integer.toString(this.zzepz));
        hashMap.put("totalBytes", Integer.toString(this.zzeqa));
        hashMap.put("bufferedDuration", Long.toString(this.zzepq));
        hashMap.put("totalDuration", Long.toString(this.zzepr));
        hashMap.put("cacheReady", this.zzepv ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        hashMap.put("playerCount", Integer.toString(this.zzepw));
        hashMap.put("playerPreparedCount", Integer.toString(this.zzepx));
        this.zzepy.zza("onPrecacheEvent", hashMap);
    }
}
