package com.google.android.gms.common.stats;

import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import java.util.List;
/* renamed from: com.google.android.gms.common.stats.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/c.class */
public class C2696c {
    /* renamed from: a */
    public static String m13889a(PowerManager.WakeLock wakeLock, String str) {
        String valueOf = String.valueOf(String.valueOf((Process.myPid() << 32) | System.identityHashCode(wakeLock)));
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        }
        String valueOf2 = String.valueOf(str2);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    /* renamed from: a */
    public static String m13888a(String str) {
        String str2 = str;
        if ("com.google.android.gms".equals(str)) {
            str2 = null;
        }
        return str2;
    }

    /* renamed from: a */
    public static List<String> m13887a(List<String> list) {
        List<String> list2 = list;
        if (list != null) {
            list2 = list;
            if (list.size() == 1) {
                list2 = list;
                if ("com.google.android.gms".equals(list.get(0))) {
                    list2 = null;
                }
            }
        }
        return list2;
    }
}
