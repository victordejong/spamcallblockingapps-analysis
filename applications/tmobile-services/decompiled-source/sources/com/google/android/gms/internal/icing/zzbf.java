package com.google.android.gms.internal.icing;

import android.os.Binder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbf.class */
public final /* synthetic */ class zzbf {
    /* renamed from: a */
    public static <V> V m14025a(zzbi<V> zzbiVar) {
        V v;
        try {
            v = zzbiVar.mo14020a();
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                v = zzbiVar.mo14020a();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return v;
    }
}
