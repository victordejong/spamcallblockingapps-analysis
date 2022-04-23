package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzf.class */
public final class zzf extends zza implements zzd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzf(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // com.google.android.gms.internal.measurement.zzd
    public final Bundle zza(Bundle bundle) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, bundle);
        Parcel b = m13466b(1, a);
        Bundle bundle2 = (Bundle) zzb.m13404a(b, Bundle.CREATOR);
        b.recycle();
        return bundle2;
    }
}
