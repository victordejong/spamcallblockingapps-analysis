package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cln.class */
public abstract class cln extends dkl implements clo {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.clo] */
    /* renamed from: a */
    public static clo m11094a(IBinder iBinder) {
        clp clpVar;
        if (iBinder == null) {
            clpVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.omid.IOmid");
            clpVar = queryLocalInterface instanceof clo ? (clo) queryLocalInterface : new clp(iBinder);
        }
        return clpVar;
    }
}
