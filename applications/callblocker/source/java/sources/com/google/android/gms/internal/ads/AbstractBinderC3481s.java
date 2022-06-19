package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/s.class */
public abstract class AbstractBinderC3481s extends dkl implements AbstractC3508t {
    public AbstractBinderC3481s() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                String a = mo7044a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                z = true;
                break;
            case 2:
                String b = mo7042b();
                parcel2.writeNoException();
                parcel2.writeString(b);
                z = true;
                break;
            case 3:
                mo7043a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 4:
                mo7041c();
                parcel2.writeNoException();
                z = true;
                break;
            case 5:
                mo7040d();
                parcel2.writeNoException();
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
