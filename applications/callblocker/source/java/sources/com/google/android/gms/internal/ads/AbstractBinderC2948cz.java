package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.cz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cz.class */
public abstract class AbstractBinderC2948cz extends dkl implements AbstractC2950da {
    public AbstractBinderC2948cz() {
        super("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.da] */
    /* renamed from: a */
    public static AbstractC2950da m10314a(IBinder iBinder) {
        C2953dc c2953dc;
        if (iBinder == null) {
            c2953dc = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
            c2953dc = queryLocalInterface instanceof AbstractC2950da ? (AbstractC2950da) queryLocalInterface : new C2953dc(iBinder);
        }
        return c2953dc;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        C2873cp c2873cp;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c2873cp = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                c2873cp = queryLocalInterface instanceof AbstractC2869cn ? (AbstractC2869cn) queryLocalInterface : new C2873cp(readStrongBinder);
            }
            mo7883a(c2873cp);
            parcel2.writeNoException();
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
