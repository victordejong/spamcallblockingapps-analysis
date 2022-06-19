package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dzv.class */
public abstract class dzv extends dkl implements dzw {
    public dzv() {
        super("com.google.android.gms.ads.internal.client.IAppEventListener");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.dzw] */
    /* renamed from: a */
    public static dzw m8126a(IBinder iBinder) {
        dzy dzyVar;
        if (iBinder == null) {
            dzyVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            dzyVar = queryLocalInterface instanceof dzw ? (dzw) queryLocalInterface : new dzy(iBinder);
        }
        return dzyVar;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z = true;
        if (i == 1) {
            mo8125a(parcel.readString(), parcel.readString());
            parcel2.writeNoException();
        } else {
            z = false;
        }
        return z;
    }
}
