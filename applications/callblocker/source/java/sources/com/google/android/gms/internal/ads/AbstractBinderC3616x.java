package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.x */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/x.class */
public abstract class AbstractBinderC3616x extends dkl implements AbstractC3535u {
    public AbstractBinderC3616x() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.u] */
    /* renamed from: a */
    public static AbstractC3535u m6843a(IBinder iBinder) {
        C3589w c3589w;
        if (iBinder == null) {
            c3589w = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
            c3589w = queryLocalInterface instanceof AbstractC3535u ? (AbstractC3535u) queryLocalInterface : new C3589w(iBinder);
        }
        return c3589w;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        C3562v c3562v;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c3562v = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
                c3562v = queryLocalInterface instanceof AbstractC3508t ? (AbstractC3508t) queryLocalInterface : new C3562v(readStrongBinder);
            }
            mo6717a(c3562v);
            parcel2.writeNoException();
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
