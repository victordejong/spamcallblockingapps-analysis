package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import androidx.work.C0677a;
import androidx.work.C0680b;
import com.google.android.gms.ads.internal.offline.buffering.OfflineNotificationPoster;
import com.google.android.gms.ads.internal.offline.buffering.OfflinePingSender;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzciz;
import java.util.HashMap;
import java.util.Objects;
import p003a2.C0009b;
import p186o1.C3816b;
import p186o1.C3827j;
import p186o1.EnumC3826i;
import p197p1.C4006j;
import p282x1.C4832p;
import p292y1.C4955b;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/WorkManagerUtil.class */
public class WorkManagerUtil extends zzbu {
    private static void zzb(Context context) {
        try {
            C4006j.m1534d(context.getApplicationContext(), new C0677a(new C0677a.C0678a()));
        } catch (IllegalStateException e) {
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzbv
    public final void zze(@RecentlyNonNull IObjectWrapper iObjectWrapper) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzb(context);
        try {
            C4006j m1535c = C4006j.m1535c(context);
            Objects.requireNonNull(m1535c);
            ((C0009b) m1535c.f12585d).f8a.execute(new C4955b(m1535c, "offline_ping_sender_work"));
            C3816b.C3817a c3817a = new C3816b.C3817a();
            c3817a.f12302a = EnumC3826i.CONNECTED;
            C3816b c3816b = new C3816b(c3817a);
            C3827j.C3828a c3828a = new C3827j.C3828a(OfflinePingSender.class);
            c3828a.f12334b.f14840j = c3816b;
            c3828a.f12335c.add("offline_ping_sender_work");
            m1535c.m1767b(c3828a.m1765a());
        } catch (IllegalStateException e) {
            zzciz.zzk("Failed to instantiate WorkManager.", e);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzbv
    public final boolean zzf(@RecentlyNonNull IObjectWrapper iObjectWrapper, @RecentlyNonNull String str, @RecentlyNonNull String str2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzb(context);
        C3816b.C3817a c3817a = new C3816b.C3817a();
        c3817a.f12302a = EnumC3826i.CONNECTED;
        C3816b c3816b = new C3816b(c3817a);
        HashMap hashMap = new HashMap();
        hashMap.put("uri", str);
        hashMap.put("gws_query_id", str2);
        C0680b c0680b = new C0680b(hashMap);
        C0680b.m7483c(c0680b);
        C3827j.C3828a c3828a = new C3827j.C3828a(OfflineNotificationPoster.class);
        C4832p c4832p = c3828a.f12334b;
        c4832p.f14840j = c3816b;
        c4832p.f14835e = c0680b;
        c3828a.f12335c.add("offline_notification_work");
        try {
            C4006j.m1535c(context).m1767b(c3828a.m1765a());
            return true;
        } catch (IllegalStateException e) {
            zzciz.zzk("Failed to instantiate WorkManager.", e);
            return false;
        }
    }
}
