package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import androidx.work.AbstractC1418q;
import androidx.work.C1230a;
import androidx.work.C1234b;
import androidx.work.C1238d;
import androidx.work.C1406k;
import androidx.work.NetworkType;
import com.google.android.gms.ads.internal.offline.buffering.OfflineNotificationPoster;
import com.google.android.gms.ads.internal.offline.buffering.OfflinePingSender;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.internal.ads.ei0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/WorkManagerUtil.class */
public class WorkManagerUtil extends AbstractBinderC5736t0 {
    /* renamed from: E6 */
    private static void m18137E6(Context context) {
        try {
            AbstractC1418q.m30142e(context.getApplicationContext(), new C1230a.C1232b().m30584a());
        } catch (IllegalStateException e) {
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5739u0
    public final boolean zze(@RecentlyNonNull AbstractC6253a abstractC6253a, @RecentlyNonNull String str, @RecentlyNonNull String str2) {
        Context context = (Context) BinderC6255b.m16745J0(abstractC6253a);
        m18137E6(context);
        C1234b m30565a = new C1234b.C1235a().m30564b(NetworkType.CONNECTED).m30565a();
        try {
            AbstractC1418q.m30143d(context).m30145b(new C1406k.C1407a(OfflineNotificationPoster.class).m30134e(m30565a).m30133f(new C1238d.C1239a().m30543e("uri", str).m30543e("gws_query_id", str2).m30547a()).m30138a("offline_notification_work").m30137b());
            return true;
        } catch (IllegalStateException e) {
            ei0.m15463g("Failed to instantiate WorkManager.", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5739u0
    public final void zzf(@RecentlyNonNull AbstractC6253a abstractC6253a) {
        Context context = (Context) BinderC6255b.m16745J0(abstractC6253a);
        m18137E6(context);
        try {
            AbstractC1418q m30143d = AbstractC1418q.m30143d(context);
            m30143d.mo30146a("offline_ping_sender_work");
            m30143d.m30145b(new C1406k.C1407a(OfflinePingSender.class).m30134e(new C1234b.C1235a().m30564b(NetworkType.CONNECTED).m30565a()).m30138a("offline_ping_sender_work").m30137b());
        } catch (IllegalStateException e) {
            ei0.m15463g("Failed to instantiate WorkManager.", e);
        }
    }
}
