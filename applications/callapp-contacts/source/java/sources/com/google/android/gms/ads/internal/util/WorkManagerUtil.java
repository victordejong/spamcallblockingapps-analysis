package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.work.AbstractC3165u;
import androidx.work.C2988b;
import androidx.work.C2992d;
import androidx.work.C3148m;
import androidx.work.Configuration;
import androidx.work.EnumC3147l;
import com.google.android.gms.ads.internal.offline.buffering.OfflineNotificationPoster;
import com.google.android.gms.ads.internal.offline.buffering.OfflinePingSender;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.ads.C13088za;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/WorkManagerUtil.class */
public class WorkManagerUtil extends zzbf {
    private static void zzbo(Context context) {
        try {
            AbstractC3165u.m39266a(context.getApplicationContext(), new Configuration.Builder().build());
        } catch (IllegalStateException e) {
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzbg
    public final void zzaq(AbstractC12126b abstractC12126b) {
        Context context = (Context) BinderC12129d.m18980a(abstractC12126b);
        zzbo(context);
        try {
            AbstractC3165u m39267a = AbstractC3165u.m39267a(context);
            m39267a.mo39264a("offline_ping_sender_work");
            m39267a.m39265a(new C3148m.C3149a(OfflinePingSender.class).m39258a(new C2988b.C2989a().m39515a(EnumC3147l.CONNECTED).m39516a()).m39256a("offline_ping_sender_work").m39254c());
        } catch (IllegalStateException e) {
            C13088za.zzd("Failed to instantiate WorkManager.", e);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzbg
    public final boolean zzd(AbstractC12126b abstractC12126b, String str, String str2) {
        Context context = (Context) BinderC12129d.m18980a(abstractC12126b);
        zzbo(context);
        C2988b m39516a = new C2988b.C2989a().m39515a(EnumC3147l.CONNECTED).m39516a();
        try {
            AbstractC3165u.m39267a(context).m39265a(new C3148m.C3149a(OfflineNotificationPoster.class).m39258a(m39516a).m39257a(new C2992d.C2993a().m39497a("uri", str).m39497a("gws_query_id", str2).m39502a()).m39256a("offline_notification_work").m39254c());
            return true;
        } catch (IllegalStateException e) {
            C13088za.zzd("Failed to instantiate WorkManager.", e);
            return false;
        }
    }
}
