package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.qu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qu.class */
public abstract class AbstractBinderC3448qu extends dkl implements AbstractC3445qr {
    public AbstractBinderC3448qu() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                String a = mo7292a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                z = true;
                break;
            case 2:
                int b = mo7291b();
                parcel2.writeNoException();
                parcel2.writeInt(b);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
