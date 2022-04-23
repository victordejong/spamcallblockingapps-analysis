package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ov.class */
public abstract class ov extends dvd implements os {
    public ov() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static os a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        return queryLocalInterface instanceof os ? (os) queryLocalInterface : new ou(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        ox oxVar;
        of ofVar = null;
        oq oqVar = null;
        ol olVar = null;
        oq oqVar2 = null;
        ok okVar = null;
        of ofVar2 = null;
        ol olVar2 = null;
        if (i == 1) {
            b a2 = b.a.a(parcel.readStrongBinder());
            String readString = parcel.readString();
            Bundle bundle = (Bundle) dvc.a(parcel, Bundle.CREATOR);
            Bundle bundle2 = (Bundle) dvc.a(parcel, Bundle.CREATOR);
            zzvt zzvtVar = (zzvt) dvc.a(parcel, zzvt.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                oxVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                oxVar = queryLocalInterface instanceof ox ? (ox) queryLocalInterface : new oz(readStrongBinder);
            }
            a(a2, readString, bundle, bundle2, zzvtVar, oxVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            zzaqr a3 = a();
            parcel2.writeNoException();
            dvc.b(parcel2, a3);
            return true;
        } else if (i == 3) {
            zzaqr b2 = b();
            parcel2.writeNoException();
            dvc.b(parcel2, b2);
            return true;
        } else if (i == 5) {
            emk c2 = c();
            parcel2.writeNoException();
            dvc.a(parcel2, c2);
            return true;
        } else if (i == 10) {
            a(b.a.a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i != 11) {
            switch (i) {
                case 13:
                    String readString2 = parcel.readString();
                    String readString3 = parcel.readString();
                    zzvq zzvqVar = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                    b a4 = b.a.a(parcel.readStrongBinder());
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 != null) {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        ofVar2 = queryLocalInterface2 instanceof of ? (of) queryLocalInterface2 : new oh(readStrongBinder2);
                    }
                    a(readString2, readString3, zzvqVar, a4, ofVar2, mr.a(parcel.readStrongBinder()), (zzvt) dvc.a(parcel, zzvt.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    String readString4 = parcel.readString();
                    String readString5 = parcel.readString();
                    zzvq zzvqVar2 = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                    b a5 = b.a.a(parcel.readStrongBinder());
                    IBinder readStrongBinder3 = parcel.readStrongBinder();
                    if (readStrongBinder3 != null) {
                        IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                        okVar = queryLocalInterface3 instanceof ok ? (ok) queryLocalInterface3 : new om(readStrongBinder3);
                    }
                    a(readString4, readString5, zzvqVar2, a5, okVar, mr.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    boolean b3 = b(b.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    dvc.a(parcel2, b3);
                    return true;
                case 16:
                    String readString6 = parcel.readString();
                    String readString7 = parcel.readString();
                    zzvq zzvqVar3 = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                    b a6 = b.a.a(parcel.readStrongBinder());
                    IBinder readStrongBinder4 = parcel.readStrongBinder();
                    if (readStrongBinder4 != null) {
                        IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        oqVar2 = queryLocalInterface4 instanceof oq ? (oq) queryLocalInterface4 : new ot(readStrongBinder4);
                    }
                    a(readString6, readString7, zzvqVar3, a6, oqVar2, mr.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    boolean c3 = c(b.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    dvc.a(parcel2, c3);
                    return true;
                case 18:
                    String readString8 = parcel.readString();
                    String readString9 = parcel.readString();
                    zzvq zzvqVar4 = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                    b a7 = b.a.a(parcel.readStrongBinder());
                    IBinder readStrongBinder5 = parcel.readStrongBinder();
                    if (readStrongBinder5 != null) {
                        IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        olVar = queryLocalInterface5 instanceof ol ? (ol) queryLocalInterface5 : new on(readStrongBinder5);
                    }
                    a(readString8, readString9, zzvqVar4, a7, olVar, mr.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    a(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    String readString10 = parcel.readString();
                    String readString11 = parcel.readString();
                    zzvq zzvqVar5 = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                    b a8 = b.a.a(parcel.readStrongBinder());
                    IBinder readStrongBinder6 = parcel.readStrongBinder();
                    if (readStrongBinder6 != null) {
                        IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        oqVar = queryLocalInterface6 instanceof oq ? (oq) queryLocalInterface6 : new ot(readStrongBinder6);
                    }
                    b(readString10, readString11, zzvqVar5, a8, oqVar, mr.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    String readString12 = parcel.readString();
                    String readString13 = parcel.readString();
                    zzvq zzvqVar6 = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                    b a9 = b.a.a(parcel.readStrongBinder());
                    IBinder readStrongBinder7 = parcel.readStrongBinder();
                    if (readStrongBinder7 != null) {
                        IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        ofVar = queryLocalInterface7 instanceof of ? (of) queryLocalInterface7 : new oh(readStrongBinder7);
                    }
                    b(readString12, readString13, zzvqVar6, a9, ofVar, mr.a(parcel.readStrongBinder()), (zzvt) dvc.a(parcel, zzvt.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    String readString14 = parcel.readString();
                    String readString15 = parcel.readString();
                    zzvq zzvqVar7 = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                    b a10 = b.a.a(parcel.readStrongBinder());
                    IBinder readStrongBinder8 = parcel.readStrongBinder();
                    if (readStrongBinder8 != null) {
                        IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        olVar2 = queryLocalInterface8 instanceof ol ? (ol) queryLocalInterface8 : new on(readStrongBinder8);
                    }
                    a(readString14, readString15, zzvqVar7, a10, olVar2, mr.a(parcel.readStrongBinder()), (zzaei) dvc.a(parcel, zzaei.CREATOR));
                    parcel2.writeNoException();
                    return true;
                default:
                    return false;
            }
        } else {
            a(parcel.createStringArray(), (Bundle[]) parcel.createTypedArray(Bundle.CREATOR));
            parcel2.writeNoException();
            return true;
        }
    }
}
