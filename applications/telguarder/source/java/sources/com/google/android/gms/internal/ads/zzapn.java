package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzapn.class */
public abstract class zzapn extends zzgy implements zzapk {
    public zzapn() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static zzapk zzaf(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        return queryLocalInterface instanceof zzapk ? (zzapk) queryLocalInterface : new zzapm(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzapr zzaprVar;
        zzapa zzapaVar;
        zzapf zzapfVar;
        zzapl zzaplVar;
        zzapg zzapgVar;
        zzapl zzaplVar2 = null;
        if (i == 1) {
            IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            String readString = parcel.readString();
            Bundle bundle = (Bundle) zzgx.zza(parcel, Bundle.CREATOR);
            Bundle bundle2 = (Bundle) zzgx.zza(parcel, Bundle.CREATOR);
            zzvs zzvsVar = (zzvs) zzgx.zza(parcel, zzvs.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzaprVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                zzaprVar = queryLocalInterface instanceof zzapp ? (zzapp) queryLocalInterface : new zzapr(readStrongBinder);
            }
            zza(asInterface, readString, bundle, bundle2, zzvsVar, zzaprVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            zzapy zzvc = zzvc();
            parcel2.writeNoException();
            zzgx.zzb(parcel2, zzvc);
            return true;
        } else if (i == 3) {
            zzapy zzvd = zzvd();
            parcel2.writeNoException();
            zzgx.zzb(parcel2, zzvd);
            return true;
        } else if (i == 5) {
            zzzc videoController = getVideoController();
            parcel2.writeNoException();
            zzgx.zza(parcel2, videoController);
            return true;
        } else if (i == 10) {
            zzy(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i == 11) {
            zza(parcel.createStringArray(), (Bundle[]) parcel.createTypedArray(Bundle.CREATOR));
            parcel2.writeNoException();
            return true;
        } else {
            switch (i) {
                case 13:
                    String readString2 = parcel.readString();
                    String readString3 = parcel.readString();
                    zzvl zzvlVar = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                    IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 == null) {
                        zzapaVar = null;
                    } else {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        zzapaVar = queryLocalInterface2 instanceof zzaoy ? (zzaoy) queryLocalInterface2 : new zzapa(readStrongBinder2);
                    }
                    zza(readString2, readString3, zzvlVar, asInterface2, zzapaVar, zzann.zzad(parcel.readStrongBinder()), (zzvs) zzgx.zza(parcel, zzvs.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    String readString4 = parcel.readString();
                    String readString5 = parcel.readString();
                    zzvl zzvlVar2 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                    IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder3 = parcel.readStrongBinder();
                    if (readStrongBinder3 == null) {
                        zzapfVar = null;
                    } else {
                        IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                        zzapfVar = queryLocalInterface3 instanceof zzapd ? (zzapd) queryLocalInterface3 : new zzapf(readStrongBinder3);
                    }
                    zza(readString4, readString5, zzvlVar2, asInterface3, zzapfVar, zzann.zzad(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    boolean zzz = zzz(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    zzgx.writeBoolean(parcel2, zzz);
                    return true;
                case 16:
                    String readString6 = parcel.readString();
                    String readString7 = parcel.readString();
                    zzvl zzvlVar3 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                    IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder4 = parcel.readStrongBinder();
                    if (readStrongBinder4 == null) {
                        zzaplVar = null;
                    } else {
                        IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzaplVar = queryLocalInterface4 instanceof zzapj ? (zzapj) queryLocalInterface4 : new zzapl(readStrongBinder4);
                    }
                    zza(readString6, readString7, zzvlVar3, asInterface4, zzaplVar, zzann.zzad(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    boolean zzaa = zzaa(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    zzgx.writeBoolean(parcel2, zzaa);
                    return true;
                case 18:
                    String readString8 = parcel.readString();
                    String readString9 = parcel.readString();
                    zzvl zzvlVar4 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                    IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder5 = parcel.readStrongBinder();
                    if (readStrongBinder5 == null) {
                        zzapgVar = null;
                    } else {
                        IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        zzapgVar = queryLocalInterface5 instanceof zzape ? (zzape) queryLocalInterface5 : new zzapg(readStrongBinder5);
                    }
                    zza(readString8, readString9, zzvlVar4, asInterface5, zzapgVar, zzann.zzad(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    zzdm(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    String readString10 = parcel.readString();
                    String readString11 = parcel.readString();
                    zzvl zzvlVar5 = (zzvl) zzgx.zza(parcel, zzvl.CREATOR);
                    IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder6 = parcel.readStrongBinder();
                    if (readStrongBinder6 != null) {
                        IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzaplVar2 = queryLocalInterface6 instanceof zzapj ? (zzapj) queryLocalInterface6 : new zzapl(readStrongBinder6);
                    }
                    zzb(readString10, readString11, zzvlVar5, asInterface6, zzaplVar2, zzann.zzad(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return false;
            }
        }
    }
}
