package com.huawei.updatesdk.service.otaupdate;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.service.otaupdate.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/service/otaupdate/a.class */
public abstract class AbstractC2584a {
    /* renamed from: a */
    public static void m36544a(Context context, BroadcastReceiver broadcastReceiver) {
        if (broadcastReceiver == null || context == null) {
            return;
        }
        try {
            context.unregisterReceiver(broadcastReceiver);
        } catch (IllegalArgumentException e) {
            StringBuilder m8728C = C22128a.m8728C("unregisterReceiver error:");
            m8728C.append(e.toString());
            C2515a.m36847b("ActivityUtil", m8728C.toString());
        }
    }

    /* renamed from: a */
    public static void m36543a(Context context, IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
        if (intentFilter == null || broadcastReceiver == null || m36545a(context)) {
            return;
        }
        try {
            context.registerReceiver(broadcastReceiver, intentFilter);
        } catch (IllegalArgumentException e) {
            StringBuilder m8728C = C22128a.m8728C("registerReceiver error:");
            m8728C.append(e.toString());
            C2515a.m36847b("ActivityUtil", m8728C.toString());
        }
    }

    /* renamed from: a */
    public static boolean m36545a(Context context) {
        if (context == null) {
            return true;
        }
        if (!(context instanceof Activity)) {
            return false;
        }
        Activity activity = (Activity) context;
        if (!activity.isFinishing() && !activity.isDestroyed()) {
            return false;
        }
        C2515a.m36847b("ActivityUtil", "activity has bean finished, cannot instance:" + activity);
        return true;
    }
}
