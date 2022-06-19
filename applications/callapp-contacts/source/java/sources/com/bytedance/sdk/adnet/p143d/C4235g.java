package com.bytedance.sdk.adnet.p143d;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.Iterator;
/* renamed from: com.bytedance.sdk.adnet.d.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/g.class */
public class C4235g {

    /* renamed from: a */
    private static String f15496a;

    /* renamed from: a */
    private static String m36079a() {
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

    /* renamed from: a */
    public static boolean m36078a(Context context) {
        String m36076c = m36076c(context);
        if (m36076c != null) {
            return m36076c.endsWith(":push") || m36076c.endsWith(":pushservice");
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m36077b(Context context) {
        String m36076c = m36076c(context);
        return (m36076c == null || !m36076c.contains(":")) && m36076c != null && m36076c.equals(context.getPackageName());
    }

    /* renamed from: c */
    public static String m36076c(Context context) {
        int myPid;
        Iterator<ActivityManager.RunningAppProcessInfo> it2;
        ActivityManager.RunningAppProcessInfo next;
        String str = f15496a;
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
                String m36079a = m36079a();
                f15496a = m36079a;
                return m36079a;
            }
            next = it2.next();
        } while (next.pid != myPid);
        String str2 = next.processName;
        f15496a = str2;
        return str2;
    }
}
