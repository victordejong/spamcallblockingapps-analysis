package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dzu.class */
public abstract class dzu extends dkl implements dzr {
    public dzu() {
        super("com.google.android.gms.ads.internal.client.IAdMetadataListener");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.dzr] */
    /* renamed from: a */
    public static dzr m8127a(IBinder iBinder) {
        dzt dztVar;
        if (iBinder == null) {
            dztVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
            dztVar = queryLocalInterface instanceof dzr ? (dzr) queryLocalInterface : new dzt(iBinder);
        }
        return dztVar;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z = true;
        if (i == 1) {
            mo8128a();
            parcel2.writeNoException();
        } else {
            z = false;
        }
        return z;
    }
}
