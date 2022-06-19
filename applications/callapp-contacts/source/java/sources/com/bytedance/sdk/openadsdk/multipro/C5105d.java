package com.bytedance.sdk.openadsdk.multipro;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import com.bytedance.sdk.openadsdk.core.widget.webview.SSWebView;
import com.bytedance.sdk.openadsdk.multipro.p192d.C5106a;
import com.bytedance.sdk.openadsdk.utils.C5478q;
/* renamed from: com.bytedance.sdk.openadsdk.multipro.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/d.class */
public class C5105d {
    /* renamed from: a */
    public static void m33052a(Context context) {
        if (context == null) {
            return;
        }
        C5106a.m33050a(context.getApplicationContext());
        if (Build.VERSION.SDK_INT < 28) {
            return;
        }
        try {
            int myPid = Process.myPid();
            String str = context.getPackageName() + myPid;
            String str2 = str;
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == myPid) {
                    str2 = runningAppProcessInfo.processName;
                }
            }
            SSWebView.setDataDirectorySuffix(str2);
        } catch (Exception e) {
            C5478q.m32113b(e.toString());
        }
    }
}
