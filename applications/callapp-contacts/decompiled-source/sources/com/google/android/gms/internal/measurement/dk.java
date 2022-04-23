package com.google.android.gms.internal.measurement;

import android.os.Binder;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/dk.class */
public final /* synthetic */ class dk {
    public static <V> V a(dl<V> dlVar) {
        V v;
        try {
            v = dlVar.a();
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                v = dlVar.a();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return v;
    }
}
