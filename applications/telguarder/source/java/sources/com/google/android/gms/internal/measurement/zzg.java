package com.google.android.gms.internal.measurement;

import android.app.job.JobScheduler;
import java.lang.reflect.Method;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzg.class */
public final class zzg {
    private static final Method zzb;
    private static final Method zzc;
    private final JobScheduler zza;

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
            com.google.android.gms.internal.measurement.zzg.zzb = r0
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
            com.google.android.gms.internal.measurement.zzg.zzc = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzg.m3151clinit():void");
    }

    public zzg(JobScheduler jobScheduler) {
        this.zza = jobScheduler;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0073 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zza(android.content.Context r7, android.app.job.JobInfo r8, java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzg.zza(android.content.Context, android.app.job.JobInfo, java.lang.String, java.lang.String):int");
    }
}
