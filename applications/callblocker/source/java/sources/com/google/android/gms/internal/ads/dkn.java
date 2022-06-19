package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dkn.class */
public abstract class dkn extends dkl implements dko {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.dko] */
    /* renamed from: a */
    public static dko m9318a(IBinder iBinder) {
        dkp dkpVar;
        if (iBinder == null) {
            dkpVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.clearcut.IClearcut");
            dkpVar = queryLocalInterface instanceof dko ? (dko) queryLocalInterface : new dkp(iBinder);
        }
        return dkpVar;
    }
}
