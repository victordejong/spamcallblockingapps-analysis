package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.re */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/re.class */
public abstract class AbstractBinderC3459re extends dkl implements AbstractC3456rb {
    public AbstractBinderC3459re() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.rb] */
    /* renamed from: a */
    public static AbstractC3456rb m7266a(IBinder iBinder) {
        C3458rd c3458rd;
        if (iBinder == null) {
            c3458rd = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
            c3458rd = queryLocalInterface instanceof AbstractC3456rb ? (AbstractC3456rb) queryLocalInterface : new C3458rd(iBinder);
        }
        return c3458rd;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        C3447qt c3447qt;
        boolean z;
        switch (i) {
            case 1:
                mo7261a();
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo7257b();
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                mo7256c();
                parcel2.writeNoException();
                z = true;
                break;
            case 4:
                mo7255d();
                parcel2.writeNoException();
                z = true;
                break;
            case 5:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c3447qt = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardItem");
                    c3447qt = queryLocalInterface instanceof AbstractC3445qr ? (AbstractC3445qr) queryLocalInterface : new C3447qt(readStrongBinder);
                }
                mo7258a(c3447qt);
                parcel2.writeNoException();
                z = true;
                break;
            case 6:
                mo7254e();
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                mo7260a(parcel.readInt());
                parcel2.writeNoException();
                z = true;
                break;
            case 8:
                mo7253f();
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
