package com.google.android.gms.internal.measurement;

import android.os.Binder;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzep.class */
public final /* synthetic */ class zzep {
    public static <V> V zza(zzeq<V> zzeqVar) {
        V v;
        try {
            v = zzeqVar.zza();
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                v = zzeqVar.zza();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return v;
    }
}
