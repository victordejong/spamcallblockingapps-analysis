package com.google.android.gms.internal.measurement;

import android.os.Binder;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzhc.class */
public final /* synthetic */ class zzhc {
    public static Object zza(zzhd zzhdVar) {
        Object obj;
        try {
            obj = zzhdVar.zza();
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                obj = zzhdVar.zza();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return obj;
    }
}
