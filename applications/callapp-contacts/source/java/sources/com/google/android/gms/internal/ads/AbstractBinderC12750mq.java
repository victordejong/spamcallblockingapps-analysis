package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.mq */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mq.class */
public abstract class AbstractBinderC12750mq extends dvd implements AbstractC12747mn {
    public AbstractBinderC12750mq() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12754mu c12754mu;
        C12754mu c12754mu2;
        C12754mu c12754mu3;
        C12754mu c12754mu4;
        C12754mu c12754mu5;
        C12754mu c12754mu6;
        C12642iq c12642iq;
        C12754mu c12754mu7;
        C12754mu c12754mu8;
        switch (i) {
            case 1:
                AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                zzvt zzvtVar = (zzvt) dvc.m15675a(parcel, zzvt.CREATOR);
                zzvq zzvqVar = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c12754mu = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c12754mu = queryLocalInterface instanceof AbstractC12752ms ? (AbstractC12752ms) queryLocalInterface : new C12754mu(readStrongBinder);
                }
                mo14362a(m18981a, zzvtVar, zzvqVar, readString, c12754mu);
                parcel2.writeNoException();
                return true;
            case 2:
                AbstractC12126b a = mo14370a();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, a);
                return true;
            case 3:
                AbstractC12126b m18981a2 = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                zzvq zzvqVar2 = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    c12754mu2 = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c12754mu2 = queryLocalInterface2 instanceof AbstractC12752ms ? (AbstractC12752ms) queryLocalInterface2 : new C12754mu(readStrongBinder2);
                }
                mo14366a(m18981a2, zzvqVar2, readString2, c12754mu2);
                parcel2.writeNoException();
                return true;
            case 4:
                mo14355b();
                parcel2.writeNoException();
                return true;
            case 5:
                mo14351c();
                parcel2.writeNoException();
                return true;
            case 6:
                AbstractC12126b m18981a3 = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                zzvt zzvtVar2 = (zzvt) dvc.m15675a(parcel, zzvt.CREATOR);
                zzvq zzvqVar3 = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    c12754mu3 = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c12754mu3 = queryLocalInterface3 instanceof AbstractC12752ms ? (AbstractC12752ms) queryLocalInterface3 : new C12754mu(readStrongBinder3);
                }
                mo14361a(m18981a3, zzvtVar2, zzvqVar3, readString3, readString4, c12754mu3);
                parcel2.writeNoException();
                return true;
            case 7:
                AbstractC12126b m18981a4 = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                zzvq zzvqVar4 = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    c12754mu4 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c12754mu4 = queryLocalInterface4 instanceof AbstractC12752ms ? (AbstractC12752ms) queryLocalInterface4 : new C12754mu(readStrongBinder4);
                }
                mo14364a(m18981a4, zzvqVar4, readString5, readString6, c12754mu4);
                parcel2.writeNoException();
                return true;
            case 8:
                mo14348d();
                parcel2.writeNoException();
                return true;
            case 9:
                mo14347e();
                parcel2.writeNoException();
                return true;
            case 10:
                mo14365a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), (zzvq) dvc.m15675a(parcel, zzvq.CREATOR), parcel.readString(), AbstractBinderC12959ui.m14105a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                mo14359a((zzvq) dvc.m15675a(parcel, zzvq.CREATOR), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 12:
                mo14346f();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean g = mo14345g();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, g);
                return true;
            case 14:
                AbstractC12126b m18981a5 = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                zzvq zzvqVar5 = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    c12754mu5 = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c12754mu5 = queryLocalInterface5 instanceof AbstractC12752ms ? (AbstractC12752ms) queryLocalInterface5 : new C12754mu(readStrongBinder5);
                }
                mo14363a(m18981a5, zzvqVar5, readString7, readString8, c12754mu5, (zzaei) dvc.m15675a(parcel, zzaei.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 15:
                AbstractC12763nb h = mo14344h();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, h);
                return true;
            case 16:
                AbstractC12764nc i3 = mo14343i();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, i3);
                return true;
            case 17:
                Bundle j = mo14342j();
                parcel2.writeNoException();
                dvc.m15671b(parcel2, j);
                return true;
            case 18:
                Bundle k = mo14341k();
                parcel2.writeNoException();
                dvc.m15671b(parcel2, k);
                return true;
            case 19:
                Bundle l = mo14340l();
                parcel2.writeNoException();
                dvc.m15671b(parcel2, l);
                return true;
            case 20:
                mo14358a((zzvq) dvc.m15675a(parcel, zzvq.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 21:
                mo14369a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                boolean m = mo14339m();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, m);
                return true;
            case 23:
                mo14367a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractBinderC12959ui.m14105a(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 24:
                AbstractC12532eo n = mo14338n();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, n);
                return true;
            case 25:
                mo14356a(dvc.m15677a(parcel));
                parcel2.writeNoException();
                return true;
            case 26:
                emk o = mo14337o();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, o);
                return true;
            case 27:
                AbstractC12769nh p = mo14336p();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, p);
                return true;
            case 28:
                AbstractC12126b m18981a6 = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                zzvq zzvqVar6 = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                String readString9 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    c12754mu6 = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c12754mu6 = queryLocalInterface6 instanceof AbstractC12752ms ? (AbstractC12752ms) queryLocalInterface6 : new C12754mu(readStrongBinder6);
                }
                mo14353b(m18981a6, zzvqVar6, readString9, c12754mu6);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                mo14354b(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 31:
                AbstractC12126b m18981a7 = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    c12642iq = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
                    c12642iq = queryLocalInterface7 instanceof AbstractC12640io ? (AbstractC12640io) queryLocalInterface7 : new C12642iq(readStrongBinder7);
                }
                mo14368a(m18981a7, c12642iq, parcel.createTypedArrayList(zzajw.CREATOR));
                parcel2.writeNoException();
                return true;
            case 32:
                AbstractC12126b m18981a8 = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                zzvq zzvqVar7 = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                String readString10 = parcel.readString();
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 == null) {
                    c12754mu7 = null;
                } else {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c12754mu7 = queryLocalInterface8 instanceof AbstractC12752ms ? (AbstractC12752ms) queryLocalInterface8 : new C12754mu(readStrongBinder8);
                }
                mo14349c(m18981a8, zzvqVar7, readString10, c12754mu7);
                parcel2.writeNoException();
                return true;
            case 33:
                zzaqr q = mo14335q();
                parcel2.writeNoException();
                dvc.m15671b(parcel2, q);
                return true;
            case 34:
                zzaqr r = mo14334r();
                parcel2.writeNoException();
                dvc.m15671b(parcel2, r);
                return true;
            case 35:
                AbstractC12126b m18981a9 = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                zzvt zzvtVar3 = (zzvt) dvc.m15675a(parcel, zzvt.CREATOR);
                zzvq zzvqVar8 = (zzvq) dvc.m15675a(parcel, zzvq.CREATOR);
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 == null) {
                    c12754mu8 = null;
                } else {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c12754mu8 = queryLocalInterface9 instanceof AbstractC12752ms ? (AbstractC12752ms) queryLocalInterface9 : new C12754mu(readStrongBinder9);
                }
                mo14352b(m18981a9, zzvtVar3, zzvqVar8, readString11, readString12, c12754mu8);
                parcel2.writeNoException();
                return true;
            case 36:
                AbstractC12753mt s = mo14333s();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, s);
                return true;
            case 37:
                mo14350c(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
