package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i40.class */
public abstract class i40 extends BinderC6649k2 implements k40 {
    public i40() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        l40 l40Var;
        if (i == 3) {
            AbstractC6640ju mo11464b = mo11464b();
            parcel2.writeNoException();
            C6686l2.m13741f(parcel2, mo11464b);
            return true;
        } else if (i == 4) {
            mo11463c();
            parcel2.writeNoException();
            return true;
        } else if (i == 5) {
            AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder());
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                l40Var = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                l40Var = queryLocalInterface instanceof n40 ? (n40) queryLocalInterface : new l40(readStrongBinder);
            }
            mo11460g6(m16746D0, l40Var);
            parcel2.writeNoException();
            return true;
        } else if (i == 6) {
            mo11466E(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i != 7) {
            return false;
        } else {
            AbstractC6421dz mo11462d = mo11462d();
            parcel2.writeNoException();
            C6686l2.m13741f(parcel2, mo11462d);
            return true;
        }
    }
}
