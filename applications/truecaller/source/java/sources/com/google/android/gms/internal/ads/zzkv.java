package com.google.android.gms.internal.ads;

import android.system.ErrnoException;
import android.system.OsConstants;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzkv.class */
public final class zzkv {
    public static boolean zzb(Throwable th) {
        return (th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES;
    }
}
