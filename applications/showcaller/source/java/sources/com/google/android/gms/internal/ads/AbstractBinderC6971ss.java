package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.ads.ss */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ss.class */
public abstract class AbstractBinderC6971ss extends BinderC6649k2 implements AbstractC7008ts {
    public AbstractBinderC6971ss() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        C6414ds c6414ds;
        C7193ys c7193ys;
        C6303as c6303as;
        C6453et c6453et;
        C7082vs c7082vs;
        C6305au c6305au;
        C6563hs c6563hs;
        C6490ft c6490ft;
        switch (i) {
            case 1:
                AbstractC6253a zzi = zzi();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, zzi);
                return true;
            case 2:
                mo9638g();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean mo9637h = mo9637h();
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, mo9637h);
                return true;
            case 4:
                boolean mo9634k5 = mo9634k5((zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR));
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, mo9634k5);
                return true;
            case 5:
                mo9635j();
                parcel2.writeNoException();
                return true;
            case 6:
                mo9630m();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c6414ds = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    c6414ds = queryLocalInterface instanceof AbstractC6526gs ? (AbstractC6526gs) queryLocalInterface : new C6414ds(readStrongBinder);
                }
                mo9644X5(c6414ds);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    c7193ys = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    c7193ys = queryLocalInterface2 instanceof AbstractC6304at ? (AbstractC6304at) queryLocalInterface2 : new C7193ys(readStrongBinder2);
                }
                mo9652K2(c7193ys);
                parcel2.writeNoException();
                return true;
            case 9:
                mo9628o();
                parcel2.writeNoException();
                return true;
            case 10:
                parcel2.writeNoException();
                return true;
            case 11:
                zzt();
                parcel2.writeNoException();
                return true;
            case 12:
                zzbdl zzu = zzu();
                parcel2.writeNoException();
                C6686l2.m13742e(parcel2, zzu);
                return true;
            case 13:
                mo9650L0((zzbdl) C6686l2.m13744c(parcel, zzbdl.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                mo9643Y1(sb0.m11089E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                mo9636i4(xb0.m9295E6(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String mo9620v = mo9620v();
                parcel2.writeNoException();
                parcel2.writeString(mo9620v);
                return true;
            case 19:
                mo9639e6(AbstractBinderC6494fx.m15029E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    c6303as = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    c6303as = queryLocalInterface3 instanceof AbstractC6377cs ? (AbstractC6377cs) queryLocalInterface3 : new C6303as(readStrongBinder3);
                }
                mo9619v4(c6303as);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    c6453et = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    c6453et = queryLocalInterface4 instanceof C6453et ? (C6453et) queryLocalInterface4 : new C6453et(readStrongBinder4);
                }
                mo9646U2(c6453et);
                parcel2.writeNoException();
                return true;
            case 22:
                mo9663C4(C6686l2.m13746a(parcel));
                parcel2.writeNoException();
                return true;
            case 23:
                boolean mo9662D = mo9662D();
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, mo9662D);
                return true;
            case 24:
                mo9642b6(td0.m10718E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 25:
                mo9633l1(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 26:
                AbstractC6640ju mo9627p0 = mo9627p0();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo9627p0);
                return true;
            case 29:
                mo9631l6((zzbis) C6686l2.m13744c(parcel, zzbis.CREATOR));
                parcel2.writeNoException();
                return true;
            case 30:
                mo9623s5((zzbhg) C6686l2.m13744c(parcel, zzbhg.CREATOR));
                parcel2.writeNoException();
                return true;
            case 31:
                String mo9653K = mo9653K();
                parcel2.writeNoException();
                parcel2.writeString(mo9653K);
                return true;
            case 32:
                AbstractC6304at mo9622t = mo9622t();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo9622t);
                return true;
            case 33:
                AbstractC6526gs mo9657H = mo9657H();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo9657H);
                return true;
            case 34:
                mo9624s0(C6686l2.m13746a(parcel));
                parcel2.writeNoException();
                return true;
            case 35:
                String mo9626q = mo9626q();
                parcel2.writeNoException();
                parcel2.writeString(mo9626q);
                return true;
            case 36:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    c7082vs = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    c7082vs = queryLocalInterface5 instanceof AbstractC7156xs ? (AbstractC7156xs) queryLocalInterface5 : new C7082vs(readStrongBinder5);
                }
                mo9660F4(c7082vs);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle mo9625s = mo9625s();
                parcel2.writeNoException();
                C6686l2.m13742e(parcel2, mo9625s);
                return true;
            case 38:
                mo9632l3(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 39:
                mo9649N5((zzbdr) C6686l2.m13744c(parcel, zzbdr.CREATOR));
                parcel2.writeNoException();
                return true;
            case 40:
                mo9629m6(AbstractBinderC6742ml.m13169E6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 41:
                AbstractC6491fu mo9621u = mo9621u();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo9621u);
                return true;
            case 42:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    c6305au = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    c6305au = queryLocalInterface6 instanceof AbstractC6379cu ? (AbstractC6379cu) queryLocalInterface6 : new C6305au(readStrongBinder6);
                }
                mo9640e3(c6305au);
                parcel2.writeNoException();
                return true;
            case 43:
                zzbdg zzbdgVar = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    c6563hs = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoadCallback");
                    c6563hs = queryLocalInterface7 instanceof AbstractC6638js ? (AbstractC6638js) queryLocalInterface7 : new C6563hs(readStrongBinder7);
                }
                mo9648O5(zzbdgVar, c6563hs);
                parcel2.writeNoException();
                return true;
            case 44:
                mo9645W3(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 45:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 == null) {
                    c6490ft = null;
                } else {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
                    c6490ft = queryLocalInterface8 instanceof AbstractC6602it ? (AbstractC6602it) queryLocalInterface8 : new C6490ft(readStrongBinder8);
                }
                mo9647S1(c6490ft);
                parcel2.writeNoException();
                return true;
        }
    }
}
