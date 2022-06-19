package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.bx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bx.class */
public abstract class AbstractBinderC2848bx extends dkl implements AbstractC2844bu {
    public AbstractBinderC2848bx() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.bu] */
    /* renamed from: a */
    public static AbstractC2844bu m11567a(IBinder iBinder) {
        C2847bw c2847bw;
        if (iBinder == null) {
            c2847bw = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            c2847bw = queryLocalInterface instanceof AbstractC2844bu ? (AbstractC2844bu) queryLocalInterface : new C2847bw(iBinder);
        }
        return c2847bw;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                AbstractC2731a a = mo11584a();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, a);
                z = true;
                break;
            case 2:
                Uri b = mo11583b();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, b);
                z = true;
                break;
            case 3:
                double c = mo11582c();
                parcel2.writeNoException();
                parcel2.writeDouble(c);
                z = true;
                break;
            case 4:
                int d = mo11581d();
                parcel2.writeNoException();
                parcel2.writeInt(d);
                z = true;
                break;
            case 5:
                int e = mo11580e();
                parcel2.writeNoException();
                parcel2.writeInt(e);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
