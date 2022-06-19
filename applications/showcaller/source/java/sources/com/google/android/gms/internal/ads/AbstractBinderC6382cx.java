package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.ads.cx */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cx.class */
public abstract class AbstractBinderC6382cx extends BinderC6649k2 implements AbstractC6419dx {
    public AbstractBinderC6382cx() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String mo15661b = mo15661b();
            parcel2.writeNoException();
            parcel2.writeString(mo15661b);
            return true;
        } else if (i == 2) {
            String mo15660c = mo15660c();
            parcel2.writeNoException();
            parcel2.writeString(mo15660c);
            return true;
        } else if (i == 3) {
            mo15663Y(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i == 4) {
            mo15662a();
            parcel2.writeNoException();
            return true;
        } else if (i != 5) {
            return false;
        } else {
            mo15659d();
            parcel2.writeNoException();
            return true;
        }
    }
}
