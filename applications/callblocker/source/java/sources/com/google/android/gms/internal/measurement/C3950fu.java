package com.google.android.gms.internal.measurement;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import android.os.UserHandle;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
@TargetApi(24)
/* renamed from: com.google.android.gms.internal.measurement.fu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/fu.class */
public final class C3950fu {

    /* renamed from: b */
    private static final Method f18183b = m5490a();

    /* renamed from: c */
    private static final Method f18184c = m5487b();

    /* renamed from: a */
    private final JobScheduler f18185a;

    private C3950fu(JobScheduler jobScheduler) {
        this.f18185a = jobScheduler;
    }

    /* renamed from: a */
    private final int m5489a(JobInfo jobInfo, String str, int i, String str2) {
        int intValue;
        if (f18183b != null) {
            try {
                intValue = ((Integer) f18183b.invoke(this.f18185a, jobInfo, str, Integer.valueOf(i), str2)).intValue();
            } catch (IllegalAccessException | InvocationTargetException e) {
                Log.e(str2, "error calling scheduleAsPackage", e);
            }
            return intValue;
        }
        intValue = this.f18185a.schedule(jobInfo);
        return intValue;
    }

    /* renamed from: a */
    public static int m5488a(Context context, JobInfo jobInfo, String str, String str2) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        return (f18183b == null || context.checkSelfPermission("android.permission.UPDATE_DEVICE_STATS") != 0) ? jobScheduler.schedule(jobInfo) : new C3950fu(jobScheduler).m5489a(jobInfo, str, m5486c(), str2);
    }

    /* renamed from: a */
    private static Method m5490a() {
        Method declaredMethod;
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                declaredMethod = JobScheduler.class.getDeclaredMethod("scheduleAsPackage", JobInfo.class, String.class, Integer.TYPE, String.class);
            } catch (NoSuchMethodException e) {
                if (Log.isLoggable("JobSchedulerCompat", 6)) {
                    Log.e("JobSchedulerCompat", "No scheduleAsPackage method available, falling back to schedule");
                }
            }
            return declaredMethod;
        }
        declaredMethod = null;
        return declaredMethod;
    }

    /* renamed from: b */
    private static Method m5487b() {
        Method method = null;
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                method = UserHandle.class.getDeclaredMethod("myUserId", null);
            } catch (NoSuchMethodException e) {
                method = null;
                if (Log.isLoggable("JobSchedulerCompat", 6)) {
                    Log.e("JobSchedulerCompat", "No myUserId method available");
                    method = null;
                }
            }
        }
        return method;
    }

    /* renamed from: c */
    private static int m5486c() {
        int intValue;
        if (f18184c != null) {
            try {
                intValue = ((Integer) f18184c.invoke(null, new Object[0])).intValue();
            } catch (IllegalAccessException | InvocationTargetException e) {
                if (Log.isLoggable("JobSchedulerCompat", 6)) {
                    Log.e("JobSchedulerCompat", "myUserId invocation illegal", e);
                }
            }
            return intValue;
        }
        intValue = 0;
        return intValue;
    }
}
