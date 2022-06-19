package com.klinker.android.send_message;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
/* renamed from: com.klinker.android.send_message.b */
/* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/b.class */
public class C2704b {
    /* renamed from: a */
    public static void m2108a(Context context, Intent intent, String str) {
        ActivityInfo[] activityInfoArr;
        try {
            for (ActivityInfo activityInfo : context.getPackageManager().getPackageInfo(context.getPackageName(), 2).receivers) {
                if (activityInfo.taskAffinity.equals(str)) {
                    intent.setClassName(activityInfo.packageName, activityInfo.name);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        intent.setPackage(context.getPackageName());
    }

    /* renamed from: b */
    public static void m2107b(Context context, Intent intent, String str) {
        m2108a(context, intent, str);
        intent.setAction(str);
        context.sendBroadcast(intent);
    }
}
