package com.google.android.gms.internal.ads;

import android.system.ErrnoException;
import android.system.OsConstants;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztr.class */
final class zztr {
    public static boolean zzb(Throwable th) {
        return (th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES;
    }
}
