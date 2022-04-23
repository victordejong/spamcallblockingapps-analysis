package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mq.class */
public abstract class mq extends dvd implements mn {
    public mq() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        ms msVar = null;
        io ioVar = null;
        ms msVar2 = null;
        ms msVar3 = null;
        ms msVar4 = null;
        ms msVar5 = null;
        ms msVar6 = null;
        ms msVar7 = null;
        ms msVar8 = null;
        switch (i) {
            case 1:
                b a2 = b.a.a(parcel.readStrongBinder());
                zzvt zzvtVar = (zzvt) dvc.a(parcel, zzvt.CREATOR);
                zzvq zzvqVar = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    msVar7 = queryLocalInterface instanceof ms ? (ms) queryLocalInterface : new mu(readStrongBinder);
                }
                a(a2, zzvtVar, zzvqVar, readString, msVar7);
                parcel2.writeNoException();
                return true;
            case 2:
                b a3 = a();
                parcel2.writeNoException();
                dvc.a(parcel2, a3);
                return true;
            case 3:
                b a4 = b.a.a(parcel.readStrongBinder());
                zzvq zzvqVar2 = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    msVar6 = queryLocalInterface2 instanceof ms ? (ms) queryLocalInterface2 : new mu(readStrongBinder2);
                }
                a(a4, zzvqVar2, readString2, msVar6);
                parcel2.writeNoException();
                return true;
            case 4:
                b();
                parcel2.writeNoException();
                return true;
            case 5:
                c();
                parcel2.writeNoException();
                return true;
            case 6:
                b a5 = b.a.a(parcel.readStrongBinder());
                zzvt zzvtVar2 = (zzvt) dvc.a(parcel, zzvt.CREATOR);
                zzvq zzvqVar3 = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    msVar5 = queryLocalInterface3 instanceof ms ? (ms) queryLocalInterface3 : new mu(readStrongBinder3);
                }
                a(a5, zzvtVar2, zzvqVar3, readString3, readString4, msVar5);
                parcel2.writeNoException();
                return true;
            case 7:
                b a6 = b.a.a(parcel.readStrongBinder());
                zzvq zzvqVar4 = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    msVar4 = queryLocalInterface4 instanceof ms ? (ms) queryLocalInterface4 : new mu(readStrongBinder4);
                }
                a(a6, zzvqVar4, readString5, readString6, msVar4);
                parcel2.writeNoException();
                return true;
            case 8:
                d();
                parcel2.writeNoException();
                return true;
            case 9:
                e();
                parcel2.writeNoException();
                return true;
            case 10:
                a(b.a.a(parcel.readStrongBinder()), (zzvq) dvc.a(parcel, zzvq.CREATOR), parcel.readString(), ui.a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                a((zzvq) dvc.a(parcel, zzvq.CREATOR), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 12:
                f();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean g = g();
                parcel2.writeNoException();
                dvc.a(parcel2, g);
                return true;
            case 14:
                b a7 = b.a.a(parcel.readStrongBinder());
                zzvq zzvqVar5 = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    msVar3 = queryLocalInterface5 instanceof ms ? (ms) queryLocalInterface5 : new mu(readStrongBinder5);
                }
                a(a7, zzvqVar5, readString7, readString8, msVar3, (zzaei) dvc.a(parcel, zzaei.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 15:
                nb h = h();
                parcel2.writeNoException();
                dvc.a(parcel2, h);
                return true;
            case 16:
                nc i3 = i();
                parcel2.writeNoException();
                dvc.a(parcel2, i3);
                return true;
            case 17:
                Bundle j = j();
                parcel2.writeNoException();
                dvc.b(parcel2, j);
                return true;
            case 18:
                Bundle k = k();
                parcel2.writeNoException();
                dvc.b(parcel2, k);
                return true;
            case 19:
                Bundle l = l();
                parcel2.writeNoException();
                dvc.b(parcel2, l);
                return true;
            case 20:
                a((zzvq) dvc.a(parcel, zzvq.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 21:
                a(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                boolean m = m();
                parcel2.writeNoException();
                dvc.a(parcel2, m);
                return true;
            case 23:
                a(b.a.a(parcel.readStrongBinder()), ui.a(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 24:
                eo n = n();
                parcel2.writeNoException();
                dvc.a(parcel2, n);
                return true;
            case 25:
                a(dvc.a(parcel));
                parcel2.writeNoException();
                return true;
            case 26:
                emk o = o();
                parcel2.writeNoException();
                dvc.a(parcel2, o);
                return true;
            case 27:
                nh p = p();
                parcel2.writeNoException();
                dvc.a(parcel2, p);
                return true;
            case 28:
                b a8 = b.a.a(parcel.readStrongBinder());
                zzvq zzvqVar6 = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                String readString9 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    msVar2 = queryLocalInterface6 instanceof ms ? (ms) queryLocalInterface6 : new mu(readStrongBinder6);
                }
                b(a8, zzvqVar6, readString9, msVar2);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                b(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 31:
                b a9 = b.a.a(parcel.readStrongBinder());
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
                    ioVar = queryLocalInterface7 instanceof io ? (io) queryLocalInterface7 : new iq(readStrongBinder7);
                }
                a(a9, ioVar, parcel.createTypedArrayList(zzajw.CREATOR));
                parcel2.writeNoException();
                return true;
            case 32:
                b a10 = b.a.a(parcel.readStrongBinder());
                zzvq zzvqVar7 = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                String readString10 = parcel.readString();
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    msVar = queryLocalInterface8 instanceof ms ? (ms) queryLocalInterface8 : new mu(readStrongBinder8);
                }
                c(a10, zzvqVar7, readString10, msVar);
                parcel2.writeNoException();
                return true;
            case 33:
                zzaqr q = q();
                parcel2.writeNoException();
                dvc.b(parcel2, q);
                return true;
            case 34:
                zzaqr r = r();
                parcel2.writeNoException();
                dvc.b(parcel2, r);
                return true;
            case 35:
                b a11 = b.a.a(parcel.readStrongBinder());
                zzvt zzvtVar3 = (zzvt) dvc.a(parcel, zzvt.CREATOR);
                zzvq zzvqVar8 = (zzvq) dvc.a(parcel, zzvq.CREATOR);
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    msVar8 = queryLocalInterface9 instanceof ms ? (ms) queryLocalInterface9 : new mu(readStrongBinder9);
                }
                b(a11, zzvtVar3, zzvqVar8, readString11, readString12, msVar8);
                parcel2.writeNoException();
                return true;
            case 36:
                mt s = s();
                parcel2.writeNoException();
                dvc.a(parcel2, s);
                return true;
            case 37:
                c(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
