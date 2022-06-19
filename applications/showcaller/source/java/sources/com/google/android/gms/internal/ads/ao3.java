package com.google.android.gms.internal.ads;

import android.system.ErrnoException;
import android.system.OsConstants;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ao3.class */
final class ao3 {
    /* renamed from: b */
    public static boolean m16510b(Throwable th) {
        return (th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES;
    }
}
