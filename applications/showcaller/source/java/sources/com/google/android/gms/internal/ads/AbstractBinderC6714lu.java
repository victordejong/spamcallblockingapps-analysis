package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.lu */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lu.class */
public abstract class AbstractBinderC6714lu extends BinderC6649k2 implements AbstractC6751mu {
    public AbstractBinderC6714lu() {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo11797a();
        } else if (i == 2) {
            mo11796d();
        } else if (i == 3) {
            zzg();
        } else if (i == 4) {
            mo11795f();
        } else if (i != 5) {
            return false;
        } else {
            mo11794j4(C6686l2.m13746a(parcel));
        }
        parcel2.writeNoException();
        return true;
    }
}
