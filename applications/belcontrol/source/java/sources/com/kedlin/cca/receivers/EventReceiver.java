package com.kedlin.cca.receivers;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.kedlin.cca.core.CCAService;
import p000.fa1;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/receivers/EventReceiver.class */
public class EventReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static String f3748a = EventReceiver.class.getName() + ".NOTIFICATION_ID";

    /* renamed from: b */
    public static String f3749b = EventReceiver.class.getName() + ".NOTIFICATION";

    /* renamed from: c */
    public static String f3750c = EventReceiver.class.getName() + ".ACTION_NOTIFICATION_RESTART";

    /* renamed from: a */
    public final boolean m4335a(Intent intent) {
        String stringExtra;
        l81 l81Var;
        int i;
        String str = "Received action " + intent.getAction();
        if (fa1.C1422f.f6596c.equals(intent.getAction())) {
            String stringExtra2 = intent.getStringExtra(fa1.C1422f.f6597d);
            if (stringExtra2 == null || stringExtra2.equals("0")) {
                return false;
            }
            l81 l81Var2 = new l81();
            l81Var2.m373n(stringExtra2);
            l81Var = l81Var2;
            if (l81Var.f6922d <= 0) {
                return false;
            }
            if (getResultCode() == -1) {
                i = 4;
                l81Var.f6930n = i;
            }
            l81Var.f6930n = 5;
        } else if (!fa1.C1422f.f6595b.equals(intent.getAction()) || (stringExtra = intent.getStringExtra(fa1.C1422f.f6597d)) == null || stringExtra.equals("0")) {
            return false;
        } else {
            l81 l81Var3 = new l81();
            l81Var3.m373n(stringExtra);
            l81Var = l81Var3;
            if (l81Var.f6922d <= 0) {
                return false;
            }
            if (getResultCode() == -1) {
                i = 2;
                l81Var.f6930n = i;
            }
            l81Var.f6930n = 5;
        }
        l81Var.mo148z();
        ia1.m1587c(fa1.m1840j(), l81Var.f6923f, l81Var.f6930n);
        return true;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if (action != null && action.equals(f3750c)) {
            int intExtra = intent.getIntExtra(f3748a, 0);
            Notification notification = (Notification) intent.getParcelableExtra(f3749b);
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager != null && intExtra != 0) {
                notificationManager.notify(intExtra, notification);
                return;
            }
        }
        if (m4335a(intent)) {
            return;
        }
        intent.setClass(context, CCAService.class);
        fa1.m1851O(context, intent);
    }
}
