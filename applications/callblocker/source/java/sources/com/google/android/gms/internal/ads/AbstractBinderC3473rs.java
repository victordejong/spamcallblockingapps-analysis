package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.rs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rs.class */
public abstract class AbstractBinderC3473rs extends dkl implements AbstractC3474rt {
    public AbstractBinderC3473rs() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.rt] */
    /* renamed from: a */
    public static AbstractC3474rt m7218a(IBinder iBinder) {
        C3476rv c3476rv;
        if (iBinder == null) {
            c3476rv = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            c3476rv = queryLocalInterface instanceof AbstractC3474rt ? (AbstractC3474rt) queryLocalInterface : new C3476rv(iBinder);
        }
        return c3476rv;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                String a = mo7195a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                z = true;
                break;
            case 2:
                int b = mo7194b();
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
