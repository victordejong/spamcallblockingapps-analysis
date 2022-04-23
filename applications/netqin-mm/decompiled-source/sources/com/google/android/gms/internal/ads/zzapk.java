package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapk.class */
public abstract class zzapk extends zzgt implements zzaph {
    public zzapk() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    /* renamed from: a */
    public static zzaph m16486a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        return queryLocalInterface instanceof zzaph ? (zzaph) queryLocalInterface : new zzapj(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzapm zzapmVar;
        zzapb zzapbVar = null;
        zzapg zzapgVar = null;
        zzapa zzapaVar = null;
        zzaov zzaovVar = null;
        zzapg zzapgVar2 = null;
        if (i == 1) {
            IObjectWrapper a = IObjectWrapper.Stub.m17022a(parcel.readStrongBinder());
            String readString = parcel.readString();
            Bundle bundle = (Bundle) zzgw.m12080a(parcel, Bundle.CREATOR);
            Bundle bundle2 = (Bundle) zzgw.m12080a(parcel, Bundle.CREATOR);
            zzvn zzvnVar = (zzvn) zzgw.m12080a(parcel, zzvn.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzapmVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                zzapmVar = queryLocalInterface instanceof zzapm ? (zzapm) queryLocalInterface : new zzapo(readStrongBinder);
            }
            mo16481a(a, readString, bundle, bundle2, zzvnVar, zzapmVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            zzapv d0 = mo16468d0();
            parcel2.writeNoException();
            zzgw.m12076b(parcel2, d0);
            return true;
        } else if (i == 3) {
            zzapv V = mo16482V();
            parcel2.writeNoException();
            zzgw.m12076b(parcel2, V);
            return true;
        } else if (i == 5) {
            zzyo videoController = getVideoController();
            parcel2.writeNoException();
            zzgw.m12081a(parcel2, videoController);
            return true;
        } else if (i == 10) {
            mo16467n(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i != 11) {
            switch (i) {
                case 13:
                    String readString2 = parcel.readString();
                    String readString3 = parcel.readString();
                    zzvg zzvgVar = (zzvg) zzgw.m12080a(parcel, zzvg.CREATOR);
                    IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(parcel.readStrongBinder());
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 != null) {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        zzaovVar = queryLocalInterface2 instanceof zzaov ? (zzaov) queryLocalInterface2 : new zzaox(readStrongBinder2);
                    }
                    mo16476a(readString2, readString3, zzvgVar, a2, zzaovVar, zzank.m16636a(parcel.readStrongBinder()), (zzvn) zzgw.m12080a(parcel, zzvn.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    String readString4 = parcel.readString();
                    String readString5 = parcel.readString();
                    zzvg zzvgVar2 = (zzvg) zzgw.m12080a(parcel, zzvg.CREATOR);
                    IObjectWrapper a3 = IObjectWrapper.Stub.m17022a(parcel.readStrongBinder());
                    IBinder readStrongBinder3 = parcel.readStrongBinder();
                    if (readStrongBinder3 != null) {
                        IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                        zzapaVar = queryLocalInterface3 instanceof zzapa ? (zzapa) queryLocalInterface3 : new zzapc(readStrongBinder3);
                    }
                    mo16475a(readString4, readString5, zzvgVar2, a3, zzapaVar, zzank.m16636a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    boolean p = mo16466p(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    zzgw.m12078a(parcel2, p);
                    return true;
                case 16:
                    String readString6 = parcel.readString();
                    String readString7 = parcel.readString();
                    zzvg zzvgVar3 = (zzvg) zzgw.m12080a(parcel, zzvg.CREATOR);
                    IObjectWrapper a4 = IObjectWrapper.Stub.m17022a(parcel.readStrongBinder());
                    IBinder readStrongBinder4 = parcel.readStrongBinder();
                    if (readStrongBinder4 != null) {
                        IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzapgVar = queryLocalInterface4 instanceof zzapg ? (zzapg) queryLocalInterface4 : new zzapi(readStrongBinder4);
                    }
                    mo16473a(readString6, readString7, zzvgVar3, a4, zzapgVar, zzank.m16636a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    boolean L = mo16483L(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    zzgw.m12078a(parcel2, L);
                    return true;
                case 18:
                    String readString8 = parcel.readString();
                    String readString9 = parcel.readString();
                    zzvg zzvgVar4 = (zzvg) zzgw.m12080a(parcel, zzvg.CREATOR);
                    IObjectWrapper a5 = IObjectWrapper.Stub.m17022a(parcel.readStrongBinder());
                    IBinder readStrongBinder5 = parcel.readStrongBinder();
                    if (readStrongBinder5 != null) {
                        IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        zzapbVar = queryLocalInterface5 instanceof zzapb ? (zzapb) queryLocalInterface5 : new zzapd(readStrongBinder5);
                    }
                    mo16474a(readString8, readString9, zzvgVar4, a5, zzapbVar, zzank.m16636a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    mo16465t(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    String readString10 = parcel.readString();
                    String readString11 = parcel.readString();
                    zzvg zzvgVar5 = (zzvg) zzgw.m12080a(parcel, zzvg.CREATOR);
                    IObjectWrapper a6 = IObjectWrapper.Stub.m17022a(parcel.readStrongBinder());
                    IBinder readStrongBinder6 = parcel.readStrongBinder();
                    if (readStrongBinder6 != null) {
                        IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzapgVar2 = queryLocalInterface6 instanceof zzapg ? (zzapg) queryLocalInterface6 : new zzapi(readStrongBinder6);
                    }
                    mo16471b(readString10, readString11, zzvgVar5, a6, zzapgVar2, zzank.m16636a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return false;
            }
        } else {
            mo16472a(parcel.createStringArray(), (Bundle[]) parcel.createTypedArray(Bundle.CREATOR));
            parcel2.writeNoException();
            return true;
        }
    }
}
