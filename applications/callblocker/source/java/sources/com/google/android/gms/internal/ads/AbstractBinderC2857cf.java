package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.cf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cf.class */
public abstract class AbstractBinderC2857cf extends dkl implements AbstractC2858cg {
    public AbstractBinderC2857cf() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.cg] */
    /* renamed from: a */
    public static AbstractC2858cg m11428a(IBinder iBinder) {
        C2860ci c2860ci;
        if (iBinder == null) {
            c2860ci = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
            c2860ci = queryLocalInterface instanceof AbstractC2858cg ? (AbstractC2858cg) queryLocalInterface : new C2860ci(iBinder);
        }
        return c2860ci;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                mo11261a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo11262a();
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                mo11260b(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
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
