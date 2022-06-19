package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.cb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cb.class */
public abstract class AbstractBinderC2853cb extends dkl implements AbstractC2849by {
    public AbstractBinderC2853cb() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.by] */
    /* renamed from: a */
    public static AbstractC2849by m11501a(IBinder iBinder) {
        C2852ca c2852ca;
        if (iBinder == null) {
            c2852ca = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
            c2852ca = queryLocalInterface instanceof AbstractC2849by ? (AbstractC2849by) queryLocalInterface : new C2852ca(iBinder);
        }
        return c2852ca;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        C2846bv c2846bv;
        boolean z;
        switch (i) {
            case 1:
                mo11518a(parcel.readString(), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                AbstractC2731a a = mo11519a(parcel.readString());
                parcel2.writeNoException();
                dkk.m9324a(parcel2, a);
                z = true;
                break;
            case 3:
                mo11522a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 4:
                mo11523a();
                parcel2.writeNoException();
                z = true;
                break;
            case 5:
                mo11521a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                z = true;
                break;
            case 6:
                mo11517b(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                mo11516c(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c2846bv = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
                    c2846bv = queryLocalInterface instanceof AbstractC2843bt ? (AbstractC2843bt) queryLocalInterface : new C2846bv(readStrongBinder);
                }
                mo11520a(c2846bv);
                parcel2.writeNoException();
                z = true;
                break;
            case 9:
                mo11515d(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
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
