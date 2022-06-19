package com.huawei.hms.support.api.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.huawei.hms.android.HwBuildEx;
import com.huawei.hms.push.C2431i;
import com.huawei.hms.push.C2444u;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.ResourceLoaderUtil;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/support/api/push/PushMsgReceiver.class */
public class PushMsgReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public static void m37221a(Context context, Intent intent) {
        if (intent.hasExtra("selfshow_info")) {
            if (!C2444u.m37242a(context)) {
                HMSLog.m37193i("PushMsgReceiver", context.getPackageName() + " disable display notification.");
            }
            C2431i.m37345a(context, intent);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || context == null) {
            return;
        }
        StringBuilder m8728C = C22128a.m8728C("push receive broadcast message, Intent:");
        m8728C.append(intent.getAction());
        m8728C.append(" pkgName:");
        m8728C.append(context.getPackageName());
        HMSLog.m37193i("PushMsgReceiver", m8728C.toString());
        try {
            intent.getStringExtra("TestIntent");
            String action = intent.getAction();
            if (ResourceLoaderUtil.getmContext() == null) {
                ResourceLoaderUtil.setmContext(context.getApplicationContext());
            }
            if ("com.huawei.intent.action.PUSH_DELAY_NOTIFY".equals(action) || ("com.huawei.intent.action.PUSH".equals(action) && HwBuildEx.VERSION.EMUI_SDK_INT < 10)) {
                m37221a(context, intent);
            } else {
                HMSLog.m37193i("PushMsgReceiver", "message can't be recognised.");
            }
        } catch (Exception e) {
            HMSLog.m37195e("PushMsgReceiver", "intent has some error");
        }
    }
}
