package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.dn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dn.class */
public abstract class AbstractBinderC3006dn extends dkl implements AbstractC3007do {
    public AbstractBinderC3006dn() {
        super("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.do] */
    /* renamed from: a */
    public static AbstractC3007do m9073a(IBinder iBinder) {
        C3011dq c3011dq;
        if (iBinder == null) {
            c3011dq = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
            c3011dq = queryLocalInterface instanceof AbstractC3007do ? (AbstractC3007do) queryLocalInterface : new C3011dq(iBinder);
        }
        return c3011dq;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        C3017dw c3017dw;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c3017dw = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
                c3017dw = queryLocalInterface instanceof AbstractC3015du ? (AbstractC3015du) queryLocalInterface : new C3017dw(readStrongBinder);
            }
            mo7861a(c3017dw);
            parcel2.writeNoException();
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
