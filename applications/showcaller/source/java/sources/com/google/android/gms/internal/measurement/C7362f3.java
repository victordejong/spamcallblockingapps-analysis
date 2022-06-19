package com.google.android.gms.internal.measurement;

import android.os.Binder;
/* renamed from: com.google.android.gms.internal.measurement.f3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/f3.class */
public final /* synthetic */ class C7362f3 {
    /* renamed from: a */
    public static <V> V m7534a(AbstractC7376g3<V> abstractC7376g3) {
        V v;
        try {
            v = abstractC7376g3.zza();
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                v = abstractC7376g3.zza();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return v;
    }
}
