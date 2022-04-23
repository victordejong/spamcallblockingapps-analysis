package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauc.class */
public abstract class zzauc extends zzgt implements zzaud {
    public zzauc() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    /* renamed from: a */
    public static zzaud m16341a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
        return queryLocalInterface instanceof zzaud ? (zzaud) queryLocalInterface : new zzauf(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo13467a((zzaum) zzgw.m12080a(parcel, zzaum.CREATOR));
            parcel2.writeNoException();
            return true;
        } else if (i != 2) {
            zzaug zzaugVar = null;
            zzaub zzaubVar = null;
            if (i == 3) {
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    zzaugVar = queryLocalInterface instanceof zzaug ? (zzaug) queryLocalInterface : new zzaui(readStrongBinder);
                }
                mo13468a(zzaugVar);
                parcel2.writeNoException();
                return true;
            } else if (i != 34) {
                switch (i) {
                    case 5:
                        boolean isLoaded = isLoaded();
                        parcel2.writeNoException();
                        zzgw.m12078a(parcel2, isLoaded);
                        return true;
                    case 6:
                        pause();
                        parcel2.writeNoException();
                        return true;
                    case 7:
                        resume();
                        parcel2.writeNoException();
                        return true;
                    case 8:
                        destroy();
                        parcel2.writeNoException();
                        return true;
                    case 9:
                        mo13474E(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 10:
                        mo13458z(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 11:
                        mo13472O(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 12:
                        String a = mo13470a();
                        parcel2.writeNoException();
                        parcel2.writeString(a);
                        return true;
                    case 13:
                        mo13462d(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 14:
                        mo13464a(zzxi.m11143a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 15:
                        Bundle G = mo13473G();
                        parcel2.writeNoException();
                        zzgw.m12076b(parcel2, G);
                        return true;
                    case 16:
                        IBinder readStrongBinder2 = parcel.readStrongBinder();
                        if (readStrongBinder2 != null) {
                            IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                            zzaubVar = queryLocalInterface2 instanceof zzaub ? (zzaub) queryLocalInterface2 : new zzaua(readStrongBinder2);
                        }
                        mo13469a(zzaubVar);
                        parcel2.writeNoException();
                        return true;
                    case 17:
                        mo13460u(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 18:
                        mo13475C(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 19:
                        mo13476A(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 20:
                        boolean v0 = mo13459v0();
                        parcel2.writeNoException();
                        zzgw.m12078a(parcel2, v0);
                        return true;
                    case 21:
                        zzyn l = mo13461l();
                        parcel2.writeNoException();
                        zzgw.m12081a(parcel2, l);
                        return true;
                    default:
                        return false;
                }
            } else {
                mo13463a(zzgw.m12082a(parcel));
                parcel2.writeNoException();
                return true;
            }
        } else {
            show();
            parcel2.writeNoException();
            return true;
        }
    }
}
