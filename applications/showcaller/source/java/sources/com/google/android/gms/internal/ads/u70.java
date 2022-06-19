package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u70.class */
public abstract class u70 extends BinderC6649k2 implements v70 {
    public u70() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        w70 w70Var;
        w70 w70Var2;
        w70 w70Var3;
        w70 w70Var4;
        w70 w70Var5;
        w70 w70Var6;
        w70 w70Var7;
        w70 w70Var8;
        switch (i) {
            case 1:
                AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                zzbdl zzbdlVar = (zzbdl) C6686l2.m13744c(parcel, zzbdl.CREATOR);
                zzbdg zzbdgVar = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    w70Var = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    w70Var = queryLocalInterface instanceof y70 ? (y70) queryLocalInterface : new w70(readStrongBinder);
                }
                mo9752Y2(m16746D0, zzbdlVar, zzbdgVar, readString, w70Var);
                parcel2.writeNoException();
                return true;
            case 2:
                AbstractC6253a mo9749d = mo9749d();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo9749d);
                return true;
            case 3:
                AbstractC6253a m16746D02 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                zzbdg zzbdgVar2 = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    w70Var2 = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    w70Var2 = queryLocalInterface2 instanceof y70 ? (y70) queryLocalInterface2 : new w70(readStrongBinder2);
                }
                mo9738s6(m16746D02, zzbdgVar2, readString2, w70Var2);
                parcel2.writeNoException();
                return true;
            case 4:
                mo9748f();
                parcel2.writeNoException();
                return true;
            case 5:
                zzi();
                parcel2.writeNoException();
                return true;
            case 6:
                AbstractC6253a m16746D03 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                zzbdl zzbdlVar2 = (zzbdl) C6686l2.m13744c(parcel, zzbdl.CREATOR);
                zzbdg zzbdgVar3 = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    w70Var3 = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    w70Var3 = queryLocalInterface3 instanceof y70 ? (y70) queryLocalInterface3 : new w70(readStrongBinder3);
                }
                mo9743k6(m16746D03, zzbdlVar2, zzbdgVar3, readString3, readString4, w70Var3);
                parcel2.writeNoException();
                return true;
            case 7:
                AbstractC6253a m16746D04 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                zzbdg zzbdgVar4 = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    w70Var4 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    w70Var4 = queryLocalInterface4 instanceof y70 ? (y70) queryLocalInterface4 : new w70(readStrongBinder4);
                }
                mo9769B5(m16746D04, zzbdgVar4, readString5, readString6, w70Var4);
                parcel2.writeNoException();
                return true;
            case 8:
                mo9746i();
                parcel2.writeNoException();
                return true;
            case 9:
                mo9745j();
                parcel2.writeNoException();
                return true;
            case 10:
                mo9739s1(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR), parcel.readString(), xd0.m9261E6(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                mo9765H5((zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 12:
                mo9742l();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean mo9744k = mo9744k();
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, mo9744k);
                return true;
            case 14:
                AbstractC6253a m16746D05 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                zzbdg zzbdgVar5 = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    w70Var5 = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    w70Var5 = queryLocalInterface5 instanceof y70 ? (y70) queryLocalInterface5 : new w70(readStrongBinder5);
                }
                mo9735x4(m16746D05, zzbdgVar5, readString7, readString8, w70Var5, (zzblv) C6686l2.m13744c(parcel, zzblv.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 15:
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, null);
                return true;
            case 16:
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, null);
                return true;
            case 17:
                Bundle mo9741o = mo9741o();
                parcel2.writeNoException();
                C6686l2.m13742e(parcel2, mo9741o);
                return true;
            case 18:
                Bundle zzt = zzt();
                parcel2.writeNoException();
                C6686l2.m13742e(parcel2, zzt);
                return true;
            case 19:
                Bundle zzu = zzu();
                parcel2.writeNoException();
                C6686l2.m13742e(parcel2, zzu);
                return true;
            case 20:
                mo9754W5((zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 21:
                mo9747g0(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, false);
                return true;
            case 23:
                mo9751a4(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), xd0.m9261E6(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                return true;
            case 24:
                AbstractC7237zz mo9740q = mo9740q();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo9740q);
                return true;
            case 25:
                mo9750c3(C6686l2.m13746a(parcel));
                parcel2.writeNoException();
                return true;
            case 26:
                AbstractC6640ju mo9762K = mo9762K();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo9762K);
                return true;
            case 27:
                h80 mo9737t = mo9737t();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo9737t);
                return true;
            case 28:
                AbstractC6253a m16746D06 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                zzbdg zzbdgVar6 = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                String readString9 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    w70Var6 = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    w70Var6 = queryLocalInterface6 instanceof y70 ? (y70) queryLocalInterface6 : new w70(readStrongBinder6);
                }
                mo9761K5(m16746D06, zzbdgVar6, readString9, w70Var6);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                mo9753X2(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 31:
                mo9760L2(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), z30.m8532E6(parcel.readStrongBinder()), parcel.createTypedArrayList(zzbrv.CREATOR));
                parcel2.writeNoException();
                return true;
            case 32:
                AbstractC6253a m16746D07 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                zzbdg zzbdgVar7 = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                String readString10 = parcel.readString();
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    w70Var7 = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    w70Var7 = queryLocalInterface7 instanceof y70 ? (y70) queryLocalInterface7 : new w70(readStrongBinder7);
                }
                mo9756R1(m16746D07, zzbdgVar7, readString10, w70Var7);
                parcel2.writeNoException();
                return true;
            case 33:
                zzbya mo9768D = mo9768D();
                parcel2.writeNoException();
                C6686l2.m13742e(parcel2, mo9768D);
                return true;
            case 34:
                zzbya mo9759P = mo9759P();
                parcel2.writeNoException();
                C6686l2.m13742e(parcel2, mo9759P);
                return true;
            case 35:
                AbstractC6253a m16746D08 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                zzbdl zzbdlVar3 = (zzbdl) C6686l2.m13744c(parcel, zzbdl.CREATOR);
                zzbdg zzbdgVar8 = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 == null) {
                    w70Var8 = null;
                } else {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    w70Var8 = queryLocalInterface8 instanceof y70 ? (y70) queryLocalInterface8 : new w70(readStrongBinder8);
                }
                mo9757Q1(m16746D08, zzbdlVar3, zzbdgVar8, readString11, readString12, w70Var8);
                parcel2.writeNoException();
                return true;
            case 36:
                b80 mo9755W = mo9755W();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo9755W);
                return true;
            case 37:
                mo9763J1(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
