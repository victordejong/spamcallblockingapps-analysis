package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.ml */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ml.class */
public abstract class AbstractBinderC6742ml extends BinderC6649k2 implements AbstractC6779nl {
    public AbstractBinderC6742ml() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    /* renamed from: E6 */
    public static AbstractC6779nl m13169E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
        return queryLocalInterface instanceof AbstractC6779nl ? (AbstractC6779nl) queryLocalInterface : new C6705ll(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        C6594il c6594il;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c6594il = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
                c6594il = queryLocalInterface instanceof AbstractC6668kl ? (AbstractC6668kl) queryLocalInterface : new C6594il(readStrongBinder);
            }
            mo12889G1(c6594il);
        } else if (i == 2) {
            parcel.readInt();
        } else if (i != 3) {
            return false;
        } else {
            mo12888R((zzbcz) C6686l2.m13744c(parcel, zzbcz.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
