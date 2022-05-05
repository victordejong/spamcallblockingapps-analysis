package com.google.android.gms.internal.firebase_messaging;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zza.class */
public class zza extends Handler {
    private static volatile zzb zza;

    public zza() {
    }

    public zza(Looper looper) {
        super(looper);
    }

    public zza(Looper looper, Handler.Callback callback) {
        super(looper, callback);
    }

    @Override // android.os.Handler
    public final void dispatchMessage(Message message) {
        super.dispatchMessage(message);
    }
}
