package com.google.android.gms.internal.common;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/common/zzi.class */
public class zzi extends Handler {
    public zzi() {
    }

    public zzi(Looper looper) {
        super(looper);
    }

    public zzi(Looper looper, Handler.Callback callback) {
        super(looper, callback);
    }

    @Override // android.os.Handler
    public final void dispatchMessage(Message message) {
        super.dispatchMessage(message);
    }
}
