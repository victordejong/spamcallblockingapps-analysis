package com.google.android.gms.internal.measurement;

import android.os.Binder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhc.class */
public final /* synthetic */ class zzhc {
    public static <V> V zza(zzhd<V> zzhdVar) {
        V v;
        try {
            v = zzhdVar.zza();
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                v = zzhdVar.zza();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return v;
    }
}
