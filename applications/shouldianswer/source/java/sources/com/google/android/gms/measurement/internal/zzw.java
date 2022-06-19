package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Looper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzw.class */
public final class zzw {
    private final boolean zza = false;

    public zzw(Context context) {
    }

    public static boolean zza() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
