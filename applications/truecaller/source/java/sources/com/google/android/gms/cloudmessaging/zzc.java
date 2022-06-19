package com.google.android.gms.cloudmessaging;

import android.os.Build;
import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/cloudmessaging/zzc.class */
public final class zzc extends ClassLoader {
    @Override // java.lang.ClassLoader
    public final Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
        if ("com.google.android.gms.iid.MessengerCompat".equals(str)) {
            if (Log.isLoggable("CloudMessengerCompat", 3) || Build.VERSION.SDK_INT != 23) {
                return zzd.class;
            }
            Log.isLoggable("CloudMessengerCompat", 3);
            return zzd.class;
        }
        return super.loadClass(str, z);
    }
}
