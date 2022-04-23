package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import com.google.android.gms.common.d.c;
import java.lang.reflect.Method;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/t.class */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    private static final int f22952a = Process.myUid();

    /* renamed from: b  reason: collision with root package name */
    private static final Method f22953b;

    /* renamed from: c  reason: collision with root package name */
    private static final Method f22954c;

    /* renamed from: d  reason: collision with root package name */
    private static final Method f22955d;
    private static final Method e;
    private static final Method f;
    private static final Method g;
    private static final Method h;

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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.t.m4350clinit():void");
    }

    private t() {
    }

    public static WorkSource a(Context context, String str) {
        if (context == null || context.getPackageManager() == null || str == null) {
            return null;
        }
        try {
            ApplicationInfo a2 = c.a(context).a(str, 0);
            if (a2 == null) {
                Log.e("WorkSourceUtil", str.length() != 0 ? "Could not get applicationInfo from package: ".concat(str) : new String("Could not get applicationInfo from package: "));
                return null;
            }
            int i = a2.uid;
            WorkSource workSource = new WorkSource();
            Method method = f22954c;
            if (method != null) {
                try {
                    method.invoke(workSource, Integer.valueOf(i), str);
                } catch (Exception e2) {
                    Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
                }
            } else {
                Method method2 = f22953b;
                if (method2 != null) {
                    try {
                        method2.invoke(workSource, Integer.valueOf(i));
                    } catch (Exception e3) {
                        Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e3);
                    }
                }
            }
            return workSource;
        } catch (PackageManager.NameNotFoundException e4) {
            Log.e("WorkSourceUtil", str.length() != 0 ? "Could not find package: ".concat(str) : new String("Could not find package: "));
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.String> a(android.os.WorkSource r7) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0011
        L_0x000c:
            r0 = 0
            r9 = r0
            goto L_0x0040
        L_0x0011:
            java.lang.reflect.Method r0 = com.google.android.gms.common.util.t.f22955d
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x000c
            r0 = r10
            r1 = r7
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: Exception -> 0x0033
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: Exception -> 0x0033
            r10 = r0
            r0 = r10
            java.lang.Object r0 = com.google.android.gms.common.internal.o.a(r0)     // Catch: Exception -> 0x0033
            r0 = r10
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: Exception -> 0x0033
            int r0 = r0.intValue()     // Catch: Exception -> 0x0033
            r9 = r0
            goto L_0x0040
        L_0x0033:
            r10 = move-exception
            java.lang.String r0 = "WorkSourceUtil"
            java.lang.String r1 = "Unable to assign blame through WorkSource"
            r2 = r10
            int r0 = android.util.Log.wtf(r0, r1, r2)
            goto L_0x000c
        L_0x0040:
            r0 = r9
            if (r0 == 0) goto L_0x009d
            r0 = 0
            r11 = r0
        L_0x0047:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L_0x009d
            java.lang.reflect.Method r0 = com.google.android.gms.common.util.t.f
            r12 = r0
            r0 = 0
            r13 = r0
            r0 = r13
            r10 = r0
            r0 = r12
            if (r0 == 0) goto L_0x0083
            r0 = r12
            r1 = r7
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: Exception -> 0x0076
            r3 = r2
            r4 = 0
            r5 = r11
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: Exception -> 0x0076
            r3[r4] = r5     // Catch: Exception -> 0x0076
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: Exception -> 0x0076
            java.lang.String r0 = (java.lang.String) r0     // Catch: Exception -> 0x0076
            r10 = r0
            goto L_0x0083
        L_0x0076:
            r10 = move-exception
            java.lang.String r0 = "WorkSourceUtil"
            java.lang.String r1 = "Unable to assign blame through WorkSource"
            r2 = r10
            int r0 = android.util.Log.wtf(r0, r1, r2)
            r0 = r13
            r10 = r0
        L_0x0083:
            r0 = r10
            boolean r0 = com.google.android.gms.common.util.r.a(r0)
            if (r0 != 0) goto L_0x0097
            r0 = r10
            java.lang.Object r0 = com.google.android.gms.common.internal.o.a(r0)
            r0 = r8
            r1 = r10
            boolean r0 = r0.add(r1)
        L_0x0097:
            int r11 = r11 + 1
            goto L_0x0047
        L_0x009d:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.t.a(android.os.WorkSource):java.util.List");
    }

    public static boolean a(Context context) {
        return (context == null || context.getPackageManager() == null || c.a(context).a("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }
}
