package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ead.class */
public abstract class ead extends dkl implements eae {
    public ead() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                mo7928a();
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo7927a(parcel.readFloat());
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                mo7922a(parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 4:
                mo7920a(dkk.m9325a(parcel));
                parcel2.writeNoException();
                z = true;
                break;
            case 5:
                mo7926a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 6:
                mo7921a(parcel.readString(), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                float b = mo7919b();
                parcel2.writeNoException();
                parcel2.writeFloat(b);
                z = true;
                break;
            case 8:
                boolean c = mo7917c();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, c);
                z = true;
                break;
            case 9:
                String d = mo7916d();
                parcel2.writeNoException();
                parcel2.writeString(d);
                z = true;
                break;
            case 10:
                mo7918b(parcel.readString());
                parcel2.writeNoException();
                z = true;
                break;
            case 11:
                mo7923a(AbstractBinderC3279kn.m7664a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 12:
                mo7924a(AbstractBinderC3165gh.m7815a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 13:
                List<C3159gb> e = mo7915e();
                parcel2.writeNoException();
                parcel2.writeTypedList(e);
                z = true;
                break;
            case 14:
                mo7925a((ech) dkk.m9323a(parcel, ech.CREATOR));
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
