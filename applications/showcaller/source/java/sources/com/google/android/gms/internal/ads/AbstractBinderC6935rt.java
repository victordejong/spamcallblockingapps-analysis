package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.rt */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rt.class */
public abstract class AbstractBinderC6935rt extends BinderC6649k2 implements AbstractC6972st {
    public AbstractBinderC6935rt() {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    /* renamed from: E6 */
    public static AbstractC6972st m11297E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
        return queryLocalInterface instanceof AbstractC6972st ? (AbstractC6972st) queryLocalInterface : new C6898qt(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String mo9058a = mo9058a();
            parcel2.writeNoException();
            parcel2.writeString(mo9058a);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            String mo9057d = mo9057d();
            parcel2.writeNoException();
            parcel2.writeString(mo9057d);
            return true;
        }
    }
}
