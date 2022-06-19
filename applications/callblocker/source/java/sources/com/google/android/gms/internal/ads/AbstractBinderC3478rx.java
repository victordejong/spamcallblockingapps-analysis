package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.rx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rx.class */
public abstract class AbstractBinderC3478rx extends dkl implements AbstractC3475ru {
    public AbstractBinderC3478rx() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.ru] */
    /* renamed from: a */
    public static AbstractC3475ru m7203a(IBinder iBinder) {
        C3477rw c3477rw;
        if (iBinder == null) {
            c3477rw = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
            c3477rw = queryLocalInterface instanceof AbstractC3475ru ? (AbstractC3475ru) queryLocalInterface : new C3477rw(iBinder);
        }
        return c3477rw;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        C3483sb c3483sb;
        C3484sc c3484sc;
        C3480rz c3480rz;
        boolean z;
        C3483sb c3483sb2;
        switch (i) {
            case 1:
                dya dyaVar = (dya) dkk.m9323a(parcel, dya.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c3483sb2 = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    c3483sb2 = queryLocalInterface instanceof AbstractC3482sa ? (AbstractC3482sa) queryLocalInterface : new C3483sb(readStrongBinder);
                }
                mo7214a(dyaVar, c3483sb2);
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    c3480rz = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    c3480rz = queryLocalInterface2 instanceof AbstractC3479ry ? (AbstractC3479ry) queryLocalInterface2 : new C3480rz(readStrongBinder2);
                }
                mo7211a(c3480rz);
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                boolean a = mo7217a();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, a);
                z = true;
                break;
            case 4:
                String b = mo7208b();
                parcel2.writeNoException();
                parcel2.writeString(b);
                z = true;
                break;
            case 5:
                mo7216a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 6:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    c3484sc = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    c3484sc = queryLocalInterface3 instanceof AbstractC3485sd ? (AbstractC3485sd) queryLocalInterface3 : new C3484sc(readStrongBinder3);
                }
                mo7210a(c3484sc);
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                mo7209a((C3489sh) dkk.m9323a(parcel, C3489sh.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 8:
                mo7213a(eas.m8097a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 9:
                Bundle c = mo7206c();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, c);
                z = true;
                break;
            case 10:
                mo7215a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), dkk.m9325a(parcel));
                parcel2.writeNoException();
                z = true;
                break;
            case 11:
                AbstractC3474rt d = mo7205d();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, d);
                z = true;
                break;
            case 12:
                eav e = mo7204e();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, e);
                z = true;
                break;
            case 13:
                mo7212a(eat.m8096a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 14:
                dya dyaVar2 = (dya) dkk.m9323a(parcel, dya.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    c3483sb = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    c3483sb = queryLocalInterface4 instanceof AbstractC3482sa ? (AbstractC3482sa) queryLocalInterface4 : new C3483sb(readStrongBinder4);
                }
                mo7207b(dyaVar2, c3483sb);
                parcel2.writeNoException();
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
