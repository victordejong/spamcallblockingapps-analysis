package com.google.android.gms.common.stats;

import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
@Deprecated
/* renamed from: com.google.android.gms.common.stats.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/stats/b.class */
public final class C12089b {
    /* renamed from: a */
    public static String m19067a(PowerManager.WakeLock wakeLock, String str) {
        String valueOf = String.valueOf(String.valueOf((Process.myPid() << 32) | System.identityHashCode(wakeLock)));
        if (true == TextUtils.isEmpty(str)) {
            str = "";
        }
        String valueOf2 = String.valueOf(str);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }
}
