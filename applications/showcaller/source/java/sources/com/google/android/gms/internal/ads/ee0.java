package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ee0.class */
public abstract class ee0 extends BinderC6649k2 implements fe0 {
    public ee0() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    /* renamed from: E6 */
    public static fe0 m15517E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        return queryLocalInterface instanceof fe0 ? (fe0) queryLocalInterface : new de0(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        ke0 ke0Var;
        ge0 ge0Var;
        oe0 oe0Var;
        ke0 ke0Var2;
        switch (i) {
            case 1:
                zzbdg zzbdgVar = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    ke0Var = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    ke0Var = queryLocalInterface instanceof me0 ? (me0) queryLocalInterface : new ke0(readStrongBinder);
                }
                mo10008L3(zzbdgVar, ke0Var);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    ge0Var = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    ge0Var = queryLocalInterface2 instanceof ie0 ? (ie0) queryLocalInterface2 : new ge0(readStrongBinder2);
                }
                mo10003f5(ge0Var);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zzi = zzi();
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, zzi);
                return true;
            case 4:
                String mo10002g = mo10002g();
                parcel2.writeNoException();
                parcel2.writeString(mo10002g);
                return true;
            case 5:
                mo10005U(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    oe0Var = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    oe0Var = queryLocalInterface3 instanceof oe0 ? (oe0) queryLocalInterface3 : new oe0(readStrongBinder3);
                }
                mo10001h2(oe0Var);
                parcel2.writeNoException();
                return true;
            case 7:
                mo10007M3((zzcdg) C6686l2.m13744c(parcel, zzcdg.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                mo10006T1(AbstractBinderC7194yt.m8687E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle zzg = zzg();
                parcel2.writeNoException();
                C6686l2.m13742e(parcel2, zzg);
                return true;
            case 10:
                mo10004V0(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), C6686l2.m13746a(parcel));
                parcel2.writeNoException();
                return true;
            case 11:
                ce0 mo10000i = mo10000i();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo10000i);
                return true;
            case 12:
                AbstractC6491fu mo9999j = mo9999j();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo9999j);
                return true;
            case 13:
                mo9998t5(AbstractBinderC6342bu.m16206E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 14:
                zzbdg zzbdgVar2 = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    ke0Var2 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    ke0Var2 = queryLocalInterface4 instanceof me0 ? (me0) queryLocalInterface4 : new ke0(readStrongBinder4);
                }
                mo10009I4(zzbdgVar2, ke0Var2);
                parcel2.writeNoException();
                return true;
            case 15:
                mo10013E0(C6686l2.m13746a(parcel));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
