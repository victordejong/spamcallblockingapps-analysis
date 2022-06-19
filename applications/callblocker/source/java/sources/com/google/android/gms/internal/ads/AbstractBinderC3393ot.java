package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.ot */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ot.class */
public abstract class AbstractBinderC3393ot extends dkl implements AbstractC3389op {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.op] */
    /* renamed from: a */
    public static AbstractC3389op m7354a(IBinder iBinder) {
        C3391or c3391or;
        if (iBinder == null) {
            c3391or = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
            c3391or = queryLocalInterface instanceof AbstractC3389op ? (AbstractC3389op) queryLocalInterface : new C3391or(iBinder);
        }
        return c3391or;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                mo7356a(parcel.createTypedArrayList(Uri.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo7357a(parcel.readString());
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
