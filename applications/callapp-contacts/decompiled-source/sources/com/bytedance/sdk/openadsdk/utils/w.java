package com.bytedance.sdk.openadsdk.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/w.class */
public class w {

    /* renamed from: a  reason: collision with root package name */
    private static String f10317a;

    private static String a() {
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
                if (q.a()) {
                    q.b("Process", "get processName = " + sb.toString());
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

    public static String a(Context context) {
        int myPid;
        Iterator<ActivityManager.RunningAppProcessInfo> it2;
        ActivityManager.RunningAppProcessInfo next;
        String str = f10317a;
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
            if (it2.hasNext()) {
                next = it2.next();
            } else {
                String a2 = a();
                f10317a = a2;
                return a2;
            }
        } while (next.pid != myPid);
        if (q.a()) {
            q.b("Process", "processName = " + next.processName);
        }
        String str2 = next.processName;
        f10317a = str2;
        return str2;
    }
}
