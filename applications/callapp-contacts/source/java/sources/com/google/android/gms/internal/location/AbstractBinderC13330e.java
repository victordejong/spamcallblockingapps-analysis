package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.location.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/e.class */
public abstract class AbstractBinderC13330e extends BinderC13342q implements AbstractC13331f {
    public AbstractBinderC13330e() {
        super("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    @Override // com.google.android.gms.internal.location.BinderC13342q
    /* renamed from: a */
    protected final boolean mo12262a(int i, Parcel parcel) throws RemoteException {
        if (i == 1) {
            mo12268a((zzaa) C13321ai.m13337a(parcel, zzaa.CREATOR));
            return true;
        } else if (i != 2) {
            return false;
        } else {
            mo12267b();
            return true;
        }
    }
}
