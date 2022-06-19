package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ebe.class */
public abstract class ebe extends dkl implements ebb {
    public ebe() {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                mo7909a();
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo7907b();
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                mo7906c();
                parcel2.writeNoException();
                z = true;
                break;
            case 4:
                mo7905d();
                parcel2.writeNoException();
                z = true;
                break;
            case 5:
                mo7908a(dkk.m9325a(parcel));
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
