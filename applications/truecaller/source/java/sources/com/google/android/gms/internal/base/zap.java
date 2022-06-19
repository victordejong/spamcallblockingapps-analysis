package com.google.android.gms.internal.base;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/base/zap.class */
public class zap extends Handler {
    public zap() {
    }

    public zap(Looper looper) {
        super(looper);
    }

    public zap(Looper looper, Handler.Callback callback) {
        super(looper, callback);
    }
}
