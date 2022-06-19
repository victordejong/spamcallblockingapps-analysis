package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.dm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dm.class */
public abstract class AbstractBinderC3004dm extends dkl implements AbstractC2999dj {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.dj] */
    /* renamed from: a */
    public static AbstractC2999dj m9178a(IBinder iBinder) {
        C3003dl c3003dl;
        if (iBinder == null) {
            c3003dl = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
            c3003dl = queryLocalInterface instanceof AbstractC2999dj ? (AbstractC2999dj) queryLocalInterface : new C3003dl(iBinder);
        }
        return c3003dl;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z = true;
        if (i == 1) {
            mo9246a(dzm.m8131a(parcel.readStrongBinder()), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
            parcel2.writeNoException();
        } else {
            z = false;
        }
        return z;
    }
}
