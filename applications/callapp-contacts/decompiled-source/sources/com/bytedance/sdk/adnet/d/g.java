package com.bytedance.sdk.adnet.d;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/g.class */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static String f8355a;

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

    public static boolean a(Context context) {
        String c2 = c(context);
        if (c2 != null) {
            return c2.endsWith(":push") || c2.endsWith(":pushservice");
        }
        return false;
    }

    public static boolean b(Context context) {
        String c2 = c(context);
        return (c2 == null || !c2.contains(":")) && c2 != null && c2.equals(context.getPackageName());
    }

    public static String c(Context context) {
        int myPid;
        Iterator<ActivityManager.RunningAppProcessInfo> it2;
        ActivityManager.RunningAppProcessInfo next;
        String str = f8355a;
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
                f8355a = a2;
                return a2;
            }
        } while (next.pid != myPid);
        String str2 = next.processName;
        f8355a = str2;
        return str2;
    }
}
