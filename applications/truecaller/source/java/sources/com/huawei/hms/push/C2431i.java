package com.huawei.hms.push;

import android.content.Context;
import android.content.Intent;
import com.huawei.hms.push.utils.PluginUtil;
import com.huawei.hms.support.log.HMSLog;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.push.i */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/i.class */
public class C2431i {
    /* renamed from: a */
    public static void m37345a(Context context, Intent intent) {
        try {
            if (context == null || intent == null) {
                HMSLog.m37198d("PushSelfShowLog", "enter SelfShowReceiver receiver, context or intent is null");
                return;
            }
            String action = intent.getAction();
            if (!"com.huawei.intent.action.PUSH".equals(action) && !"com.huawei.push.msg.NOTIFY_MSG".equals(action) && !"com.huawei.intent.action.PUSH_DELAY_NOTIFY".equals(action)) {
                return;
            }
            byte[] byteArrayExtra = intent.getByteArrayExtra("selfshow_info");
            byte[] byteArrayExtra2 = intent.getByteArrayExtra("selfshow_token");
            if (byteArrayExtra != null && byteArrayExtra2 != null && byteArrayExtra.length != 0 && byteArrayExtra2.length != 0) {
                m37342a(context, intent, byteArrayExtra, byteArrayExtra2);
                return;
            }
            HMSLog.m37193i("PushSelfShowLog", "self show info or token is null.");
        } catch (RuntimeException e) {
            HMSLog.m37194e("PushSelfShowLog", "onReceive RuntimeException.", e);
        } catch (Exception e2) {
            HMSLog.m37198d("PushSelfShowLog", "onReceive Exception.");
        }
    }

    /* renamed from: a */
    public static void m37344a(Context context, Intent intent, C2433k c2433k) {
        StringBuilder m8728C = C22128a.m8728C("receive a selfshow message, the cmd type is ");
        m8728C.append(c2433k.m37316i());
        HMSLog.m37193i("PushSelfShowLog", m8728C.toString());
        if (!C2432j.m37338b(c2433k.m37316i())) {
            return;
        }
        long m37261a = C2439q.m37261a(c2433k.m37328c());
        if (m37261a == 0) {
            new C2438p(context, c2433k).start();
            return;
        }
        HMSLog.m37198d("PushSelfShowLog", "waiting...");
        intent.setPackage(context.getPackageName());
        C2439q.m37264a(context, intent, m37261a);
    }

    /* renamed from: a */
    public static void m37343a(Context context, Intent intent, String str, C2433k c2433k, int i) {
        HMSLog.m37198d("PushSelfShowLog", "receive a selfshow user handle message eventId = " + str);
        if (!"-1".equals(str)) {
            C2439q.m37265a(context, intent);
        } else {
            C2439q.m37266a(context, i);
        }
        if ("1".equals(str)) {
            new C2432j(context, c2433k).m37337c();
            PluginUtil.onNotificationClicked(context, c2433k.m37306p(), c2433k.m37330b());
        } else if ("2".equals(str)) {
            C2427e.m37350a(context, c2433k.m37306p(), c2433k.m37330b(), "2");
        } else {
            HMSLog.m37198d("PushSelfShowLog", "other event");
        }
    }

    /* renamed from: a */
    public static void m37342a(Context context, Intent intent, byte[] bArr, byte[] bArr2) {
        String stringExtra = intent.getStringExtra("selfshow_event_id");
        int intExtra = intent.getIntExtra("selfshow_notify_id", 0);
        HMSLog.m37193i("PushSelfShowLog", "get notifyId:" + intExtra);
        C2433k c2433k = new C2433k(bArr, bArr2);
        if (!c2433k.m37296z()) {
            HMSLog.m37198d("PushSelfShowLog", "parseMessage failed");
            return;
        }
        StringBuilder m8728C = C22128a.m8728C("onReceive the msg id = ");
        m8728C.append(c2433k.m37306p());
        m8728C.append(",and cmd is ");
        m8728C.append(c2433k.m37316i());
        m8728C.append(",and the eventId is ");
        m8728C.append(stringExtra);
        HMSLog.m37193i("PushSelfShowLog", m8728C.toString());
        if (stringExtra == null) {
            m37344a(context, intent, c2433k);
        } else {
            m37343a(context, intent, stringExtra, c2433k, intExtra);
        }
    }
}
