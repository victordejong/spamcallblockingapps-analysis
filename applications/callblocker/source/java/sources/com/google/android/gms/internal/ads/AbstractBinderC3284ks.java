package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.ks */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ks.class */
public abstract class AbstractBinderC3284ks extends dkl implements AbstractC3281kp {
    public AbstractBinderC3284ks() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        C3288kw c3288kw;
        C3288kw c3288kw2;
        C3288kw c3288kw3;
        C3288kw c3288kw4;
        C3288kw c3288kw5;
        C3288kw c3288kw6;
        boolean z;
        C3288kw c3288kw7;
        switch (i) {
            case 1:
                AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder());
                dyd dydVar = (dyd) dkk.m9323a(parcel, dyd.CREATOR);
                dya dyaVar = (dya) dkk.m9323a(parcel, dya.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c3288kw7 = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c3288kw7 = queryLocalInterface instanceof AbstractC3286ku ? (AbstractC3286ku) queryLocalInterface : new C3288kw(readStrongBinder);
                }
                mo7528a(m13796a, dydVar, dyaVar, readString, c3288kw7);
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                AbstractC2731a a = mo7534a();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, a);
                z = true;
                break;
            case 3:
                AbstractC2731a m13796a2 = AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder());
                dya dyaVar2 = (dya) dkk.m9323a(parcel, dya.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    c3288kw6 = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c3288kw6 = queryLocalInterface2 instanceof AbstractC3286ku ? (AbstractC3286ku) queryLocalInterface2 : new C3288kw(readStrongBinder2);
                }
                mo7532a(m13796a2, dyaVar2, readString2, c3288kw6);
                parcel2.writeNoException();
                z = true;
                break;
            case 4:
                mo7519b();
                parcel2.writeNoException();
                z = true;
                break;
            case 5:
                mo7516c();
                parcel2.writeNoException();
                z = true;
                break;
            case 6:
                AbstractC2731a m13796a3 = AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder());
                dyd dydVar2 = (dyd) dkk.m9323a(parcel, dyd.CREATOR);
                dya dyaVar3 = (dya) dkk.m9323a(parcel, dya.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    c3288kw5 = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c3288kw5 = queryLocalInterface3 instanceof AbstractC3286ku ? (AbstractC3286ku) queryLocalInterface3 : new C3288kw(readStrongBinder3);
                }
                mo7527a(m13796a3, dydVar2, dyaVar3, readString3, readString4, c3288kw5);
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                AbstractC2731a m13796a4 = AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder());
                dya dyaVar4 = (dya) dkk.m9323a(parcel, dya.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    c3288kw4 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c3288kw4 = queryLocalInterface4 instanceof AbstractC3286ku ? (AbstractC3286ku) queryLocalInterface4 : new C3288kw(readStrongBinder4);
                }
                mo7530a(m13796a4, dyaVar4, readString5, readString6, c3288kw4);
                parcel2.writeNoException();
                z = true;
                break;
            case 8:
                mo7514d();
                parcel2.writeNoException();
                z = true;
                break;
            case 9:
                mo7513e();
                parcel2.writeNoException();
                z = true;
                break;
            case 10:
                mo7531a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), (dya) dkk.m9323a(parcel, dya.CREATOR), parcel.readString(), AbstractBinderC3466rl.m7247a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 11:
                mo7523a((dya) dkk.m9323a(parcel, dya.CREATOR), parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 12:
                mo7512f();
                parcel2.writeNoException();
                z = true;
                break;
            case 13:
                boolean g = mo7511g();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, g);
                z = true;
                break;
            case 14:
                AbstractC2731a m13796a5 = AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder());
                dya dyaVar5 = (dya) dkk.m9323a(parcel, dya.CREATOR);
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    c3288kw3 = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c3288kw3 = queryLocalInterface5 instanceof AbstractC3286ku ? (AbstractC3286ku) queryLocalInterface5 : new C3288kw(readStrongBinder5);
                }
                mo7529a(m13796a5, dyaVar5, readString7, readString8, c3288kw3, (C2835bl) dkk.m9323a(parcel, C2835bl.CREATOR), parcel.createStringArrayList());
                parcel2.writeNoException();
                z = true;
                break;
            case 15:
                AbstractC3289kx h = mo7510h();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, h);
                z = true;
                break;
            case 16:
                AbstractC3296ld i3 = mo7509i();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, i3);
                z = true;
                break;
            case 17:
                Bundle j = mo7508j();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, j);
                z = true;
                break;
            case 18:
                Bundle k = mo7507k();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, k);
                z = true;
                break;
            case 19:
                Bundle l = mo7506l();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, l);
                z = true;
                break;
            case 20:
                mo7522a((dya) dkk.m9323a(parcel, dya.CREATOR), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 21:
                mo7533a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 22:
                boolean m = mo7505m();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, m);
                z = true;
                break;
            case 23:
                mo7525a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), AbstractBinderC3466rl.m7247a(parcel.readStrongBinder()), parcel.createStringArrayList());
                parcel2.writeNoException();
                z = true;
                break;
            case 24:
                AbstractC2893cr n = mo7504n();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, n);
                z = true;
                break;
            case 25:
                mo7520a(dkk.m9325a(parcel));
                parcel2.writeNoException();
                z = true;
                break;
            case 26:
                eba o = mo7503o();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, o);
                z = true;
                break;
            case 27:
                AbstractC3297le p = mo7502p();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, p);
                z = true;
                break;
            case 28:
                AbstractC2731a m13796a6 = AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder());
                dya dyaVar6 = (dya) dkk.m9323a(parcel, dya.CREATOR);
                String readString9 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    c3288kw2 = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c3288kw2 = queryLocalInterface6 instanceof AbstractC3286ku ? (AbstractC3286ku) queryLocalInterface6 : new C3288kw(readStrongBinder6);
                }
                mo7517b(m13796a6, dyaVar6, readString9, c3288kw2);
                parcel2.writeNoException();
                z = true;
                break;
            case 29:
            default:
                z = false;
                break;
            case 30:
                mo7518b(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 31:
                mo7526a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), AbstractBinderC3164gg.m7816a(parcel.readStrongBinder()), parcel.createTypedArrayList(C3169gl.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 32:
                AbstractC2731a m13796a7 = AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder());
                dya dyaVar7 = (dya) dkk.m9323a(parcel, dya.CREATOR);
                String readString10 = parcel.readString();
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    c3288kw = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    c3288kw = queryLocalInterface7 instanceof AbstractC3286ku ? (AbstractC3286ku) queryLocalInterface7 : new C3288kw(readStrongBinder7);
                }
                mo7515c(m13796a7, dyaVar7, readString10, c3288kw);
                parcel2.writeNoException();
                z = true;
                break;
            case 33:
                C3348nb q = mo7501q();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, q);
                z = true;
                break;
            case 34:
                C3348nb r = mo7500r();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, r);
                z = true;
                break;
        }
        return z;
    }
}
