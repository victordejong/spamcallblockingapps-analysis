package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.xr */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xr.class */
public abstract class AbstractBinderC13051xr extends dvd implements AbstractC13048xo {
    public AbstractBinderC13051xr() {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    /* renamed from: a */
    public static AbstractC13048xo m13992a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
        return queryLocalInterface instanceof AbstractC13048xo ? (AbstractC13048xo) queryLocalInterface : new C13050xq(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C13049xp c13049xp;
        switch (i) {
            case 1:
                AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                zzazi zzaziVar = (zzazi) dvc.m15675a(parcel, zzazi.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c13049xp = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
                    c13049xp = queryLocalInterface instanceof AbstractC13047xn ? (AbstractC13047xn) queryLocalInterface : new C13049xp(readStrongBinder);
                }
                mo13997a(m18981a, zzaziVar, c13049xp);
                parcel2.writeNoException();
                return true;
            case 2:
                mo13999a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 3:
                AbstractC12126b a = mo13998a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dvc.m15676a(parcel2, a);
                return true;
            case 4:
                AbstractC12126b b = mo13994b(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dvc.m15676a(parcel2, b);
                return true;
            case 5:
                mo13995a(parcel.createTypedArrayList(Uri.CREATOR), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractBinderC12888rs.m14207a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                mo13993b(parcel.createTypedArrayList(Uri.CREATOR), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractBinderC12888rs.m14207a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                mo13996a((zzatj) dvc.m15675a(parcel, zzatj.CREATOR));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
