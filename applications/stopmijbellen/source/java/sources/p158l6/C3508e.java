package p158l6;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import java.util.List;
import p104g6.C2905a;
/* renamed from: l6.e */
/* loaded from: classes-dex2jar.jar:l6/e.class */
public class C3508e {

    /* renamed from: f */
    public static final C2905a f11641f = C2905a.m2869b();

    /* renamed from: a */
    public final Runtime f11642a = Runtime.getRuntime();

    /* renamed from: b */
    public final ActivityManager f11643b;

    /* renamed from: c */
    public final ActivityManager.MemoryInfo f11644c;

    /* renamed from: d */
    public final String f11645d;

    /* renamed from: e */
    public final Context f11646e;

    public C3508e(Context context) {
        String str;
        this.f11646e = context;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.f11643b = activityManager;
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.f11644c = memoryInfo;
        activityManager.getMemoryInfo(memoryInfo);
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    str = runningAppProcessInfo.processName;
                    break;
                }
            }
        }
        str = this.f11646e.getPackageName();
        this.f11645d = str;
    }
}
