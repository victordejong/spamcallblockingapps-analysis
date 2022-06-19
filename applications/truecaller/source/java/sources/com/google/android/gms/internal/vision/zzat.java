package com.google.android.gms.internal.vision;

import android.os.Binder;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzat.class */
public final /* synthetic */ class zzat {
    public static <V> V zza(zzaw<V> zzawVar) {
        V v;
        try {
            v = zzawVar.zzt();
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                v = zzawVar.zzt();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return v;
    }
}
