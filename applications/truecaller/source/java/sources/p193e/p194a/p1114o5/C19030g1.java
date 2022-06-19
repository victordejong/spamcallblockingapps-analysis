package p193e.p194a.p1114o5;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.C2752R;
import com.truecaller.buildinfo.BuildName;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import com.truecaller.notifications.internal.InternalTruecallerNotificationsService;
import com.truecaller.service.PushNotificationLoggingService;
import java.util.concurrent.TimeUnit;
import p1727n3.p1807k.p1808a.C26417c0;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p614c3.AbstractC10925a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p912i4.AbstractC15275e;
import p193e.p194a.p912i4.p914y.C15308d;
/* renamed from: e.a.o5.g1 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/g1.class */
public class C19030g1 {
    /* renamed from: a */
    public static void m14231a(Context context, int i, boolean z, String str) {
        m14230b(context, context.getString(C2752R.string.OSNotificationTitleGeneral), context.getResources().getQuantityString(C2752R.plurals.OSNotificationTextNew, i, Integer.valueOf(i)), C15308d.m18942cB(context), z, str);
    }

    /* renamed from: b */
    public static void m14230b(Context context, String str, String str2, Intent intent, boolean z, String str3) {
        PendingIntent pendingIntent;
        if (!C12864a2.m22551i()) {
            long millis = TimeUnit.HOURS.toMillis(12L);
            int i = InternalTruecallerNotificationsService.f14118a;
            Bundle bundle = new Bundle();
            bundle.putInt("EXTRA_TYPE", 1);
            bundle.putString("EXTRA_TITLE", str);
            bundle.putString("EXTRA_TEXT", str2);
            bundle.putParcelable("EXTRA_INTENT", intent);
            bundle.putString("EXTRA_ANALYTICS_SUBTYPE", str3);
            C18334g0.m15204s0(context, InternalTruecallerNotificationsService.class, C2752R.C2754id.notification_service_id, millis, bundle, C2752R.C2754id.req_code_alarm_receiver_notification_scheduled_standard);
            return;
        }
        intent.putExtra("AppUserInteraction.Context", RemoteMessageConst.NOTIFICATION).putExtra("AppUserInteraction.Action", "openApp");
        C26417c0 c26417c0 = new C26417c0(context);
        c26417c0.m1893a(intent);
        PendingIntent m1890d = c26417c0.m1890d(0, 201326592);
        AbstractC15275e mo12617O1 = ((AbstractC21187w1) context.getApplicationContext()).mo10154s().mo12617O1();
        C26450q c26450q = new C26450q(context, mo12617O1.mo18970d());
        c26450q.f74137R.icon = 2131236603;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131101323);
        c26450q.m1843z(context.getString(C2752R.string.AppName));
        c26450q.m1855n(str);
        c26450q.m1856m(str2);
        PendingIntent pendingIntent2 = m1890d;
        if (z) {
            int i2 = PushNotificationLoggingService.f14767a;
            Intent intent2 = new Intent(context, PushNotificationLoggingService.class);
            intent2.setAction("com.truecaller.ACTION_NOTIFICATION_OPENED");
            intent2.putExtra(BaseGmsClient.KEY_PENDING_INTENT, m1890d);
            pendingIntent2 = PendingIntent.getService(context, C2752R.C2754id.request_code_push_notification_opened, intent2, 201326592);
        }
        c26450q.f74147g = pendingIntent2;
        if (z) {
            int i3 = PushNotificationLoggingService.f14767a;
            Intent intent3 = new Intent(context, PushNotificationLoggingService.class);
            intent3.setAction("com.truecaller.ACTION_NOTIFICATION_DISMISSED");
            pendingIntent = PendingIntent.getService(context, C2752R.C2754id.request_code_push_notification_dismissed, intent3, 201326592);
        } else {
            pendingIntent = null;
        }
        c26450q.f74137R.deleteIntent = pendingIntent;
        c26450q.m1853p(16, true);
        Notification m1865d = c26450q.m1865d();
        mo12617O1.mo18972b("OsNotificationUtils", 444);
        Bundle bundle2 = new Bundle();
        bundle2.putString("Subtype", str3);
        mo12617O1.mo18971c("OsNotificationUtils", 444, m1865d, "notificationBackend", bundle2);
    }

    /* renamed from: c */
    public static void m14229c(Context context, InternalTruecallerNotification internalTruecallerNotification) {
        PendingIntent pendingIntent;
        boolean z = false;
        if (!C12864a2.m22551i()) {
            long millis = TimeUnit.HOURS.toMillis(12L);
            int i = InternalTruecallerNotificationsService.f14118a;
            Bundle m8687M0 = C22128a.m8687M0("EXTRA_TYPE", 0);
            m8687M0.putString("EXTRA_NOTIFICATION", internalTruecallerNotification.mo18609a().toString());
            C18334g0.m15204s0(context, InternalTruecallerNotificationsService.class, C2752R.C2754id.notification_service_id, millis, m8687M0, C2752R.C2754id.req_code_alarm_receiver_notification_scheduled_sw_update);
            return;
        }
        String string = context.getString(C2752R.string.OSNotificationTitleGeneral);
        String string2 = context.getString(C2752R.string.OSNotificationTextSoftwareUpdate, internalTruecallerNotification.m34847j("v"));
        AbstractC10925a mo12175v = ((AbstractApplicationC8442a) context.getApplicationContext()).m28549N().mo12175v();
        if (mo12175v.mo25495b() || mo12175v.getName().startsWith(BuildName.SAMSUNG.name()) || mo12175v.getName().startsWith(BuildName.AMAZON.name())) {
            z = true;
        }
        if (z) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(internalTruecallerNotification.m34840s()));
            intent.setFlags(268435456);
            pendingIntent = m14228d(context, intent, C2752R.C2754id.req_code_swupdate_notification_open);
        } else {
            Intent m18942cB = C15308d.m18942cB(context);
            m18942cB.putExtra("AppUserInteraction.Context", RemoteMessageConst.NOTIFICATION).putExtra("AppUserInteraction.Action", "openApp");
            C26417c0 c26417c0 = new C26417c0(context);
            c26417c0.m1893a(m18942cB);
            pendingIntent = c26417c0.m1890d(C2752R.C2754id.req_code_swupdate_notification_open, 201326592);
        }
        AbstractC15275e mo12617O1 = ((AbstractC21187w1) context.getApplicationContext()).mo10154s().mo12617O1();
        C26450q c26450q = new C26450q(context, mo12617O1.mo18970d());
        c26450q.f74137R.icon = 2131236603;
        Object obj = C26467a.f74235a;
        c26450q.f74123D = C26467a.C26471d.m1787a(context, 2131101323);
        c26450q.m1843z(context.getString(C2752R.string.AppName));
        c26450q.m1855n(string);
        c26450q.m1856m(string2);
        c26450q.f74147g = pendingIntent;
        c26450q.m1853p(16, true);
        Notification m1865d = c26450q.m1865d();
        mo12617O1.mo18972b("OsNotificationUtils", 555);
        Bundle bundle = new Bundle();
        bundle.putString("Subtype", "softwareUpdate");
        mo12617O1.mo18971c("OsNotificationUtils", 555, m1865d, "notificationBackend", bundle);
    }

    /* renamed from: d */
    public static PendingIntent m14228d(Context context, Intent intent, int i) {
        return PendingIntent.getActivity(context, i, intent, 201326592);
    }
}
