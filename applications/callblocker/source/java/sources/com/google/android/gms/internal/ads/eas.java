package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eas.class */
public abstract class eas extends dkl implements eap {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.eap] */
    /* renamed from: a */
    public static eap m8097a(IBinder iBinder) {
        ear earVar;
        if (iBinder == null) {
            earVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
            earVar = queryLocalInterface instanceof eap ? (eap) queryLocalInterface : new ear(iBinder);
        }
        return earVar;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z = true;
        if (i == 1) {
            mo8098a();
            parcel2.writeNoException();
        } else {
            z = false;
        }
        return z;
    }
}
