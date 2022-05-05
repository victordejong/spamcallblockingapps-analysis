package com.google.android.gms.internal.base;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/zal.class */
public class zal extends Handler {
    private static volatile zam zaro;

    public zal() {
    }

    public zal(Looper looper) {
        super(looper);
    }

    public zal(Looper looper, Handler.Callback callback) {
        super(looper, callback);
    }
}
