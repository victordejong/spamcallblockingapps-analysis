package com.google.android.gms.internal.measurement;

import android.os.Binder;
/* renamed from: com.google.android.gms.internal.measurement.dk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dk.class */
public final /* synthetic */ class C13444dk {
    /* renamed from: a */
    public static <V> V m12917a(AbstractC13445dl<V> abstractC13445dl) {
        V v;
        try {
            v = abstractC13445dl.mo12916a();
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                v = abstractC13445dl.mo12916a();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return v;
    }
}
