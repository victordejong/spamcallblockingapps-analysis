package com.google.android.gms.internal.measurement;

import android.annotation.TargetApi;
import java.lang.reflect.Method;
@TargetApi(24)
/* renamed from: com.google.android.gms.internal.measurement.a5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/a5.class */
public final class C2086a5 {

    /* renamed from: a */
    private static final Method f9723a;

    /* renamed from: b */
    private static final Method f9724b;

    /* JADX WARN: Removed duplicated region for block: B:21:0x0053 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            r1 = 24
            if (r0 < r1) goto L43
            java.lang.Class<android.app.job.JobScheduler> r0 = android.app.job.JobScheduler.class
            java.lang.String r1 = "scheduleAsPackage"
            r2 = 4
            java.lang.Class[] r2 = new java.lang.Class[r2]     // Catch: java.lang.NoSuchMethodException -> L30
            r3 = r2
            r4 = 0
            java.lang.Class<android.app.job.JobInfo> r5 = android.app.job.JobInfo.class
            r3[r4] = r5     // Catch: java.lang.NoSuchMethodException -> L30
            r3 = r2
            r4 = 1
            java.lang.Class<java.lang.String> r5 = java.lang.String.class
            r3[r4] = r5     // Catch: java.lang.NoSuchMethodException -> L30
            r3 = r2
            r4 = 2
            java.lang.Class r5 = java.lang.Integer.TYPE     // Catch: java.lang.NoSuchMethodException -> L30
            r3[r4] = r5     // Catch: java.lang.NoSuchMethodException -> L30
            r3 = r2
            r4 = 3
            java.lang.Class<java.lang.String> r5 = java.lang.String.class
            r3[r4] = r5     // Catch: java.lang.NoSuchMethodException -> L30
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r1, r2)     // Catch: java.lang.NoSuchMethodException -> L30
            r9 = r0
            goto L45
        L30:
            r9 = move-exception
            java.lang.String r0 = "JobSchedulerCompat"
            r1 = 6
            boolean r0 = android.util.Log.isLoggable(r0, r1)
            if (r0 == 0) goto L43
            java.lang.String r0 = "JobSchedulerCompat"
            java.lang.String r1 = "No scheduleAsPackage method available, falling back to schedule"
            int r0 = android.util.Log.e(r0, r1)
        L43:
            r0 = 0
            r9 = r0
        L45:
            r0 = r9
            com.google.android.gms.internal.measurement.C2086a5.f9723a = r0
            r0 = r8
            r9 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 24
            if (r0 < r1) goto L79
            java.lang.Class<android.os.UserHandle> r0 = android.os.UserHandle.class
            java.lang.String r1 = "myUserId"
            r2 = 0
            java.lang.Class[] r2 = new java.lang.Class[r2]     // Catch: java.lang.NoSuchMethodException -> L62
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r1, r2)     // Catch: java.lang.NoSuchMethodException -> L62
            r9 = r0
            goto L79
        L62:
            r9 = move-exception
            r0 = r8
            r9 = r0
            java.lang.String r0 = "JobSchedulerCompat"
            r1 = 6
            boolean r0 = android.util.Log.isLoggable(r0, r1)
            if (r0 == 0) goto L79
            java.lang.String r0 = "JobSchedulerCompat"
            java.lang.String r1 = "No myUserId method available"
            int r0 = android.util.Log.e(r0, r1)
            r0 = r8
            r9 = r0
        L79:
            r0 = r9
            com.google.android.gms.internal.measurement.C2086a5.f9724b = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2086a5.m15810clinit():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x006a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m4461a(android.content.Context r7, android.app.job.JobInfo r8, java.lang.String r9, java.lang.String r10) {
        /*
            r0 = r7
            java.lang.String r1 = "jobscheduler"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.app.job.JobScheduler r0 = (android.app.job.JobScheduler) r0
            r9 = r0
            r0 = r9
            java.lang.Class r0 = r0.getClass()
            java.lang.reflect.Method r0 = com.google.android.gms.internal.measurement.C2086a5.f9723a
            if (r0 == 0) goto Lb6
            r0 = r7
            java.lang.String r1 = "android.permission.UPDATE_DEVICE_STATS"
            int r0 = r0.checkSelfPermission(r1)
            if (r0 == 0) goto L21
            goto Lb6
        L21:
            java.lang.reflect.Method r0 = com.google.android.gms.internal.measurement.C2086a5.f9724b
            r7 = r0
            r0 = 0
            r11 = r0
            r0 = r7
            if (r0 == 0) goto L5f
            r0 = r7
            java.lang.Class<android.os.UserHandle> r1 = android.os.UserHandle.class
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.reflect.InvocationTargetException -> L47 java.lang.IllegalAccessException -> L4b
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.reflect.InvocationTargetException -> L47 java.lang.IllegalAccessException -> L4b
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.reflect.InvocationTargetException -> L47 java.lang.IllegalAccessException -> L4b
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L5f
            r0 = r7
            int r0 = r0.intValue()     // Catch: java.lang.reflect.InvocationTargetException -> L47 java.lang.IllegalAccessException -> L4b
            r12 = r0
            goto L62
        L47:
            r7 = move-exception
            goto L4c
        L4b:
            r7 = move-exception
        L4c:
            java.lang.String r0 = "JobSchedulerCompat"
            r1 = 6
            boolean r0 = android.util.Log.isLoggable(r0, r1)
            if (r0 == 0) goto L5f
            java.lang.String r0 = "JobSchedulerCompat"
            java.lang.String r1 = "myUserId invocation illegal"
            r2 = r7
            int r0 = android.util.Log.e(r0, r1, r2)
        L5f:
            r0 = 0
            r12 = r0
        L62:
            java.lang.reflect.Method r0 = com.google.android.gms.internal.measurement.C2086a5.f9723a
            r7 = r0
            r0 = r7
            if (r0 == 0) goto Lac
            r0 = r7
            r1 = r9
            r2 = 4
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.reflect.InvocationTargetException -> L9e java.lang.IllegalAccessException -> La2
            r3 = r2
            r4 = 0
            r5 = r8
            r3[r4] = r5     // Catch: java.lang.reflect.InvocationTargetException -> L9e java.lang.IllegalAccessException -> La2
            r3 = r2
            r4 = 1
            java.lang.String r5 = "com.google.android.gms"
            r3[r4] = r5     // Catch: java.lang.reflect.InvocationTargetException -> L9e java.lang.IllegalAccessException -> La2
            r3 = r2
            r4 = 2
            r5 = r12
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.reflect.InvocationTargetException -> L9e java.lang.IllegalAccessException -> La2
            r3[r4] = r5     // Catch: java.lang.reflect.InvocationTargetException -> L9e java.lang.IllegalAccessException -> La2
            r3 = r2
            r4 = 3
            java.lang.String r5 = "UploadAlarm"
            r3[r4] = r5     // Catch: java.lang.reflect.InvocationTargetException -> L9e java.lang.IllegalAccessException -> La2
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.reflect.InvocationTargetException -> L9e java.lang.IllegalAccessException -> La2
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.reflect.InvocationTargetException -> L9e java.lang.IllegalAccessException -> La2
            r7 = r0
            r0 = r11
            r12 = r0
            r0 = r7
            if (r0 == 0) goto Lb3
            r0 = r7
            int r0 = r0.intValue()     // Catch: java.lang.reflect.InvocationTargetException -> L9e java.lang.IllegalAccessException -> La2
            r12 = r0
            goto Lb3
        L9e:
            r7 = move-exception
            goto La3
        La2:
            r7 = move-exception
        La3:
            java.lang.String r0 = "UploadAlarm"
            java.lang.String r1 = "error calling scheduleAsPackage"
            r2 = r7
            int r0 = android.util.Log.e(r0, r1, r2)
        Lac:
            r0 = r9
            r1 = r8
            int r0 = r0.schedule(r1)
            r12 = r0
        Lb3:
            r0 = r12
            return r0
        Lb6:
            r0 = r9
            r1 = r8
            int r0 = r0.schedule(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2086a5.m4461a(android.content.Context, android.app.job.JobInfo, java.lang.String, java.lang.String):int");
    }
}
