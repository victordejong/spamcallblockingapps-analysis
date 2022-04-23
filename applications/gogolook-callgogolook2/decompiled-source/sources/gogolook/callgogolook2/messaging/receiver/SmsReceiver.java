package gogolook.callgogolook2.messaging.receiver;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.messaging.datamodel.action.SyncMessagesAction;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11549q;
import p459j.p460a.p474c0.p475c.C11522d;
import p459j.p460a.p474c0.p499h.C12179k0;
import p459j.p460a.p521j0.p529x.C12780l;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C14173t4;
import p459j.p460a.p582w0.p594z4.C14356f;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/receiver/SmsReceiver.class */
public final class SmsReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static boolean f11261a = false;

    /* renamed from: gogolook.callgogolook2.messaging.receiver.SmsReceiver$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/receiver/SmsReceiver$a.class */
    public static class C4661a extends AbstractC11549q {
        public C4661a() {
            super(null);
        }

        @Override // p459j.p460a.p474c0.p475c.AbstractC11559t
        /* renamed from: a */
        public NotificationCompat.Style mo9167a(NotificationCompat.Builder builder) {
            return null;
        }

        @Override // p459j.p460a.p474c0.p475c.AbstractC11549q, p459j.p460a.p474c0.p475c.AbstractC11559t
        /* renamed from: g */
        public boolean mo9158g() {
            return true;
        }
    }

    /* renamed from: a */
    public static String m27507a() {
        return AbstractC11516a.m9413n().mo9412a().getPackageName() + ":secondaryuser";
    }

    /* renamed from: b */
    public static void m27506b() {
        Context a = AbstractC11516a.m9413n().mo9412a();
        Resources resources = a.getResources();
        PendingIntent activity = PendingIntent.getActivity(a, 0, MainActivity.m27866a(a, "smslog", "others"), 134217728);
        NotificationCompat.Builder a2 = C14173t4.m2307a(a);
        a2.setContentTitle(resources.getString(R$string.secondary_user_new_message_title)).setTicker(resources.getString(R$string.secondary_user_new_message_ticker)).setSmallIcon(R$drawable.notification_icon).setPriority(1).setContentIntent(activity);
        NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle(a2);
        bigTextStyle.bigText(resources.getString(R$string.secondary_user_new_message_title));
        Notification build = bigTextStyle.build();
        NotificationManagerCompat from = NotificationManagerCompat.from(AbstractC11516a.m9413n().mo9412a());
        build.defaults = C11522d.m9281b(new C4661a()) ? 6 : 4;
        from.notify(m27507a(), 1, build);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        LogManager.m28584a(intent);
        boolean z = context instanceof MyApplication;
        if (z || !f11261a) {
            if (z) {
                f11261a = true;
            }
            if (C12810o.m5233l()) {
                if (C12179k0.m6911a()) {
                    m27506b();
                }
                if ("android.provider.Telephony.SMS_RECEIVED".equals(intent.getAction()) && !C12810o.m5236i()) {
                    intent.putExtra("whoscall_sms_is_from_dynamic_receiver", z);
                    C12780l.m5331a(intent);
                }
                C12810o.m5242d();
                C14356f.m1485a(3);
                if (!C12810o.m5232m()) {
                    SyncMessagesAction.m27654z();
                }
            }
        }
    }
}
