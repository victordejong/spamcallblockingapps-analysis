package com.google.firebase.perf.internal;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import com.google.android.gms.internal.firebase_perf.zzaa;
import com.google.android.gms.internal.firebase_perf.zzat;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/zzr.class */
final class zzr {
    private final Runtime zzas;
    private final ActivityManager zzdp;
    private final ActivityManager.MemoryInfo zzdq;
    private final String zzdr;
    private final Context zzds;

    public zzr(Context context) {
        this(Runtime.getRuntime(), context);
    }

    private zzr(Runtime runtime, Context context) {
        String str;
        this.zzas = runtime;
        this.zzds = context;
        this.zzdp = (ActivityManager) context.getSystemService("activity");
        this.zzdq = new ActivityManager.MemoryInfo();
        this.zzdp.getMemoryInfo(this.zzdq);
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = this.zzdp.getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    str = runningAppProcessInfo.processName;
                    break;
                }
            }
        }
        str = this.zzds.getPackageName();
        this.zzdr = str;
    }

    public final String getProcessName() {
        return this.zzdr;
    }

    public final int zzar() {
        return zzaa.zza(zzat.zzhi.zzn(this.zzas.maxMemory()));
    }

    public final int zzas() {
        return zzaa.zza(zzat.zzhg.zzn(this.zzdp.getMemoryClass()));
    }

    public final int zzat() {
        return zzaa.zza(zzat.zzhi.zzn(this.zzdq.totalMem));
    }
}
