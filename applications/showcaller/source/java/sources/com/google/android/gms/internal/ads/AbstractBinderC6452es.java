package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.es */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/es.class */
public abstract class AbstractBinderC6452es extends BinderC6649k2 implements AbstractC6526gs {
    public AbstractBinderC6452es() {
        super("com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                mo12202b();
                break;
            case 2:
                mo12205C(parcel.readInt());
                break;
            case 3:
                break;
            case 4:
                mo12201d();
                break;
            case 5:
                zzg();
                break;
            case 6:
                mo12200f();
                break;
            case 7:
                zzi();
                break;
            case 8:
                mo12204R((zzbcz) C6686l2.m13744c(parcel, zzbcz.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
