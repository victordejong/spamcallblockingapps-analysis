package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.mg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mg.class */
public abstract class AbstractBinderC3326mg extends dkl implements AbstractC3327mh {
    public AbstractBinderC3326mg() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                mo7464a(AbstractBinderC3300lh.m7659a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo7463a(parcel.readString());
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
