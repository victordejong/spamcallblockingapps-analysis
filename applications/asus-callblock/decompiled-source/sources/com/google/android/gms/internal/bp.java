package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import com.google.android.gms.common.a.m;
import com.google.android.gms.common.a.o;
import com.google.android.gms.common.internal.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/bp.class */
public final class bp {

    /* renamed from: b  reason: collision with root package name */
    private static String f4169b = "WakeLock";
    private static String c = "*gcore*:";
    private static boolean d = false;

    /* renamed from: a  reason: collision with root package name */
    public final PowerManager.WakeLock f4170a;
    private WorkSource e;
    private final int f;
    private final String g;
    private final String h;
    private final String i;
    private final Context j;
    private boolean k;
    private int l;
    private int m;

    public bp(Context context, String str) {
        this(context, str, context == null ? null : context.getPackageName());
    }

    @SuppressLint({"UnwrappedWakeLock"})
    private bp(Context context, String str, String str2) {
        this(context, str, str2, (byte) 0);
    }

    @SuppressLint({"UnwrappedWakeLock"})
    private bp(Context context, String str, String str2, byte b2) {
        this.k = true;
        b.a(str, (Object) "Wake lock name can NOT be empty");
        this.f = 1;
        this.h = null;
        this.i = null;
        this.j = context.getApplicationContext();
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            String valueOf = String.valueOf(c);
            String valueOf2 = String.valueOf(str);
            this.g = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        } else {
            this.g = str;
        }
        this.f4170a = ((PowerManager) context.getSystemService("power")).newWakeLock(1, str);
        if (o.a(this.j)) {
            this.e = o.a(context, m.a(str2) ? context.getPackageName() : str2);
            WorkSource workSource = this.e;
            if (workSource != null && o.a(this.j)) {
                if (this.e != null) {
                    this.e.add(workSource);
                } else {
                    this.e = workSource;
                }
                this.f4170a.setWorkSource(this.e);
            }
        }
    }

    private String a(boolean z) {
        return this.k ? z ? null : this.h : this.h;
    }

    private boolean d() {
        if (TextUtils.isEmpty(null)) {
            return false;
        }
        String str = this.h;
        throw new NullPointerException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
        if (r0 == false) goto L_0x005a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0065, code lost:
        if (r11.m == 0) goto L_0x0068;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r11 = this;
            r0 = 14
            boolean r0 = com.google.android.gms.common.a.k.a(r0)
            if (r0 != 0) goto L_0x002f
            r0 = r11
            boolean r0 = r0.k
            if (r0 == 0) goto L_0x002f
            java.lang.String r0 = com.google.android.gms.internal.bp.f4169b
            r12 = r0
            r0 = r11
            java.lang.String r0 = r0.g
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r13 = r0
            r0 = r13
            int r0 = r0.length()
            if (r0 == 0) goto L_0x00ab
            java.lang.String r0 = "Do not acquire with timeout on reference counted WakeLocks before ICS. wakelock: "
            r1 = r13
            java.lang.String r0 = r0.concat(r1)
            r13 = r0
        L_0x0029:
            r0 = r12
            r1 = r13
            int r0 = android.util.Log.wtf(r0, r1)
        L_0x002f:
            r0 = r11
            boolean r0 = r0.d()
            r14 = r0
            r0 = r11
            r1 = r14
            java.lang.String r0 = r0.a(r1)
            r13 = r0
            r0 = r11
            monitor-enter(r0)
            r0 = r11
            boolean r0 = r0.k     // Catch: all -> 0x00b8
            if (r0 == 0) goto L_0x005a
            r0 = r11
            int r0 = r0.l     // Catch: all -> 0x00b8
            r15 = r0
            r0 = r11
            r1 = r15
            r2 = 1
            int r1 = r1 + r2
            r0.l = r1     // Catch: all -> 0x00b8
            r0 = r15
            if (r0 == 0) goto L_0x0068
            r0 = r14
            if (r0 != 0) goto L_0x0068
        L_0x005a:
            r0 = r11
            boolean r0 = r0.k     // Catch: all -> 0x00b8
            if (r0 != 0) goto L_0x009e
            r0 = r11
            int r0 = r0.m     // Catch: all -> 0x00b8
            if (r0 != 0) goto L_0x009e
        L_0x0068:
            com.google.android.gms.common.stats.h r0 = com.google.android.gms.common.stats.h.a()     // Catch: all -> 0x00b8, all -> 0x00b8
            r0 = r11
            android.content.Context r0 = r0.j     // Catch: all -> 0x00b8
            r1 = r11
            android.os.PowerManager$WakeLock r1 = r1.f4170a     // Catch: all -> 0x00b8
            r2 = r13
            java.lang.String r1 = com.google.android.gms.common.stats.f.a(r1, r2)     // Catch: all -> 0x00b8
            r2 = 7
            r3 = r11
            java.lang.String r3 = r3.g     // Catch: all -> 0x00b8
            r4 = r13
            r5 = r11
            java.lang.String r5 = r5.i     // Catch: all -> 0x00b8
            r6 = r11
            int r6 = r6.f     // Catch: all -> 0x00b8
            r7 = r11
            android.os.WorkSource r7 = r7.e     // Catch: all -> 0x00b8
            java.util.List r7 = com.google.android.gms.common.a.o.a(r7)     // Catch: all -> 0x00b8
            r8 = 1000(0x3e8, double:4.94E-321)
            com.google.android.gms.common.stats.h.a(r0, r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: all -> 0x00b8
            r0 = r11
            r1 = r11
            int r1 = r1.m     // Catch: all -> 0x00b8
            r2 = 1
            int r1 = r1 + r2
            r0.m = r1     // Catch: all -> 0x00b8
        L_0x009e:
            r0 = r11
            monitor-exit(r0)     // Catch: all -> 0x00b8
            r0 = r11
            android.os.PowerManager$WakeLock r0 = r0.f4170a
            r1 = 1000(0x3e8, double:4.94E-321)
            r0.acquire(r1)
            return
        L_0x00ab:
            java.lang.String r0 = new java.lang.String
            r1 = r0
            java.lang.String r2 = "Do not acquire with timeout on reference counted WakeLocks before ICS. wakelock: "
            r1.<init>(r2)
            r13 = r0
            goto L_0x0029
        L_0x00b8:
            r13 = move-exception
            r0 = r11
            monitor-exit(r0)     // Catch: all -> 0x00b8
            r0 = r13
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.bp.a():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
        if (r8.m == 1) goto L_0x0037;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        if (r0 == false) goto L_0x0028;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b() {
        /*
            r8 = this;
            r0 = r8
            boolean r0 = r0.d()
            r9 = r0
            r0 = r8
            r1 = r9
            java.lang.String r0 = r0.a(r1)
            r10 = r0
            r0 = r8
            monitor-enter(r0)
            r0 = r8
            boolean r0 = r0.k     // Catch: all -> 0x0072
            if (r0 == 0) goto L_0x0028
            r0 = r8
            int r0 = r0.l     // Catch: all -> 0x0072
            r1 = 1
            int r0 = r0 - r1
            r11 = r0
            r0 = r8
            r1 = r11
            r0.l = r1     // Catch: all -> 0x0072
            r0 = r11
            if (r0 == 0) goto L_0x0037
            r0 = r9
            if (r0 != 0) goto L_0x0037
        L_0x0028:
            r0 = r8
            boolean r0 = r0.k     // Catch: all -> 0x0072
            if (r0 != 0) goto L_0x0068
            r0 = r8
            int r0 = r0.m     // Catch: all -> 0x0072
            r1 = 1
            if (r0 != r1) goto L_0x0068
        L_0x0037:
            com.google.android.gms.common.stats.h r0 = com.google.android.gms.common.stats.h.a()     // Catch: all -> 0x0072, all -> 0x0072
            r0 = r8
            android.content.Context r0 = r0.j     // Catch: all -> 0x0072
            r1 = r8
            android.os.PowerManager$WakeLock r1 = r1.f4170a     // Catch: all -> 0x0072
            r2 = r10
            java.lang.String r1 = com.google.android.gms.common.stats.f.a(r1, r2)     // Catch: all -> 0x0072
            r2 = r8
            java.lang.String r2 = r2.g     // Catch: all -> 0x0072
            r3 = r10
            r4 = r8
            java.lang.String r4 = r4.i     // Catch: all -> 0x0072
            r5 = r8
            int r5 = r5.f     // Catch: all -> 0x0072
            r6 = r8
            android.os.WorkSource r6 = r6.e     // Catch: all -> 0x0072
            java.util.List r6 = com.google.android.gms.common.a.o.a(r6)     // Catch: all -> 0x0072
            com.google.android.gms.common.stats.h.a(r0, r1, r2, r3, r4, r5, r6)     // Catch: all -> 0x0072
            r0 = r8
            r1 = r8
            int r1 = r1.m     // Catch: all -> 0x0072
            r2 = 1
            int r1 = r1 - r2
            r0.m = r1     // Catch: all -> 0x0072
        L_0x0068:
            r0 = r8
            monitor-exit(r0)     // Catch: all -> 0x0072
            r0 = r8
            android.os.PowerManager$WakeLock r0 = r0.f4170a
            r0.release()
            return
        L_0x0072:
            r10 = move-exception
            r0 = r8
            monitor-exit(r0)     // Catch: all -> 0x0072
            r0 = r10
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.bp.b():void");
    }

    public final void c() {
        this.f4170a.setReferenceCounted(false);
        this.k = false;
    }
}
