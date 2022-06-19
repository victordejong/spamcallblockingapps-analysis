package com.google.android.gms.internal.ads;

import androidx.core.app.NotificationCompat;
import com.facebook.appevents.AppEventsConstants;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdg.class */
final class zzbdg implements Runnable {
    private final /* synthetic */ String zzegh;
    private final /* synthetic */ String zzepp;
    private final /* synthetic */ boolean zzepv = false;
    private final /* synthetic */ zzbdd zzepy;
    private final /* synthetic */ int zzepz;
    private final /* synthetic */ int zzeqa;

    public zzbdg(zzbdd zzbddVar, String str, String str2, int i, int i2, boolean z) {
        this.zzepy = zzbddVar;
        this.zzegh = str;
        this.zzepp = str2;
        this.zzepz = i;
        this.zzeqa = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put(NotificationCompat.CATEGORY_EVENT, "precacheProgress");
        hashMap.put("src", this.zzegh);
        hashMap.put("cachedSrc", this.zzepp);
        hashMap.put("bytesLoaded", Integer.toString(this.zzepz));
        hashMap.put("totalBytes", Integer.toString(this.zzeqa));
        hashMap.put("cacheReady", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        this.zzepy.zza("onPrecacheEvent", hashMap);
    }
}
