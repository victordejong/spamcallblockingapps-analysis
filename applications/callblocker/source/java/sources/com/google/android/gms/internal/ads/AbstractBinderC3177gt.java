package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.gt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gt.class */
public abstract class AbstractBinderC3177gt extends dkl implements AbstractC3178gu {
    public AbstractBinderC3177gt() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                mo7808a();
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo7807a(parcel.readInt());
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
