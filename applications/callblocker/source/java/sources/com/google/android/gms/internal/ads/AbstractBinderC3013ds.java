package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.ds */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ds.class */
public abstract class AbstractBinderC3013ds extends dkl implements AbstractC3008dp {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.dp] */
    /* renamed from: a */
    public static AbstractC3008dp m8768a(IBinder iBinder) {
        C3012dr c3012dr;
        if (iBinder == null) {
            c3012dr = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
            c3012dr = queryLocalInterface instanceof AbstractC3008dp ? (AbstractC3008dp) queryLocalInterface : new C3012dr(iBinder);
        }
        return c3012dr;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        if (i == 2) {
            boolean a = mo8830a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            dkk.m9321a(parcel2, a);
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
