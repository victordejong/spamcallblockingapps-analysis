package p459j.p460a.p582w0.p590x4;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import androidx.core.app.NotificationManagerCompat;
import com.appsflyer.AppsFlyerProperties;
import gogolook.callgogolook2.MyApplication;
import java.util.List;
import p459j.p460a.p582w0.C14195v2;
import p459j.p460a.p582w0.p590x4.C14296p;
import p626l.C14986p;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.x4.s */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/s.class */
public final class C14301s {

    /* renamed from: a */
    public static final C14301s f32035a = new C14301s();

    /* renamed from: a */
    public final C14296p.C14297a m1650a(Context context, String str, boolean z) {
        boolean b = m1649b(context, str, z);
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("version", (Integer) 0);
        aVar.m1808a("notification_setting_status", Integer.valueOf(z ? 1 : 0));
        aVar.m1807a("channel_name", str);
        aVar.m1808a("channel_status", Integer.valueOf(b ? 1 : 0));
        C14296p.C14297a a = aVar.m1811a();
        C15149k.m383a((Object) a, "GGAEvent.Values.Builder(…\n                .build()");
        return a;
    }

    /* renamed from: a */
    public final void m1651a() {
        Context o = MyApplication.m29013o();
        boolean areNotificationsEnabled = NotificationManagerCompat.from(o).areNotificationsEnabled();
        List<String> a = C14195v2.m2253a();
        C15149k.m383a((Object) a, "NotifyID.Channel.getFullList()");
        for (String str : a) {
            C14301s sVar = f32035a;
            C15149k.m383a((Object) o, "context");
            C15149k.m383a((Object) str, "channelName");
            C14296p.m1830a("whoscall_notification_setting_status", sVar.m1650a(o, str, areNotificationsEnabled));
        }
    }

    /* renamed from: b */
    public final boolean m1649b(Context context, String str, boolean z) {
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "channelId");
        if (Build.VERSION.SDK_INT < 26) {
            return z;
        }
        Object systemService = context.getSystemService("notification");
        if (systemService != null) {
            NotificationChannel notificationChannel = ((NotificationManager) systemService).getNotificationChannel(str);
            C15149k.m383a((Object) notificationChannel, AppsFlyerProperties.CHANNEL);
            return notificationChannel.getImportance() != 0;
        }
        throw new C14986p("null cannot be cast to non-null type android.app.NotificationManager");
    }
}
