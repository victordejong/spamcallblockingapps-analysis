package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.p272k.C6198c;
import java.lang.reflect.Method;
/* renamed from: com.google.android.gms.common.util.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/u.class */
public class C6243u {

    /* renamed from: a */
    private static final int f19722a = Process.myUid();

    /* renamed from: b */
    private static final Method f19723b;

    /* renamed from: c */
    private static final Method f19724c;

    /* renamed from: d */
    private static final Method f19725d;

    /* renamed from: e */
    private static final Method f19726e;

    /* renamed from: f */
    private static final Method f19727f;

    /* renamed from: g */
    private static final Method f19728g;

    /* renamed from: h */
    private static final Method f19729h;

    /* JADX WARN: Can't wrap try/catch for region: R(22:2|37|3|6|(18:43|8|10|41|11|14|47|15|18|(9:39|20|22|(6:49|24|28|(2:45|30)|33|34)|27|28|(0)|33|34)|21|22|(0)|27|28|(0)|33|34)|9|10|41|11|14|47|15|18|(0)|21|22|(0)|27|28|(0)|33|34) */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x005a, code lost:
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0076, code lost:
        r8 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0082 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.C6243u.m36914clinit():void");
    }

    @RecentlyNullable
    /* renamed from: a */
    public static WorkSource m16765a(@RecentlyNonNull Context context, String str) {
        if (context == null || context.getPackageManager() == null || str == null) {
            return null;
        }
        try {
            ApplicationInfo m16891c = C6198c.m16885a(context).m16891c(str, 0);
            if (m16891c == null) {
                Log.e("WorkSourceUtil", str.length() != 0 ? "Could not get applicationInfo from package: ".concat(str) : new String("Could not get applicationInfo from package: "));
                return null;
            }
            int i = m16891c.uid;
            WorkSource workSource = new WorkSource();
            m16762d(workSource, i, str);
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
    public static java.util.List<java.lang.String> m16764b(android.os.WorkSource r7) {
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
            java.lang.reflect.Method r0 = com.google.android.gms.common.util.C6243u.f19725d
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
            java.lang.Object r0 = com.google.android.gms.common.internal.C6155o.m17018j(r0)     // Catch: java.lang.Exception -> L33
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
            java.lang.reflect.Method r0 = com.google.android.gms.common.util.C6243u.f19727f
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
            boolean r0 = com.google.android.gms.common.util.C6241s.m16768a(r0)
            if (r0 != 0) goto L97
            r0 = r10
            java.lang.Object r0 = com.google.android.gms.common.internal.C6155o.m17018j(r0)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.C6243u.m16764b(android.os.WorkSource):java.util.List");
    }

    /* renamed from: c */
    public static boolean m16763c(@RecentlyNonNull Context context) {
        return (context == null || context.getPackageManager() == null || C6198c.m16885a(context).m16892b("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }

    /* renamed from: d */
    public static void m16762d(@RecentlyNonNull WorkSource workSource, int i, String str) {
        Method method = f19724c;
        if (method != null) {
            try {
                method.invoke(workSource, Integer.valueOf(i), str);
                return;
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                return;
            }
        }
        Method method2 = f19723b;
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
