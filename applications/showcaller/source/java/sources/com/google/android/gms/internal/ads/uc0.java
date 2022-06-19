package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzbc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uc0.class */
public abstract class uc0 extends BinderC6649k2 implements vc0 {
    public uc0() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo10044s4((ParcelFileDescriptor) C6686l2.m13744c(parcel, ParcelFileDescriptor.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            mo10045C6((zzbc) C6686l2.m13744c(parcel, zzbc.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
