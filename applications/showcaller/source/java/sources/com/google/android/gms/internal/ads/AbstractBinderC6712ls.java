package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.ls */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ls.class */
public abstract class AbstractBinderC6712ls extends BinderC6649k2 implements AbstractC6749ms {
    public AbstractBinderC6712ls() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo13093R4((zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR));
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            String mo13092d = mo13092d();
            parcel2.writeNoException();
            parcel2.writeString(mo13092d);
            return true;
        } else if (i == 3) {
            boolean zzg = zzg();
            parcel2.writeNoException();
            C6686l2.m13745b(parcel2, zzg);
            return true;
        } else if (i == 4) {
            String mo13091f = mo13091f();
            parcel2.writeNoException();
            parcel2.writeString(mo13091f);
            return true;
        } else if (i != 5) {
            return false;
        } else {
            mo13090n3((zzbdg) C6686l2.m13744c(parcel, zzbdg.CREATOR), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }
}
