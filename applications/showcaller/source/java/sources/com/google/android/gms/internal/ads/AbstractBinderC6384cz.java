package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.ads.cz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cz.class */
public abstract class AbstractBinderC6384cz extends BinderC6649k2 implements AbstractC6421dz {
    public AbstractBinderC6384cz() {
        super("com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        n00 n00Var;
        switch (i) {
            case 2:
                float mo15649a = mo15649a();
                parcel2.writeNoException();
                parcel2.writeFloat(mo15649a);
                return true;
            case 3:
                zzf(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                AbstractC6253a zzg = zzg();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, zzg);
                return true;
            case 5:
                float mo15648f = mo15648f();
                parcel2.writeNoException();
                parcel2.writeFloat(mo15648f);
                return true;
            case 6:
                float zzi = zzi();
                parcel2.writeNoException();
                parcel2.writeFloat(zzi);
                return true;
            case 7:
                AbstractC6640ju mo15647g = mo15647g();
                parcel2.writeNoException();
                C6686l2.m13741f(parcel2, mo15647g);
                return true;
            case 8:
                boolean mo15646h = mo15646h();
                parcel2.writeNoException();
                C6686l2.m13745b(parcel2, mo15646h);
                return true;
            case 9:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    n00Var = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener");
                    n00Var = queryLocalInterface instanceof n00 ? (n00) queryLocalInterface : new n00(readStrongBinder);
                }
                mo15650N2(n00Var);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
