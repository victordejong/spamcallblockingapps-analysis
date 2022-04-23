package com.google.android.gms.internal.base;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/base/j.class */
public class j extends Handler {
    public j() {
    }

    public j(Looper looper) {
        super(looper);
    }

    public j(Looper looper, Handler.Callback callback) {
        super(looper, callback);
    }
}
