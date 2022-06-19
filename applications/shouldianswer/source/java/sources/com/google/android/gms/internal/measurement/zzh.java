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
    private static final Method zzb = zza();
    private static final Method zzc = zzb();
    private final JobScheduler zza;

    private zzh(JobScheduler jobScheduler) {
        this.zza = jobScheduler;
    }

    private final int zza(JobInfo jobInfo, String str, int i, String str2) {
        Method method = zzb;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.zza, jobInfo, str, Integer.valueOf(i), str2)).intValue();
            } catch (IllegalAccessException | InvocationTargetException e) {
                Log.e(str2, "error calling scheduleAsPackage", e);
            }
        }
        return this.zza.schedule(jobInfo);
    }

    public static int zza(Context context, JobInfo jobInfo, String str, String str2) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        return (zzb == null || context.checkSelfPermission("android.permission.UPDATE_DEVICE_STATS") != 0) ? jobScheduler.schedule(jobInfo) : new zzh(jobScheduler).zza(jobInfo, str, zzc(), str2);
    }

    private static Method zza() {
        if (Build.VERSION.SDK_INT >= 24) {
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
        return null;
    }

    private static Method zzb() {
        if (Build.VERSION.SDK_INT >= 24) {
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
        return null;
    }

    private static int zzc() {
        Method method = zzc;
        if (method != null) {
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
        return 0;
    }
}
