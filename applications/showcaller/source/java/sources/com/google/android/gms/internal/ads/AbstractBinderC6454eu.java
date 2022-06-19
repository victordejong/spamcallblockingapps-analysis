package com.google.android.gms.internal.ads;

import android.os.Parcel;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.eu */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/eu.class */
public abstract class AbstractBinderC6454eu extends BinderC6649k2 implements AbstractC6491fu {
    public AbstractBinderC6454eu() {
        super("com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String mo12041a = mo12041a();
            parcel2.writeNoException();
            parcel2.writeString(mo12041a);
            return true;
        } else if (i == 2) {
            String mo12040d = mo12040d();
            parcel2.writeNoException();
            parcel2.writeString(mo12040d);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            List<zzbdp> zzg = zzg();
            parcel2.writeNoException();
            parcel2.writeTypedList(zzg);
            return true;
        }
    }
}
