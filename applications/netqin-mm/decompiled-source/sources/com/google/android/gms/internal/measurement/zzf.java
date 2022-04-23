package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzf.class */
public final class zzf extends zza implements zzd {
    public zzf(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // com.google.android.gms.internal.measurement.zzd
    /* renamed from: d */
    public final Bundle mo9806d(Bundle bundle) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, bundle);
        Parcel a = m10480a(1, W);
        Bundle bundle2 = (Bundle) zzb.m10428a(a, Bundle.CREATOR);
        a.recycle();
        return bundle2;
    }
}
