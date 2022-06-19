package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/be0.class */
public abstract class be0 extends BinderC6649k2 implements ce0 {
    public be0() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
    }

    /* renamed from: E6 */
    public static ce0 m16395E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
        return queryLocalInterface instanceof ce0 ? (ce0) queryLocalInterface : new ae0(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String mo10036a = mo10036a();
            parcel2.writeNoException();
            parcel2.writeString(mo10036a);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int mo10035d = mo10035d();
            parcel2.writeNoException();
            parcel2.writeInt(mo10035d);
            return true;
        }
    }
}
