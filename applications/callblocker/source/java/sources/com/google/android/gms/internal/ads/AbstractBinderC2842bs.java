package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.bs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bs.class */
public abstract class AbstractBinderC2842bs extends dkl implements AbstractC2843bt {
    public AbstractBinderC2842bs() {
        super("com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.bt] */
    /* renamed from: a */
    public static AbstractC2843bt m11687a(IBinder iBinder) {
        C2846bv c2846bv;
        if (iBinder == null) {
            c2846bv = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            c2846bv = queryLocalInterface instanceof AbstractC2843bt ? (AbstractC2843bt) queryLocalInterface : new C2846bv(iBinder);
        }
        return c2846bv;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        C3000dk c3000dk;
        boolean z;
        switch (i) {
            case 2:
                float a = mo11603a();
                parcel2.writeNoException();
                parcel2.writeFloat(a);
                z = true;
                break;
            case 3:
                mo11602a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 4:
                AbstractC2731a b = mo11600b();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, b);
                z = true;
                break;
            case 5:
                float c = mo11599c();
                parcel2.writeNoException();
                parcel2.writeFloat(c);
                z = true;
                break;
            case 6:
                float d = mo11598d();
                parcel2.writeNoException();
                parcel2.writeFloat(d);
                z = true;
                break;
            case 7:
                eba e = mo11597e();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, e);
                z = true;
                break;
            case 8:
                boolean f = mo11596f();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, f);
                z = true;
                break;
            case 9:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c3000dk = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener");
                    c3000dk = queryLocalInterface instanceof AbstractC2997dh ? (AbstractC2997dh) queryLocalInterface : new C3000dk(readStrongBinder);
                }
                mo11601a(c3000dk);
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
