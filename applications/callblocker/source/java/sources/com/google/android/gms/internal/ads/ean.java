package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ean.class */
public abstract class ean extends dkl implements eal {
    public ean() {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.eal] */
    /* renamed from: a */
    public static eal m8100a(IBinder iBinder) {
        eam eamVar;
        if (iBinder == null) {
            eamVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
            eamVar = queryLocalInterface instanceof eal ? (eal) queryLocalInterface : new eam(iBinder);
        }
        return eamVar;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                String a = mo7990a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                z = true;
                break;
            case 2:
                String b = mo7989b();
                parcel2.writeNoException();
                parcel2.writeString(b);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
