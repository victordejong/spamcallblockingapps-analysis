package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.ov */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ov.class */
public abstract class AbstractBinderC12810ov extends dvd implements AbstractC12807os {
    public AbstractBinderC12810ov() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    /* renamed from: a */
    public static AbstractC12807os m14291a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        return queryLocalInterface instanceof AbstractC12807os ? (AbstractC12807os) queryLocalInterface : new C12809ou(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12814oz c12814oz;
        C12796oh c12796oh;
        C12801om c12801om;
        C12808ot c12808ot;
        C12802on c12802on;
        C12808ot c12808ot2;
        C12796oh c12796oh2;
        C12802on c12802on2 = null;
        if (i == 1) {
            AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
            String readString = parcel.readString();
            Bundle bundle = (Bundle) dvc.m15675a(parcel, Bundle.CREATOR);
            Bundle bundle2 = (Bundle) dvc.m15675a(parcel, Bundle.CREATOR);
            zzvt zzvtVar = (zzvt) dvc.m15675a(parcel, zzvt.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c12814oz = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                c12814oz = queryLocalInterface instanceof AbstractC12812ox ? (AbstractC12812ox) queryLocalInterface : new C12814oz(readStrongBinder);
            }
            mo14282a(m18981a, readString, bundle, bundle2, zzvtVar, c12814oz);
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            zzaqr a = mo14284a();
            parcel2.writeNoException();
            dvc.m15671b(parcel2, a);
            return true;
        } else if (i == 3) {
            zzaqr b = mo14269b();
            parcel2.writeNoException();
            dvc.m15671b(parcel2, b);
            return true;
        } else if (i == 5) {
            emk c = mo14263c();
            parcel2.writeNoException();
            dvc.m15676a(parcel2, c);
            return true;
        } else if (i == 10) {
            mo14283a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i == 11) {
            mo14270a(parcel.createStringArray(), (Bundle[]) parcel.createTypedArray(Bundle.CREATOR));
            parcel2.writeNoException();
            return true;
        } else {
            switch (i) {
                case 13:
                    String readString2 = parcel.readString();
                    String readString3 = parcel.readString();
                    zzvq zzvqVar = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                    AbstractC12126b m18981a2 = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 == null) {
                        c12796oh = null;
                    } else {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        c12796oh = queryLocalInterface2 instanceof AbstractC12794of ? (AbstractC12794of) queryLocalInterface2 : new C12796oh(readStrongBinder2);
                    }
                    mo14275a(readString2, readString3, zzvqVar, m18981a2, c12796oh, AbstractBinderC12751mr.m14483a(parcel.readStrongBinder()), (zzvt) dvc.m15675a(parcel, zzvt.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    String readString4 = parcel.readString();
                    String readString5 = parcel.readString();
                    zzvq zzvqVar2 = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                    AbstractC12126b m18981a3 = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                    IBinder readStrongBinder3 = parcel.readStrongBinder();
                    if (readStrongBinder3 == null) {
                        c12801om = null;
                    } else {
                        IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                        c12801om = queryLocalInterface3 instanceof AbstractC12799ok ? (AbstractC12799ok) queryLocalInterface3 : new C12801om(readStrongBinder3);
                    }
                    mo14274a(readString4, readString5, zzvqVar2, m18981a3, c12801om, AbstractBinderC12751mr.m14483a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    boolean b2 = mo14268b(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    dvc.m15673a(parcel2, b2);
                    return true;
                case 16:
                    String readString6 = parcel.readString();
                    String readString7 = parcel.readString();
                    zzvq zzvqVar3 = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                    AbstractC12126b m18981a4 = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                    IBinder readStrongBinder4 = parcel.readStrongBinder();
                    if (readStrongBinder4 == null) {
                        c12808ot = null;
                    } else {
                        IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        c12808ot = queryLocalInterface4 instanceof AbstractC12805oq ? (AbstractC12805oq) queryLocalInterface4 : new C12808ot(readStrongBinder4);
                    }
                    mo14271a(readString6, readString7, zzvqVar3, m18981a4, c12808ot, AbstractBinderC12751mr.m14483a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    boolean c2 = mo14262c(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    dvc.m15673a(parcel2, c2);
                    return true;
                case 18:
                    String readString8 = parcel.readString();
                    String readString9 = parcel.readString();
                    zzvq zzvqVar4 = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                    AbstractC12126b m18981a5 = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                    IBinder readStrongBinder5 = parcel.readStrongBinder();
                    if (readStrongBinder5 == null) {
                        c12802on = null;
                    } else {
                        IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        c12802on = queryLocalInterface5 instanceof AbstractC12800ol ? (AbstractC12800ol) queryLocalInterface5 : new C12802on(readStrongBinder5);
                    }
                    mo14273a(readString8, readString9, zzvqVar4, m18981a5, c12802on, AbstractBinderC12751mr.m14483a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    mo14277a(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    String readString10 = parcel.readString();
                    String readString11 = parcel.readString();
                    zzvq zzvqVar5 = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                    AbstractC12126b m18981a6 = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                    IBinder readStrongBinder6 = parcel.readStrongBinder();
                    if (readStrongBinder6 == null) {
                        c12808ot2 = null;
                    } else {
                        IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        c12808ot2 = queryLocalInterface6 instanceof AbstractC12805oq ? (AbstractC12805oq) queryLocalInterface6 : new C12808ot(readStrongBinder6);
                    }
                    mo14264b(readString10, readString11, zzvqVar5, m18981a6, c12808ot2, AbstractBinderC12751mr.m14483a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    String readString12 = parcel.readString();
                    String readString13 = parcel.readString();
                    zzvq zzvqVar6 = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                    AbstractC12126b m18981a7 = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                    IBinder readStrongBinder7 = parcel.readStrongBinder();
                    if (readStrongBinder7 == null) {
                        c12796oh2 = null;
                    } else {
                        IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        c12796oh2 = queryLocalInterface7 instanceof AbstractC12794of ? (AbstractC12794of) queryLocalInterface7 : new C12796oh(readStrongBinder7);
                    }
                    mo14265b(readString12, readString13, zzvqVar6, m18981a7, c12796oh2, AbstractBinderC12751mr.m14483a(parcel.readStrongBinder()), (zzvt) dvc.m15675a(parcel, zzvt.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    String readString14 = parcel.readString();
                    String readString15 = parcel.readString();
                    zzvq zzvqVar7 = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                    AbstractC12126b m18981a8 = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                    IBinder readStrongBinder8 = parcel.readStrongBinder();
                    if (readStrongBinder8 != null) {
                        IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        c12802on2 = queryLocalInterface8 instanceof AbstractC12800ol ? (AbstractC12800ol) queryLocalInterface8 : new C12802on(readStrongBinder8);
                    }
                    mo14272a(readString14, readString15, zzvqVar7, m18981a8, c12802on2, AbstractBinderC12751mr.m14483a(parcel.readStrongBinder()), (zzaei) dvc.m15675a(parcel, zzaei.CREATOR));
                    parcel2.writeNoException();
                    return true;
                default:
                    return false;
            }
        }
    }
}
