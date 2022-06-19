package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.gh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gh.class */
public abstract class AbstractBinderC3165gh extends dkl implements AbstractC3166gi {
    public AbstractBinderC3165gh() {
        super("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.gi] */
    /* renamed from: a */
    public static AbstractC3166gi m7815a(IBinder iBinder) {
        C3168gk c3168gk;
        if (iBinder == null) {
            c3168gk = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
            c3168gk = queryLocalInterface instanceof AbstractC3166gi ? (AbstractC3166gi) queryLocalInterface : new C3168gk(iBinder);
        }
        return c3168gk;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z = true;
        if (i == 1) {
            mo7814a(parcel.createTypedArrayList(C3159gb.CREATOR));
            parcel2.writeNoException();
        } else {
            z = false;
        }
        return z;
    }
}
