package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.WorkSource;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.p080g.C1562c;
import java.lang.reflect.Method;
/* renamed from: com.google.android.gms.common.util.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/t.class */
public class C1623t {

    /* renamed from: a */
    private static final Method f5899a;

    /* renamed from: b */
    private static final Method f5900b;

    /* renamed from: c */
    private static final Method f5901c;

    /* renamed from: d */
    private static final Method f5902d;

    /* JADX WARN: Can't wrap try/catch for region: R(19:2|36|3|6|(14:42|8|10|40|11|14|44|15|17|(2:46|19)|22|(2:34|24)|27|(3:38|29|49)(1:48))|9|10|40|11|14|44|15|17|(0)|22|(0)|27|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0058, code lost:
        r8 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x007c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.C1623t.m15592clinit():void");
    }

    @RecentlyNullable
    /* renamed from: a */
    public static WorkSource m8198a(@RecentlyNonNull Context context, String str) {
        if (context == null || context.getPackageManager() == null || str == null) {
            return null;
        }
        try {
            ApplicationInfo m8433c = C1562c.m8427a(context).m8433c(str, 0);
            if (m8433c == null) {
                Log.e("WorkSourceUtil", str.length() != 0 ? "Could not get applicationInfo from package: ".concat(str) : new String("Could not get applicationInfo from package: "));
                return null;
            }
            int i = m8433c.uid;
            WorkSource workSource = new WorkSource();
            m8195d(workSource, i, str);
            return workSource;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("WorkSourceUtil", str.length() != 0 ? "Could not find package: ".concat(str) : new String("Could not find package: "));
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    @androidx.annotation.RecentlyNonNull
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.String> m8197b(android.os.WorkSource r7) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L11
        Lc:
            r0 = 0
            r9 = r0
            goto L40
        L11:
            java.lang.reflect.Method r0 = com.google.android.gms.common.util.C1623t.f5901c
            r10 = r0
            r0 = r10
            if (r0 == 0) goto Lc
            r0 = r10
            r1 = r7
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L33
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.Exception -> L33
            r10 = r0
            r0 = r10
            java.lang.Object r0 = com.google.android.gms.common.internal.C1581h.m8347h(r0)     // Catch: java.lang.Exception -> L33
            r0 = r10
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Exception -> L33
            int r0 = r0.intValue()     // Catch: java.lang.Exception -> L33
            r9 = r0
            goto L40
        L33:
            r10 = move-exception
            java.lang.String r0 = "WorkSourceUtil"
            java.lang.String r1 = "Unable to assign blame through WorkSource"
            r2 = r10
            int r0 = android.util.Log.wtf(r0, r1, r2)
            goto Lc
        L40:
            r0 = r9
            if (r0 == 0) goto L9d
            r0 = 0
            r11 = r0
        L47:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L9d
            java.lang.reflect.Method r0 = com.google.android.gms.common.util.C1623t.f5902d
            r12 = r0
            r0 = 0
            r13 = r0
            r0 = r13
            r10 = r0
            r0 = r12
            if (r0 == 0) goto L83
            r0 = r12
            r1 = r7
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L76
            r3 = r2
            r4 = 0
            r5 = r11
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Exception -> L76
            r3[r4] = r5     // Catch: java.lang.Exception -> L76
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.Exception -> L76
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Exception -> L76
            r10 = r0
            goto L83
        L76:
            r10 = move-exception
            java.lang.String r0 = "WorkSourceUtil"
            java.lang.String r1 = "Unable to assign blame through WorkSource"
            r2 = r10
            int r0 = android.util.Log.wtf(r0, r1, r2)
            r0 = r13
            r10 = r0
        L83:
            r0 = r10
            boolean r0 = com.google.android.gms.common.util.C1621r.m8201a(r0)
            if (r0 != 0) goto L97
            r0 = r10
            java.lang.Object r0 = com.google.android.gms.common.internal.C1581h.m8347h(r0)
            r0 = r8
            r1 = r10
            boolean r0 = r0.add(r1)
        L97:
            int r11 = r11 + 1
            goto L47
        L9d:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.C1623t.m8197b(android.os.WorkSource):java.util.List");
    }

    /* renamed from: c */
    public static boolean m8196c(@RecentlyNonNull Context context) {
        return (context == null || context.getPackageManager() == null || C1562c.m8427a(context).m8434b("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }

    /* renamed from: d */
    public static void m8195d(@RecentlyNonNull WorkSource workSource, int i, String str) {
        Method method = f5900b;
        if (method != null) {
            try {
                method.invoke(workSource, Integer.valueOf(i), str);
                return;
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                return;
            }
        }
        Method method2 = f5899a;
        if (method2 == null) {
            return;
        }
        try {
            method2.invoke(workSource, Integer.valueOf(i));
        } catch (Exception e2) {
            Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
        }
    }
}
