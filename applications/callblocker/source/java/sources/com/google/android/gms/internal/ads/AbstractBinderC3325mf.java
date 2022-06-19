package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.mf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mf.class */
public abstract class AbstractBinderC3325mf extends dkl implements AbstractC3322mc {
    public AbstractBinderC3325mf() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 2:
                mo7466a();
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                mo7465a(parcel.readString());
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
