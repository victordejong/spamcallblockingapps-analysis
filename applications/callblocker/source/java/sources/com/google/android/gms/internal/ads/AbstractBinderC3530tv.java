package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.tv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tv.class */
public abstract class AbstractBinderC3530tv extends dkl implements AbstractC3528tt {
    public AbstractBinderC3530tv() {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        C3529tu c3529tu;
        switch (i) {
            case 1:
                AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder());
                C3531tw c3531tw = (C3531tw) dkk.m9323a(parcel, C3531tw.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c3529tu = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
                    c3529tu = queryLocalInterface instanceof AbstractC3527ts ? (AbstractC3527ts) queryLocalInterface : new C3529tu(readStrongBinder);
                }
                mo7126a(m13796a, c3531tw, c3529tu);
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo7128a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                AbstractC2731a a = mo7127a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dkk.m9324a(parcel2, a);
                z = true;
                break;
            case 4:
                AbstractC2731a b = mo7123b(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dkk.m9324a(parcel2, b);
                z = true;
                break;
            case 5:
                mo7124a(parcel.createTypedArrayList(Uri.CREATOR), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), AbstractBinderC3393ot.m7354a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 6:
                mo7122b(parcel.createTypedArrayList(Uri.CREATOR), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), AbstractBinderC3393ot.m7354a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                mo7125a((C3394ou) dkk.m9323a(parcel, C3394ou.CREATOR));
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
