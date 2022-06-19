package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.ads.fz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fz.class */
public abstract class AbstractBinderC6496fz extends BinderC6649k2 implements AbstractC6533gz {
    public AbstractBinderC6496fz() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    /* renamed from: E6 */
    public static AbstractC6533gz m15025E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        return queryLocalInterface instanceof AbstractC6533gz ? (AbstractC6533gz) queryLocalInterface : new C6459ez(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            AbstractC6253a mo11257b = mo11257b();
            parcel2.writeNoException();
            C6686l2.m13741f(parcel2, mo11257b);
            return true;
        } else if (i == 2) {
            Uri mo11256c = mo11256c();
            parcel2.writeNoException();
            C6686l2.m13742e(parcel2, mo11256c);
            return true;
        } else if (i == 3) {
            double mo11254e = mo11254e();
            parcel2.writeNoException();
            parcel2.writeDouble(mo11254e);
            return true;
        } else if (i == 4) {
            int mo11258a = mo11258a();
            parcel2.writeNoException();
            parcel2.writeInt(mo11258a);
            return true;
        } else if (i != 5) {
            return false;
        } else {
            int mo11255d = mo11255d();
            parcel2.writeNoException();
            parcel2.writeInt(mo11255d);
            return true;
        }
    }
}
