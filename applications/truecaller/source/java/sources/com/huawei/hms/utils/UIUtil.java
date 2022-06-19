package com.huawei.hms.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.huawei.hms.support.common.ActivityMgr;
import com.huawei.hms.support.log.HMSLog;
import java.util.Iterator;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/utils/UIUtil.class */
public class UIUtil {
    public static Activity getActiveActivity(Activity activity, Context context) {
        if (isBackground(context)) {
            StringBuilder m8728C = C22128a.m8728C("isBackground");
            m8728C.append(isBackground(context));
            HMSLog.m37193i("UIUtil", m8728C.toString());
            return null;
        } else if (activity == null) {
            HMSLog.m37193i("UIUtil", "activity is null");
            return ActivityMgr.INST.getCurrentActivity();
        } else {
            Activity activity2 = activity;
            if (activity.isFinishing()) {
                StringBuilder m8728C2 = C22128a.m8728C("activity isFinishing is ");
                m8728C2.append(activity.isFinishing());
                HMSLog.m37193i("UIUtil", m8728C2.toString());
                activity2 = ActivityMgr.INST.getCurrentActivity();
            }
            return activity2;
        }
    }

    public static String getProcessName(Context context, int i) {
        ActivityManager activityManager;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (context == null || (activityManager = (ActivityManager) context.getSystemService("activity")) == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            return "";
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == i) {
                return runningAppProcessInfo.processName;
            }
        }
        return "";
    }

    public static boolean isActivityFullscreen(Activity activity) {
        return (activity.getWindow().getAttributes().flags & 1024) == 1024;
    }

    public static boolean isBackground(Context context) {
        if (context == null) {
            return true;
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
        boolean z = true;
        if (activityManager != null) {
            if (keyguardManager != null) {
                List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
                if (runningAppProcesses != null) {
                    String processName = getProcessName(context, Process.myPid());
                    Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                    while (true) {
                        z = true;
                        if (!it.hasNext()) {
                            break;
                        }
                        ActivityManager.RunningAppProcessInfo next = it.next();
                        if (TextUtils.equals(next.processName, processName)) {
                            StringBuilder m8728C = C22128a.m8728C("appProcess.importance is ");
                            m8728C.append(next.importance);
                            HMSLog.m37193i("UIUtil", m8728C.toString());
                            boolean z2 = next.importance == 100;
                            boolean isKeyguardLocked = keyguardManager.isKeyguardLocked();
                            HMSLog.m37193i("UIUtil", "isForground is " + z2 + "***  isLockedState is " + isKeyguardLocked);
                            z = true;
                            if (z2) {
                                z = isKeyguardLocked;
                            }
                        }
                    }
                } else {
                    return true;
                }
            } else {
                z = true;
            }
        }
        return z;
    }
}
