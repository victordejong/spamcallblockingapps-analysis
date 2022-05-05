package com.google.android.gms.internal.measurement;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import android.os.UserHandle;
import android.util.Log;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
@TargetApi(24)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzh.class */
public final class zzh {
    @Nullable

    /* renamed from: b */
    private static final Method f8469b = m12622c();
    @Nullable

    /* renamed from: c */
    private static final Method f8470c = m12621d();

    /* renamed from: a */
    private final JobScheduler f8471a;

    private zzh(JobScheduler jobScheduler) {
        this.f8471a = jobScheduler;
    }

    /* renamed from: a */
    private final int m12624a(JobInfo jobInfo, String str, int i, String str2) {
        Method method = f8469b;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.f8471a, jobInfo, str, Integer.valueOf(i), str2)).intValue();
            } catch (IllegalAccessException | InvocationTargetException e) {
                Log.e(str2, "error calling scheduleAsPackage", e);
            }
        }
        return this.f8471a.schedule(jobInfo);
    }

    /* renamed from: b */
    public static int m12623b(Context context, JobInfo jobInfo, String str, String str2) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        return (f8469b == null || context.checkSelfPermission("android.permission.UPDATE_DEVICE_STATS") != 0) ? jobScheduler.schedule(jobInfo) : new zzh(jobScheduler).m12624a(jobInfo, str, m12620e(), str2);
    }

    @Nullable
    /* renamed from: c */
    private static Method m12622c() {
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

    @Nullable
    /* renamed from: d */
    private static Method m12621d() {
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

    /* renamed from: e */
    private static int m12620e() {
        Method method = f8470c;
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
}
