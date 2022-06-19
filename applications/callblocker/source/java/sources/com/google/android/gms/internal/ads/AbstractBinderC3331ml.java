package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.ml */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ml.class */
public abstract class AbstractBinderC3331ml extends dkl implements AbstractC3328mi {
    public AbstractBinderC3331ml() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 2:
                mo7462a();
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                mo7461a(parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
