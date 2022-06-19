package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
/* renamed from: com.google.android.gms.internal.ads.pt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pt.class */
public abstract class AbstractBinderC3420pt extends dkl implements AbstractC3417pq {
    public AbstractBinderC3420pt() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                mo7332a((ParcelFileDescriptor) dkk.m9323a(parcel, ParcelFileDescriptor.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo7331a((C3598wi) dkk.m9323a(parcel, C3598wi.CREATOR));
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
