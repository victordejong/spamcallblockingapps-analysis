package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.rl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rl.class */
public abstract class AbstractBinderC6927rl extends BinderC6649k2 implements AbstractC6964sl {
    public AbstractBinderC6927rl() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo10996c();
        } else if (i == 2) {
            mo10994e();
        } else if (i == 3) {
            mo10993h0((zzbcz) C6686l2.m13744c(parcel, zzbcz.CREATOR));
        } else if (i == 4) {
            mo10995d();
        } else if (i != 5) {
            return false;
        } else {
            zzg();
        }
        parcel2.writeNoException();
        return true;
    }
}
