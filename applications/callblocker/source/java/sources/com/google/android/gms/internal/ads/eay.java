package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eay.class */
public abstract class eay extends dkl implements eav {
    public eay() {
        super("com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.eav] */
    /* renamed from: a */
    public static eav m8093a(IBinder iBinder) {
        eax eaxVar;
        if (iBinder == null) {
            eaxVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            eaxVar = queryLocalInterface instanceof eav ? (eav) queryLocalInterface : new eax(iBinder);
        }
        return eaxVar;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                String a = mo8095a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                z = true;
                break;
            case 2:
                String b = mo8094b();
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
