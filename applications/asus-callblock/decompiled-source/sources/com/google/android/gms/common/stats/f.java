package com.google.android.gms.common.stats;

import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/f.class */
public final class f {
    public static String a(PowerManager.WakeLock wakeLock, String str) {
        String valueOf = String.valueOf(String.valueOf((Process.myPid() << 32) | System.identityHashCode(wakeLock)));
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = BuildConfig.FLAVOR;
        }
        String valueOf2 = String.valueOf(str2);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }
}
