package com.google.android.gms.internal.vision;

import com.google.android.gms.vision.C2072L;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzm.class */
public final class zzm {
    private static final Object sLock = new Object();
    private static final HashMap<String, Integer> zzbx = new HashMap<>();

    public static boolean zza(String str, String str2) {
        synchronized (sLock) {
            String valueOf = String.valueOf(str);
            String valueOf2 = String.valueOf(str2);
            String concat = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
            HashMap<String, Integer> hashMap = zzbx;
            int intValue = hashMap.containsKey(concat) ? hashMap.get(concat).intValue() : 0;
            if ((intValue & 1) != 0) {
                return true;
            }
            try {
                System.loadLibrary(str2);
                hashMap.put(concat, Integer.valueOf(intValue | 1));
                return true;
            } catch (UnsatisfiedLinkError e) {
                if ((intValue & 4) == 0) {
                    C2072L.m38488e(e, "System.loadLibrary failed: %s", str2);
                    zzbx.put(concat, Integer.valueOf(intValue | 4));
                }
                return false;
            }
        }
    }
}
