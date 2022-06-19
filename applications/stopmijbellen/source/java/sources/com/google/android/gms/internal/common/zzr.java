package com.google.android.gms.internal.common;

import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/common/zzr.class */
public final class zzr extends zzp {
    public static boolean zza(@CheckForNull Object obj, @CheckForNull Object obj2) {
        boolean z = false;
        if (obj != obj2) {
            if (obj != null) {
                if (!obj.equals(obj2)) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }
}
