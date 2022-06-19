package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q90.class */
public abstract class q90 extends BinderC6649k2 implements r90 {
    public q90() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    /* renamed from: E6 */
    public static r90 m12009E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        return queryLocalInterface instanceof r90 ? (r90) queryLocalInterface : new p90(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        s90 s90Var;
        c90 c90Var;
        g90 g90Var;
        m90 m90Var;
        j90 j90Var;
        m90 m90Var2;
        c90 c90Var2;
        j90 j90Var2 = null;
        if (i == 1) {
            AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
            String readString = parcel.readString();
            Parcelable.Creator creator = Bundle.CREATOR;
            Bundle bundle = (Bundle) C6686l2.m13744c(parcel, creator);
            Bundle bundle2 = (Bundle) C6686l2.m13744c(parcel, creator);
            zzbdl zzbdlVar = (zzbdl) C6686l2.m13744c(parcel, zzbdl.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                s90Var = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                s90Var = queryLocalInterface instanceof u90 ? (u90) queryLocalInterface : new s90(readStrongBinder);
            }
            mo11648O4(m16746D0, readString, bundle, bundle2, zzbdlVar, s90Var);
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            zzbya mo11645d = mo11645d();
            parcel2.writeNoException();
            C6686l2.m13742e(parcel2, mo11645d);
            return true;
        } else if (i == 3) {
            zzbya zzg = zzg();
            parcel2.writeNoException();
            C6686l2.m13742e(parcel2, zzg);
            return true;
        } else if (i == 5) {
            AbstractC6640ju mo11644f = mo11644f();
            parcel2.writeNoException();
            C6686l2.m13741f(parcel2, mo11644f);
            return true;
        } else if (i == 10) {
            AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
            parcel2.writeNoException();
            return true;
        } else if (i == 11) {
            parcel.createStringArray();
            Bundle[] bundleArr = (Bundle[]) parcel.createTypedArray(Bundle.CREATOR);
            parcel2.writeNoException();
            return true;
        } else {
            switch (i) {
                case 13:
                    String readString2 = parcel.readString();
                    String readString3 = parcel.readString();
                    zzbdg zzbdgVar = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                    AbstractC6253a m16746D02 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 == null) {
                        c90Var = null;
                    } else {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        c90Var = queryLocalInterface2 instanceof f90 ? (f90) queryLocalInterface2 : new c90(readStrongBinder2);
                    }
                    mo11640x3(readString2, readString3, zzbdgVar, m16746D02, c90Var, x70.m9333E6(parcel.readStrongBinder()), (zzbdl) C6686l2.m13744c(parcel, zzbdl.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    String readString4 = parcel.readString();
                    String readString5 = parcel.readString();
                    zzbdg zzbdgVar2 = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                    AbstractC6253a m16746D03 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                    IBinder readStrongBinder3 = parcel.readStrongBinder();
                    if (readStrongBinder3 == null) {
                        g90Var = null;
                    } else {
                        IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                        g90Var = queryLocalInterface3 instanceof i90 ? (i90) queryLocalInterface3 : new g90(readStrongBinder3);
                    }
                    mo11649F5(readString4, readString5, zzbdgVar2, m16746D03, g90Var, x70.m9333E6(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    boolean mo11638z0 = mo11638z0(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    C6686l2.m13745b(parcel2, mo11638z0);
                    return true;
                case 16:
                    String readString6 = parcel.readString();
                    String readString7 = parcel.readString();
                    zzbdg zzbdgVar3 = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                    AbstractC6253a m16746D04 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                    IBinder readStrongBinder4 = parcel.readStrongBinder();
                    if (readStrongBinder4 == null) {
                        m90Var = null;
                    } else {
                        IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        m90Var = queryLocalInterface4 instanceof o90 ? (o90) queryLocalInterface4 : new m90(readStrongBinder4);
                    }
                    mo11641q5(readString6, readString7, zzbdgVar3, m16746D04, m90Var, x70.m9333E6(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    boolean mo11639y5 = mo11639y5(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    C6686l2.m13745b(parcel2, mo11639y5);
                    return true;
                case 18:
                    String readString8 = parcel.readString();
                    String readString9 = parcel.readString();
                    zzbdg zzbdgVar4 = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                    AbstractC6253a m16746D05 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                    IBinder readStrongBinder5 = parcel.readStrongBinder();
                    if (readStrongBinder5 == null) {
                        j90Var = null;
                    } else {
                        IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        j90Var = queryLocalInterface5 instanceof l90 ? (l90) queryLocalInterface5 : new j90(readStrongBinder5);
                    }
                    mo11642j3(readString8, readString9, zzbdgVar4, m16746D05, j90Var, x70.m9333E6(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    mo11650B0(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    String readString10 = parcel.readString();
                    String readString11 = parcel.readString();
                    zzbdg zzbdgVar5 = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                    AbstractC6253a m16746D06 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                    IBinder readStrongBinder6 = parcel.readStrongBinder();
                    if (readStrongBinder6 == null) {
                        m90Var2 = null;
                    } else {
                        IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        m90Var2 = queryLocalInterface6 instanceof o90 ? (o90) queryLocalInterface6 : new m90(readStrongBinder6);
                    }
                    mo11643f2(readString10, readString11, zzbdgVar5, m16746D06, m90Var2, x70.m9333E6(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    String readString12 = parcel.readString();
                    String readString13 = parcel.readString();
                    zzbdg zzbdgVar6 = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                    AbstractC6253a m16746D07 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                    IBinder readStrongBinder7 = parcel.readStrongBinder();
                    if (readStrongBinder7 == null) {
                        c90Var2 = null;
                    } else {
                        IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        c90Var2 = queryLocalInterface7 instanceof f90 ? (f90) queryLocalInterface7 : new c90(readStrongBinder7);
                    }
                    mo11646b3(readString12, readString13, zzbdgVar6, m16746D07, c90Var2, x70.m9333E6(parcel.readStrongBinder()), (zzbdl) C6686l2.m13744c(parcel, zzbdl.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    String readString14 = parcel.readString();
                    String readString15 = parcel.readString();
                    zzbdg zzbdgVar7 = (zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR);
                    AbstractC6253a m16746D08 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
                    IBinder readStrongBinder8 = parcel.readStrongBinder();
                    if (readStrongBinder8 != null) {
                        IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        j90Var2 = queryLocalInterface8 instanceof l90 ? (l90) queryLocalInterface8 : new j90(readStrongBinder8);
                    }
                    mo11647Y4(readString14, readString15, zzbdgVar7, m16746D08, j90Var2, x70.m9333E6(parcel.readStrongBinder()), (zzblv) C6686l2.m13744c(parcel, zzblv.CREATOR));
                    parcel2.writeNoException();
                    return true;
                default:
                    return false;
            }
        }
    }
}
