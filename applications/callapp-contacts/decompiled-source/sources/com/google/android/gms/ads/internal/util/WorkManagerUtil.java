package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.work.Configuration;
import androidx.work.b;
import androidx.work.d;
import androidx.work.l;
import androidx.work.m;
import androidx.work.u;
import com.google.android.gms.ads.internal.offline.buffering.OfflineNotificationPoster;
import com.google.android.gms.ads.internal.offline.buffering.OfflinePingSender;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.ads.za;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/WorkManagerUtil.class */
public class WorkManagerUtil extends zzbf {
    private static void zzbo(Context context) {
        try {
            u.a(context.getApplicationContext(), new Configuration.Builder().build());
        } catch (IllegalStateException e) {
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzbg
    public final void zzaq(b bVar) {
        Context context = (Context) d.a(bVar);
        zzbo(context);
        try {
            u a2 = u.a(context);
            a2.a("offline_ping_sender_work");
            a2.a(new m.a(OfflinePingSender.class).a(new b.a().a(l.CONNECTED).a()).a("offline_ping_sender_work").c());
        } catch (IllegalStateException e) {
            za.zzd("Failed to instantiate WorkManager.", e);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzbg
    public final boolean zzd(com.google.android.gms.dynamic.b bVar, String str, String str2) {
        Context context = (Context) d.a(bVar);
        zzbo(context);
        androidx.work.b a2 = new b.a().a(l.CONNECTED).a();
        try {
            u.a(context).a(new m.a(OfflineNotificationPoster.class).a(a2).a(new d.a().a("uri", str).a("gws_query_id", str2).a()).a("offline_notification_work").c());
            return true;
        } catch (IllegalStateException e) {
            za.zzd("Failed to instantiate WorkManager.", e);
            return false;
        }
    }
}
