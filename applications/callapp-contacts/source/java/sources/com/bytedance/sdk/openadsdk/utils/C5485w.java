package com.bytedance.sdk.openadsdk.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.Iterator;
/* renamed from: com.bytedance.sdk.openadsdk.utils.w */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/w.class */
public class C5485w {

    /* renamed from: a */
    private static String f19028a;

    /* renamed from: a */
    private static String m32074a() {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/cmdline"), "iso-8859-1"));
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    int read = bufferedReader.read();
                    if (read <= 0) {
                        break;
                    }
                    sb.append((char) read);
                }
                if (C5478q.m32121a()) {
                    C5478q.m32112b("Process", "get processName = " + sb.toString());
                }
                String sb2 = sb.toString();
                try {
                    bufferedReader.close();
                } catch (Exception e) {
                }
                return sb2;
            } catch (Throwable th) {
                if (bufferedReader == null) {
                    return null;
                }
                try {
                    bufferedReader.close();
                    return null;
                } catch (Exception e2) {
                    return null;
                }
            }
        } catch (Throwable th2) {
            bufferedReader = null;
        }
    }

    /* renamed from: a */
    public static String m32073a(Context context) {
        int myPid;
        Iterator<ActivityManager.RunningAppProcessInfo> it2;
        ActivityManager.RunningAppProcessInfo next;
        String str = f19028a;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            myPid = Process.myPid();
            it2 = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses().iterator();
        } catch (Exception e) {
            e.printStackTrace();
        }
        do {
            if (!it2.hasNext()) {
                String m32074a = m32074a();
                f19028a = m32074a;
                return m32074a;
            }
            next = it2.next();
        } while (next.pid != myPid);
        if (C5478q.m32121a()) {
            C5478q.m32112b("Process", "processName = " + next.processName);
        }
        String str2 = next.processName;
        f19028a = str2;
        return str2;
    }
}
