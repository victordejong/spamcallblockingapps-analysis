package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.internal.offline.buffering.OfflineNotificationPoster;
import com.google.android.gms.ads.internal.offline.buffering.OfflinePingSender;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzcgt;
import java.util.HashMap;
import java.util.Objects;
import p1727n3.p1834m0.C26678c;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1845t.C26780b;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/WorkManagerUtil.class */
public class WorkManagerUtil extends zzbt {
    private static void zzb(Context context) {
        try {
            C26702l.m1430o(context.getApplicationContext(), new C26678c(new C26678c.C26679a()));
        } catch (IllegalStateException e) {
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzbu
    public final boolean zze(@RecentlyNonNull IObjectWrapper iObjectWrapper, @RecentlyNonNull String str, @RecentlyNonNull String str2) {
        Context context = (Context) ObjectWrapper.m38746B1(iObjectWrapper);
        zzb(context);
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        C26825d c26825d = new C26825d(c26826a);
        HashMap hashMap = new HashMap();
        hashMap.put("uri", str);
        hashMap.put("gws_query_id", str2);
        C26829f c26829f = new C26829f(hashMap);
        C26829f.m1300g(c26829f);
        C26842r.C26843a c26843a = new C26842r.C26843a(OfflineNotificationPoster.class);
        c26843a.f75127c.f74911j = c26825d;
        c26843a.f75127c.f74906e = c26829f;
        c26843a.f75128d.add("offline_notification_work");
        try {
            C26702l.m1431n(context).m1282f(c26843a.m1272b());
            return true;
        } catch (IllegalStateException e) {
            zzcgt.zzj("Failed to instantiate WorkManager.", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzbu
    public final void zzf(@RecentlyNonNull IObjectWrapper iObjectWrapper) {
        Context context = (Context) ObjectWrapper.m38746B1(iObjectWrapper);
        zzb(context);
        try {
            C26702l m1431n = C26702l.m1431n(context);
            Objects.requireNonNull(m1431n);
            ((C26822b) m1431n.f74726d).f75051a.execute(new C26780b(m1431n, "offline_ping_sender_work"));
            C26825d.C26826a c26826a = new C26825d.C26826a();
            c26826a.f75068c = EnumC26841q.CONNECTED;
            C26825d c26825d = new C26825d(c26826a);
            C26842r.C26843a c26843a = new C26842r.C26843a(OfflinePingSender.class);
            c26843a.f75127c.f74911j = c26825d;
            c26843a.f75128d.add("offline_ping_sender_work");
            m1431n.m1282f(c26843a.m1272b());
        } catch (IllegalStateException e) {
            zzcgt.zzj("Failed to instantiate WorkManager.", e);
        }
    }
}
