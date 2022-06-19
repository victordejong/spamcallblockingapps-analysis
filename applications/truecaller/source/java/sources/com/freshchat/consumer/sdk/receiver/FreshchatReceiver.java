package com.freshchat.consumer.sdk.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import com.freshchat.consumer.sdk.p057j.C1611ag;
import com.freshchat.consumer.sdk.p057j.C1612ah;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1630aw;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1710g;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.p059b.C1641c;
import com.freshchat.consumer.sdk.service.p067d.C1870d;
import com.freshchat.consumer.sdk.service.p068e.C1917s;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/receiver/FreshchatReceiver.class */
public class FreshchatReceiver extends BroadcastReceiver {
    /* renamed from: a */
    private boolean m39541a(Intent intent, String str) {
        return intent != null && C1626as.m40233a(str) && str.equals(intent.getAction());
    }

    /* renamed from: c */
    private void m39540c(Context context, Intent intent) {
        if (intent == null || intent.getExtras() == null) {
            C1613ai.m40278w("FRESHCHAT_WARNING", "Extras cannot be null in FreshchatReceiver::onReceive().");
            return;
        }
        String m40300b = C1611ag.m40300b(intent, "FRESHCHAT_DEEPLINK");
        if (C1626as.m40233a(m40300b)) {
            C1460a.m41030p(context, m40300b);
        } else {
            C1613ai.m40278w("FRESHCHAT_WARNING", EnumC1464c.INVALID_NOTIFICATION_CLICK_ACTION_MISSING_DEEPLINK.toString().replace("{{action_str}}", "com.freshchat.consumer.sdk.actions.NotificationClicked"));
        }
    }

    /* renamed from: f */
    private boolean m39539f(Intent intent) {
        if (C1630aw.m40203eT()) {
            return m39541a(intent, "android.intent.action.MY_PACKAGE_REPLACED");
        }
        return false;
    }

    /* renamed from: g */
    private boolean m39538g(Intent intent) {
        return m39541a(intent, "android.intent.action.LOCALE_CHANGED");
    }

    /* renamed from: h */
    private boolean m39537h(Intent intent) {
        return m39541a(intent, "android.intent.action.BOOT_COMPLETED");
    }

    /* renamed from: i */
    private boolean m39536i(Intent intent) {
        return intent != null && intent.hasExtra("android.intent.extra.ALARM_COUNT");
    }

    /* renamed from: p */
    private void m39535p(Context context) {
        C1612ah.m40292bN(context);
    }

    /* renamed from: q */
    private void m39534q(Context context) {
        if (C1710g.m39955ag(context.getApplicationContext())) {
            C1638b.m40136u(context);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        C1611ag.m40301a("FRESHCHAT", intent);
        try {
            if (m39537h(intent)) {
                C1870d.m39385b(context.getApplicationContext(), new C1917s());
            } else if (m39536i(intent)) {
                if (C1618al.m40261aS(context.getApplicationContext())) {
                    C1641c.m40128fD();
                    C1638b.m40169M(context);
                }
            } else if (m39538g(intent)) {
                m39535p(context);
            } else if (m39539f(intent)) {
                m39534q(context);
            } else if ("com.freshchat.consumer.sdk.actions.NotificationClicked".equals(intent.getAction())) {
                m39540c(context, intent);
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }
}
