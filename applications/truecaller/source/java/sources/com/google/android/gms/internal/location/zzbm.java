package com.google.android.gms.internal.location;

import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzbm.class */
public final class zzbm {
    public static Looper zza(Looper looper) {
        return looper != null ? looper : zzc();
    }

    public static Looper zzc() {
        Preconditions.m38895m(Looper.myLooper() != null, "Can't create handler inside thread that has not called Looper.prepare()");
        return Looper.myLooper();
    }
}
