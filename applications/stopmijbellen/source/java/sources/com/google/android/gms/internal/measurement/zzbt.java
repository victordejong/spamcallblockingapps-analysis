package com.google.android.gms.internal.measurement;

import android.annotation.TargetApi;
import java.lang.reflect.Method;
@TargetApi(24)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbt.class */
public final class zzbt {
    private static final Method zza;
    private static final Method zzb;

    /* JADX WARN: Removed duplicated region for block: B:15:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            r1 = 24
            if (r0 < r1) goto L39
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
            goto L3b
        L30:
            r9 = move-exception
            java.lang.String r0 = "JobSchedulerCompat"
            r1 = 6
            boolean r0 = android.util.Log.isLoggable(r0, r1)
        L39:
            r0 = 0
            r9 = r0
        L3b:
            r0 = r9
            com.google.android.gms.internal.measurement.zzbt.zza = r0
            r0 = r8
            r9 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 24
            if (r0 < r1) goto L63
            java.lang.Class<android.os.UserHandle> r0 = android.os.UserHandle.class
            java.lang.String r1 = "myUserId"
            r2 = 0
            java.lang.Class[] r2 = new java.lang.Class[r2]     // Catch: java.lang.NoSuchMethodException -> L58
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r1, r2)     // Catch: java.lang.NoSuchMethodException -> L58
            r9 = r0
            goto L63
        L58:
            r9 = move-exception
            java.lang.String r0 = "JobSchedulerCompat"
            r1 = 6
            boolean r0 = android.util.Log.isLoggable(r0, r1)
            r0 = r8
            r9 = r0
        L63:
            r0 = r9
            com.google.android.gms.internal.measurement.zzbt.zzb = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbt.m10279clinit():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zza(android.content.Context r7, android.app.job.JobInfo r8, java.lang.String r9, java.lang.String r10) {
        /*
            r0 = r7
            java.lang.String r1 = "jobscheduler"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.app.job.JobScheduler r0 = (android.app.job.JobScheduler) r0
            r9 = r0
            r0 = r9
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            java.lang.reflect.Method r0 = com.google.android.gms.internal.measurement.zzbt.zza
            if (r0 == 0) goto L99
            r0 = r7
            java.lang.String r1 = "android.permission.UPDATE_DEVICE_STATS"
            int r0 = r0.checkSelfPermission(r1)
            if (r0 == 0) goto L21
            goto L99
        L21:
            java.lang.reflect.Method r0 = com.google.android.gms.internal.measurement.zzbt.zzb
            r7 = r0
            r0 = 0
            r11 = r0
            r0 = r7
            if (r0 == 0) goto L50
            r0 = r7
            java.lang.Class<android.os.UserHandle> r1 = android.os.UserHandle.class
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L47
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.Throwable -> L47
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Throwable -> L47
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L50
            r0 = r7
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L47
            r12 = r0
            goto L53
        L47:
            r7 = move-exception
            java.lang.String r0 = "JobSchedulerCompat"
            r1 = 6
            boolean r0 = android.util.Log.isLoggable(r0, r1)
        L50:
            r0 = 0
            r12 = r0
        L53:
            java.lang.reflect.Method r0 = com.google.android.gms.internal.measurement.zzbt.zza
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L8f
            r0 = r7
            r1 = r9
            r2 = 4
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L9f
            r3 = r2
            r4 = 0
            r5 = r8
            r3[r4] = r5     // Catch: java.lang.Throwable -> L9f
            r3 = r2
            r4 = 1
            java.lang.String r5 = "com.google.android.gms"
            r3[r4] = r5     // Catch: java.lang.Throwable -> L9f
            r3 = r2
            r4 = 2
            r5 = r12
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L9f
            r3[r4] = r5     // Catch: java.lang.Throwable -> L9f
            r3 = r2
            r4 = 3
            java.lang.String r5 = "UploadAlarm"
            r3[r4] = r5     // Catch: java.lang.Throwable -> L9f
            java.lang.Object r0 = r0.invoke(r1, r2)     // Catch: java.lang.Throwable -> L9f
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Throwable -> L9f
            r7 = r0
            r0 = r11
            r12 = r0
            r0 = r7
            if (r0 == 0) goto L96
            r0 = r7
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L9f
            r12 = r0
            goto L96
        L8f:
            r0 = r9
            r1 = r8
            int r0 = r0.schedule(r1)
            r12 = r0
        L96:
            r0 = r12
            return r0
        L99:
            r0 = r9
            r1 = r8
            int r0 = r0.schedule(r1)
            return r0
        L9f:
            r7 = move-exception
            goto L8f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbt.zza(android.content.Context, android.app.job.JobInfo, java.lang.String, java.lang.String):int");
    }
}
