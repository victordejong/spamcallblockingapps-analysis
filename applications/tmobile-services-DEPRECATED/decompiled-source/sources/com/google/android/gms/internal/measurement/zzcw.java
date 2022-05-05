package com.google.android.gms.internal.measurement;

import android.os.Binder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcw.class */
public final /* synthetic */ class zzcw {
    /* renamed from: a */
    public static <V> V m12789a(zzcz<V> zzczVar) {
        V v;
        try {
            v = zzczVar.zza();
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                v = zzczVar.zza();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return v;
    }
}
