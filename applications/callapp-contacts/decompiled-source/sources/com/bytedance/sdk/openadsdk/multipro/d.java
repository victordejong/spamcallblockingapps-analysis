package com.bytedance.sdk.openadsdk.multipro;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import com.bytedance.sdk.openadsdk.core.widget.webview.SSWebView;
import com.bytedance.sdk.openadsdk.multipro.d.a;
import com.bytedance.sdk.openadsdk.utils.q;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/multipro/d.class */
public class d {
    public static void a(Context context) {
        if (context != null) {
            a.a(context.getApplicationContext());
            if (Build.VERSION.SDK_INT >= 28) {
                try {
                    int myPid = Process.myPid();
                    String str = context.getPackageName() + myPid;
                    for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                        if (runningAppProcessInfo.pid == myPid) {
                            str = runningAppProcessInfo.processName;
                        }
                    }
                    SSWebView.setDataDirectorySuffix(str);
                } catch (Exception e) {
                    q.b(e.toString());
                }
            }
        }
    }
}
