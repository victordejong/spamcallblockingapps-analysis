package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.ads.jl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jl.class */
public abstract class AbstractBinderC6631jl extends BinderC6649k2 implements AbstractC6668kl {
    public AbstractBinderC6631jl() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        C6853pl c6853pl;
        C6890ql c6890ql;
        switch (i) {
            case 2:
                AbstractC7008ts mo10483a = mo10483a();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo10483a);
                return true;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c6853pl = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
                    c6853pl = queryLocalInterface instanceof C6853pl ? (C6853pl) queryLocalInterface : new C6853pl(readStrongBinder);
                }
                mo10484I1(c6853pl);
                parcel2.writeNoException();
                return true;
            case 4:
                AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    c6890ql = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    c6890ql = queryLocalInterface2 instanceof AbstractC6964sl ? (AbstractC6964sl) queryLocalInterface2 : new C6890ql(readStrongBinder2);
                }
                mo10481j1(m16746D0, c6890ql);
                parcel2.writeNoException();
                return true;
            case 5:
                AbstractC6491fu zzg = zzg();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, zzg);
                return true;
            case 6:
                mo10480y0(C6686l2.m13746a(parcel));
                parcel2.writeNoException();
                return true;
            case 7:
                mo10482f3(AbstractBinderC6342bu.m16206E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
