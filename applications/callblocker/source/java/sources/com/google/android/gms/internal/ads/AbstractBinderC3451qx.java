package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.qx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qx.class */
public abstract class AbstractBinderC3451qx extends dkl implements AbstractC3452qy {
    public AbstractBinderC3451qx() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.qy] */
    /* renamed from: a */
    public static AbstractC3452qy m7289a(IBinder iBinder) {
        C3455ra c3455ra;
        if (iBinder == null) {
            c3455ra = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
            c3455ra = queryLocalInterface instanceof AbstractC3452qy ? (AbstractC3452qy) queryLocalInterface : new C3455ra(iBinder);
        }
        return c3455ra;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        C3449qv c3449qv;
        C3458rd c3458rd;
        boolean z;
        switch (i) {
            case 1:
                mo7283a((C3462rh) dkk.m9323a(parcel, C3462rh.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo7288a();
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c3458rd = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    c3458rd = queryLocalInterface instanceof AbstractC3456rb ? (AbstractC3456rb) queryLocalInterface : new C3458rd(readStrongBinder);
                }
                mo7284a(c3458rd);
                parcel2.writeNoException();
                z = true;
                break;
            case 4:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            default:
                z = false;
                break;
            case 5:
                boolean b = mo7280b();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, b);
                z = true;
                break;
            case 6:
                mo7277c();
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                mo7274d();
                parcel2.writeNoException();
                z = true;
                break;
            case 8:
                mo7272e();
                parcel2.writeNoException();
                z = true;
                break;
            case 9:
                mo7287a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 10:
                mo7279b(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 11:
                mo7276c(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 12:
                String f = mo7271f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                z = true;
                break;
            case 13:
                mo7282a(parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 14:
                mo7286a(dzu.m8127a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 15:
                Bundle g = mo7270g();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, g);
                z = true;
                break;
            case 16:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    c3449qv = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                    c3449qv = queryLocalInterface2 instanceof AbstractC3450qw ? (AbstractC3450qw) queryLocalInterface2 : new C3449qv(readStrongBinder2);
                }
                mo7285a(c3449qv);
                parcel2.writeNoException();
                z = true;
                break;
            case 17:
                mo7278b(parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 18:
                mo7273d(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 19:
                mo7275c(parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 20:
                boolean h = mo7269h();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, h);
                z = true;
                break;
            case 21:
                eav i3 = mo7268i();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, i3);
                z = true;
                break;
            case 34:
                mo7281a(dkk.m9325a(parcel));
                parcel2.writeNoException();
                z = true;
                break;
        }
        return z;
    }
}
