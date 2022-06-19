package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.mr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mr.class */
public abstract class AbstractBinderC3337mr extends dkl implements AbstractC3334mo {
    public AbstractBinderC3337mr() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                mo7459a(parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo7458b(parcel.readString());
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
