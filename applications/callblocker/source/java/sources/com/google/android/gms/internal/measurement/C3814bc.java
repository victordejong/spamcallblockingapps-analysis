package com.google.android.gms.internal.measurement;

import android.os.Binder;
/* renamed from: com.google.android.gms.internal.measurement.bc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bc.class */
public final /* synthetic */ class C3814bc {
    /* renamed from: a */
    public static <V> V m5890a(AbstractC3813bb<V> abstractC3813bb) {
        V mo5889a;
        try {
            mo5889a = abstractC3813bb.mo5889a();
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                mo5889a = abstractC3813bb.mo5889a();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return mo5889a;
    }
}
