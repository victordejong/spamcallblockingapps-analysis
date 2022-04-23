package com.google.android.gms.internal.common;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/common/zze.class */
public class zze extends Handler {
    private static volatile zzf zzit;

    public zze() {
    }

    public zze(Looper looper) {
        super(looper);
    }

    public zze(Looper looper, Handler.Callback callback) {
        super(looper, callback);
    }
}
