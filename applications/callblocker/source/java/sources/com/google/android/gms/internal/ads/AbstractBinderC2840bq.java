package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.bq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bq.class */
public abstract class AbstractBinderC2840bq extends dkl implements AbstractC2837bn {
    public AbstractBinderC2840bq() {
        super("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.bn] */
    /* renamed from: a */
    public static AbstractC2837bn m11718a(IBinder iBinder) {
        C2839bp c2839bp;
        if (iBinder == null) {
            c2839bp = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            c2839bp = queryLocalInterface instanceof AbstractC2837bn ? (AbstractC2837bn) queryLocalInterface : new C2839bp(iBinder);
        }
        return c2839bp;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 2:
                String a = mo11738a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                z = true;
                break;
            case 3:
                List<AbstractC2844bu> b = mo11737b();
                parcel2.writeNoException();
                parcel2.writeList(b);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
