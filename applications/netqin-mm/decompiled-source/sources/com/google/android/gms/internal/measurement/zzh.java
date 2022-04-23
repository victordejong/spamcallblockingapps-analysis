package com.google.android.gms.internal.measurement;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import android.os.UserHandle;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzh.class */
public final class zzh {

    /* renamed from: b */
    public static final Method f29481b = m9793a();

    /* renamed from: c */
    public static final Method f29482c = m9790b();

    /* renamed from: a */
    public final JobScheduler f29483a;

    public zzh(JobScheduler jobScheduler) {
        this.f29483a = jobScheduler;
    }

    /* renamed from: a */
    public static int m9791a(Context context, JobInfo jobInfo, String str, String str2) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        return (f29481b == null || context.checkSelfPermission("android.permission.UPDATE_DEVICE_STATS") != 0) ? jobScheduler.schedule(jobInfo) : new zzh(jobScheduler).m9792a(jobInfo, str, m9789c(), str2);
    }

    /* renamed from: a */
    public static Method m9793a() {
        if (Build.VERSION.SDK_INT < 24) {
            return null;
        }
        try {
            return JobScheduler.class.getDeclaredMethod("scheduleAsPackage", JobInfo.class, String.class, Integer.TYPE, String.class);
        } catch (NoSuchMethodException e) {
            if (!Log.isLoggable("JobSchedulerCompat", 6)) {
                return null;
            }
            Log.e("JobSchedulerCompat", "No scheduleAsPackage method available, falling back to schedule");
            return null;
        }
    }

    /* renamed from: b */
    public static Method m9790b() {
        if (Build.VERSION.SDK_INT < 24) {
            return null;
        }
        try {
            return UserHandle.class.getDeclaredMethod("myUserId", null);
        } catch (NoSuchMethodException e) {
            if (!Log.isLoggable("JobSchedulerCompat", 6)) {
                return null;
            }
            Log.e("JobSchedulerCompat", "No myUserId method available");
            return null;
        }
    }

    /* renamed from: c */
    public static int m9789c() {
        Method method = f29482c;
        if (method == null) {
            return 0;
        }
        try {
            return ((Integer) method.invoke(null, new Object[0])).intValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            if (!Log.isLoggable("JobSchedulerCompat", 6)) {
                return 0;
            }
            Log.e("JobSchedulerCompat", "myUserId invocation illegal", e);
            return 0;
        }
    }

    /* renamed from: a */
    public final int m9792a(JobInfo jobInfo, String str, int i, String str2) {
        Method method = f29481b;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.f29483a, jobInfo, str, Integer.valueOf(i), str2)).intValue();
            } catch (IllegalAccessException | InvocationTargetException e) {
                Log.e(str2, "error calling scheduleAsPackage", e);
            }
        }
        return this.f29483a.schedule(jobInfo);
    }
}
