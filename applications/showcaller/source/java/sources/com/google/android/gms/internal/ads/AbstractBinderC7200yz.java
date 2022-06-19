package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.yz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yz.class */
public abstract class AbstractBinderC7200yz extends BinderC6649k2 implements AbstractC7237zz {
    public AbstractBinderC7200yz() {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    /* renamed from: E6 */
    public static AbstractC7237zz m8647E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        return queryLocalInterface instanceof AbstractC7237zz ? (AbstractC7237zz) queryLocalInterface : new C7126wz(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                String mo8139B = mo8139B(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(mo8139B);
                return true;
            case 2:
                AbstractC6533gz mo8129p = mo8129p(parcel.readString());
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo8129p);
                return true;
            case 3:
                List<String> zzg = zzg();
                parcel2.writeNoException();
                parcel2.writeStringList(zzg);
                return true;
            case 4:
                String mo8136f = mo8136f();
                parcel2.writeNoException();
                parcel2.writeString(mo8136f);
                return true;
            case 5:
                mo8138H0(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                mo8135g();
                parcel2.writeNoException();
                return true;
            case 7:
                AbstractC6640ju mo8134h = mo8134h();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo8134h);
                return true;
            case 8:
                mo8133i();
                parcel2.writeNoException();
                return true;
            case 9:
                AbstractC6253a mo8132j = mo8132j();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo8132j);
                return true;
            case 10:
                boolean mo8137S = mo8137S(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, mo8137S);
                return true;
            case 11:
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, null);
                return true;
            case 12:
                boolean mo8130n = mo8130n();
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, mo8130n);
                return true;
            case 13:
                boolean mo8131l = mo8131l();
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, mo8131l);
                return true;
            case 14:
                mo8127x2(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                mo8128s();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
