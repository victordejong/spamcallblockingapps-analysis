package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaeq.class */
public abstract class zzaeq extends zzgy implements zzaer {
    public zzaeq() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    public static zzaer zzo(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        return queryLocalInterface instanceof zzaer ? (zzaer) queryLocalInterface : new zzaet(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            IObjectWrapper zzti = zzti();
            parcel2.writeNoException();
            zzgx.zza(parcel2, zzti);
            return true;
        } else if (i == 2) {
            Uri uri = getUri();
            parcel2.writeNoException();
            zzgx.zzb(parcel2, uri);
            return true;
        } else if (i == 3) {
            double scale = getScale();
            parcel2.writeNoException();
            parcel2.writeDouble(scale);
            return true;
        } else if (i == 4) {
            int width = getWidth();
            parcel2.writeNoException();
            parcel2.writeInt(width);
            return true;
        } else if (i != 5) {
            return false;
        } else {
            int height = getHeight();
            parcel2.writeNoException();
            parcel2.writeInt(height);
            return true;
        }
    }
}
