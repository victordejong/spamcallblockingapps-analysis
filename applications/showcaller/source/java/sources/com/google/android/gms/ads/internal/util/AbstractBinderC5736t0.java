package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.internal.ads.BinderC6649k2;
import com.google.android.gms.internal.ads.C6686l2;
/* renamed from: com.google.android.gms.ads.internal.util.t0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/t0.class */
public abstract class AbstractBinderC5736t0 extends BinderC6649k2 implements AbstractC5739u0 {
    public AbstractBinderC5736t0() {
        super("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            boolean zze = zze(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            C6686l2.m13745b(parcel2, zze);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            zzf(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }
    }
}
