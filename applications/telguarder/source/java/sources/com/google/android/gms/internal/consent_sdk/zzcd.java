package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzcd.class */
public final class zzcd {
    public static final Handler zza = new Handler(Looper.getMainLooper());
    public static final Executor zzb = new zzcg("Google consent worker");

    public static void zza() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        throw new IllegalStateException("Method must be call on main thread.");
    }
}
