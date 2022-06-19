package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.kt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kt.class */
public abstract class AbstractBinderC3285kt extends dkl implements AbstractC3286ku {
    public AbstractBinderC3285kt() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.ku] */
    /* renamed from: a */
    public static AbstractC3286ku m7660a(IBinder iBinder) {
        C3288kw c3288kw;
        if (iBinder == null) {
            c3288kw = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
            c3288kw = queryLocalInterface instanceof AbstractC3286ku ? (AbstractC3286ku) queryLocalInterface : new C3288kw(iBinder);
        }
        return c3288kw;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        C3290ky c3290ky;
        boolean z;
        switch (i) {
            case 1:
                mo7591a();
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo7581b();
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                mo7590a(parcel.readInt());
                parcel2.writeNoException();
                z = true;
                break;
            case 4:
                mo7578c();
                parcel2.writeNoException();
                z = true;
                break;
            case 5:
                mo7577d();
                parcel2.writeNoException();
                z = true;
                break;
            case 6:
                mo7576e();
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c3290ky = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                    c3290ky = queryLocalInterface instanceof AbstractC3287kv ? (AbstractC3287kv) queryLocalInterface : new C3290ky(readStrongBinder);
                }
                mo7586a(c3290ky);
                parcel2.writeNoException();
                z = true;
                break;
            case 8:
                mo7575f();
                parcel2.writeNoException();
                z = true;
                break;
            case 9:
                mo7582a(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 10:
                mo7587a(AbstractBinderC2900cu.m10652a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 11:
                mo7574g();
                parcel2.writeNoException();
                z = true;
                break;
            case 12:
                mo7583a(parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 13:
                mo7573h();
                parcel2.writeNoException();
                z = true;
                break;
            case 14:
                mo7585a((C3472rr) dkk.m9323a(parcel, C3472rr.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 15:
                mo7572i();
                parcel2.writeNoException();
                z = true;
                break;
            case 16:
                mo7584a(AbstractBinderC3473rs.m7218a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 17:
                mo7580b(parcel.readInt());
                parcel2.writeNoException();
                z = true;
                break;
            case 18:
                mo7571j();
                parcel2.writeNoException();
                z = true;
                break;
            case 19:
                mo7588a((Bundle) dkk.m9323a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 20:
                mo7570k();
                parcel2.writeNoException();
                z = true;
                break;
            case 21:
                mo7579b(parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 22:
                mo7589a(parcel.readInt(), parcel.readString());
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
