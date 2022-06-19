package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.mm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mm.class */
public abstract class AbstractBinderC3332mm extends dkl implements AbstractC3333mn {
    public AbstractBinderC3332mm() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.mn] */
    /* renamed from: a */
    public static AbstractC3333mn m7460a(IBinder iBinder) {
        C3335mp c3335mp;
        if (iBinder == null) {
            c3335mp = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
            c3335mp = queryLocalInterface instanceof AbstractC3333mn ? (AbstractC3333mn) queryLocalInterface : new C3335mp(iBinder);
        }
        return c3335mp;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        C3330mk c3330mk;
        C3329mj c3329mj;
        C3330mk c3330mk2;
        C3324me c3324me;
        C3323md c3323md;
        boolean z;
        C3336mq c3336mq;
        switch (i) {
            case 1:
                AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder());
                String readString = parcel.readString();
                Bundle bundle = (Bundle) dkk.m9323a(parcel, Bundle.CREATOR);
                Bundle bundle2 = (Bundle) dkk.m9323a(parcel, Bundle.CREATOR);
                dyd dydVar = (dyd) dkk.m9323a(parcel, dyd.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c3336mq = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                    c3336mq = queryLocalInterface instanceof AbstractC3334mo ? (AbstractC3334mo) queryLocalInterface : new C3336mq(readStrongBinder);
                }
                mo7455a(m13796a, readString, bundle, bundle2, dydVar, c3336mq);
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                C3348nb a = mo7457a();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, a);
                z = true;
                break;
            case 3:
                C3348nb b = mo7445b();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, b);
                z = true;
                break;
            case 4:
            case 6:
            case 7:
            case 8:
            case 9:
            case 12:
            default:
                z = false;
                break;
            case 5:
                eba c = mo7440c();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, c);
                z = true;
                break;
            case 10:
                mo7456a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 11:
                mo7446a(parcel.createStringArray(), (Bundle[]) parcel.createTypedArray(Bundle.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 13:
                String readString2 = parcel.readString();
                String readString3 = parcel.readString();
                dya dyaVar = (dya) dkk.m9323a(parcel, dya.CREATOR);
                AbstractC2731a m13796a2 = AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder());
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    c3323md = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                    c3323md = queryLocalInterface2 instanceof AbstractC3321mb ? (AbstractC3321mb) queryLocalInterface2 : new C3323md(readStrongBinder2);
                }
                mo7450a(readString2, readString3, dyaVar, m13796a2, c3323md, AbstractBinderC3285kt.m7660a(parcel.readStrongBinder()), (dyd) dkk.m9323a(parcel, dyd.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 14:
                String readString4 = parcel.readString();
                String readString5 = parcel.readString();
                dya dyaVar2 = (dya) dkk.m9323a(parcel, dya.CREATOR);
                AbstractC2731a m13796a3 = AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder());
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    c3324me = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                    c3324me = queryLocalInterface3 instanceof AbstractC3322mc ? (AbstractC3322mc) queryLocalInterface3 : new C3324me(readStrongBinder3);
                }
                mo7449a(readString4, readString5, dyaVar2, m13796a3, c3324me, AbstractBinderC3285kt.m7660a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 15:
                boolean b2 = mo7444b(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dkk.m9321a(parcel2, b2);
                z = true;
                break;
            case 16:
                String readString6 = parcel.readString();
                String readString7 = parcel.readString();
                dya dyaVar3 = (dya) dkk.m9323a(parcel, dya.CREATOR);
                AbstractC2731a m13796a4 = AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder());
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    c3330mk2 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                    c3330mk2 = queryLocalInterface4 instanceof AbstractC3328mi ? (AbstractC3328mi) queryLocalInterface4 : new C3330mk(readStrongBinder4);
                }
                mo7447a(readString6, readString7, dyaVar3, m13796a4, c3330mk2, AbstractBinderC3285kt.m7660a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 17:
                boolean c2 = mo7439c(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                dkk.m9321a(parcel2, c2);
                z = true;
                break;
            case 18:
                String readString8 = parcel.readString();
                String readString9 = parcel.readString();
                dya dyaVar4 = (dya) dkk.m9323a(parcel, dya.CREATOR);
                AbstractC2731a m13796a5 = AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder());
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    c3329mj = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                    c3329mj = queryLocalInterface5 instanceof AbstractC3327mh ? (AbstractC3327mh) queryLocalInterface5 : new C3329mj(readStrongBinder5);
                }
                mo7448a(readString8, readString9, dyaVar4, m13796a5, c3329mj, AbstractBinderC3285kt.m7660a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 19:
                mo7452a(parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 20:
                String readString10 = parcel.readString();
                String readString11 = parcel.readString();
                dya dyaVar5 = (dya) dkk.m9323a(parcel, dya.CREATOR);
                AbstractC2731a m13796a6 = AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder());
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    c3330mk = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                    c3330mk = queryLocalInterface6 instanceof AbstractC3328mi ? (AbstractC3328mi) queryLocalInterface6 : new C3330mk(readStrongBinder6);
                }
                mo7441b(readString10, readString11, dyaVar5, m13796a6, c3330mk, AbstractBinderC3285kt.m7660a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
        }
        return z;
    }
}
