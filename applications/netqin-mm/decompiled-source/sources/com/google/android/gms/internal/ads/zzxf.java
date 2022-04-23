package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxf.class */
public abstract class zzxf extends zzgt implements zzxc {
    public zzxf() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    /* renamed from: a */
    public static zzxc m11145a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        return queryLocalInterface instanceof zzxc ? (zzxc) queryLocalInterface : new zzxe(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzxj zzxjVar = null;
        zzxq zzxqVar = null;
        zzwo zzwoVar = null;
        zzxk zzxkVar = null;
        zzwt zzwtVar = null;
        zzyi zzyiVar = null;
        switch (i) {
            case 1:
                IObjectWrapper Q0 = mo10968Q0();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, Q0);
                return true;
            case 2:
                destroy();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean b = mo10948b();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, b);
                return true;
            case 4:
                boolean b2 = mo10947b((zzvg) zzgw.m12080a(parcel, zzvg.CREATOR));
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, b2);
                return true;
            case 5:
                pause();
                parcel2.writeNoException();
                return true;
            case 6:
                resume();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzwtVar = queryLocalInterface instanceof zzwt ? (zzwt) queryLocalInterface : new zzwv(readStrongBinder);
                }
                mo10946b(zzwtVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    zzxkVar = queryLocalInterface2 instanceof zzxk ? (zzxk) queryLocalInterface2 : new zzxm(readStrongBinder2);
                }
                mo10954a(zzxkVar);
                parcel2.writeNoException();
                return true;
            case 9:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 10:
                mo10938x1();
                parcel2.writeNoException();
                return true;
            case 11:
                mo10967V1();
                parcel2.writeNoException();
                return true;
            case 12:
                zzvn f2 = mo10943f2();
                parcel2.writeNoException();
                zzgw.m12076b(parcel2, f2);
                return true;
            case 13:
                mo10958a((zzvn) zzgw.m12080a(parcel, zzvn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                mo10962a(zzarl.m16396a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                mo10961a(zzarr.m16394a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String a = mo10965a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case 19:
                mo10963a(zzabx.m16875a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    zzwoVar = queryLocalInterface3 instanceof zzwo ? (zzwo) queryLocalInterface3 : new zzwq(readStrongBinder3);
                }
                mo10956a(zzwoVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzxqVar = queryLocalInterface4 instanceof zzxq ? (zzxq) queryLocalInterface4 : new zzxt(readStrongBinder4);
                }
                mo10953a(zzxqVar);
                parcel2.writeNoException();
                return true;
            case 22:
                mo10944f(zzgw.m12082a(parcel));
                parcel2.writeNoException();
                return true;
            case 23:
                boolean n = mo10939n();
                parcel2.writeNoException();
                zzgw.m12078a(parcel2, n);
                return true;
            case 24:
                mo10960a(zzauj.m16339a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 25:
                mo10945d(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 26:
                zzyo videoController = getVideoController();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, videoController);
                return true;
            case 29:
                mo10964a((zzaak) zzgw.m12080a(parcel, zzaak.CREATOR));
                parcel2.writeNoException();
                return true;
            case 30:
                mo10951a((zzyu) zzgw.m12080a(parcel, zzyu.CREATOR));
                parcel2.writeNoException();
                return true;
            case 31:
                String adUnitId = getAdUnitId();
                parcel2.writeNoException();
                parcel2.writeString(adUnitId);
                return true;
            case 32:
                zzxk D1 = mo10970D1();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, D1);
                return true;
            case 33:
                zzwt X0 = mo10966X0();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, X0);
                return true;
            case 34:
                mo10949a(zzgw.m12082a(parcel));
                parcel2.writeNoException();
                return true;
            case 35:
                String k0 = mo10941k0();
                parcel2.writeNoException();
                parcel2.writeString(k0);
                return true;
            case 36:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    zzxjVar = queryLocalInterface5 instanceof zzxj ? (zzxj) queryLocalInterface5 : new zzxl(readStrongBinder5);
                }
                mo10955a(zzxjVar);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle G = mo10969G();
                parcel2.writeNoException();
                zzgw.m12076b(parcel2, G);
                return true;
            case 38:
                mo10942i(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 39:
                mo10957a((zzvs) zzgw.m12080a(parcel, zzvs.CREATOR));
                parcel2.writeNoException();
                return true;
            case 40:
                mo10959a(zzsk.m11470a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 41:
                zzyn l = mo10940l();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, l);
                return true;
            case 42:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    zzyiVar = queryLocalInterface6 instanceof zzyi ? (zzyi) queryLocalInterface6 : new zzyk(readStrongBinder6);
                }
                mo10952a(zzyiVar);
                parcel2.writeNoException();
                return true;
        }
    }
}
