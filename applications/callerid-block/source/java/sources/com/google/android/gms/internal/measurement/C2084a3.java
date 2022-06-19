package com.google.android.gms.internal.measurement;

import android.os.Binder;
/* renamed from: com.google.android.gms.internal.measurement.a3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/a3.class */
public final /* synthetic */ class C2084a3 {
    /* renamed from: a */
    public static <V> V m4463a(AbstractC2090b3<V> abstractC2090b3) {
        V v;
        try {
            v = abstractC2090b3.zza();
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                v = abstractC2090b3.zza();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return v;
    }
}
