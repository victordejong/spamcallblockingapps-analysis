package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.du */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/du.class */
public abstract class AbstractBinderC12426du extends dvd implements AbstractC12394dr {
    public AbstractBinderC12426du() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    /* renamed from: a */
    public static AbstractC12394dr m15703a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        return queryLocalInterface instanceof AbstractC12394dr ? (AbstractC12394dr) queryLocalInterface : new C12425dt(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            AbstractC12126b a = mo15752a();
            parcel2.writeNoException();
            dvc.m15676a(parcel2, a);
            return true;
        } else if (i == 2) {
            Uri b = mo15751b();
            parcel2.writeNoException();
            dvc.m15671b(parcel2, b);
            return true;
        } else if (i == 3) {
            double c = mo15750c();
            parcel2.writeNoException();
            parcel2.writeDouble(c);
            return true;
        } else if (i == 4) {
            int d = mo15749d();
            parcel2.writeNoException();
            parcel2.writeInt(d);
            return true;
        } else if (i != 5) {
            return false;
        } else {
            int e = mo15748e();
            parcel2.writeNoException();
            parcel2.writeInt(e);
            return true;
        }
    }
}
