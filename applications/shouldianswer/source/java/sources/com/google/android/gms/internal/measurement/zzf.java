package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzf.class */
public final class zzf extends zza implements zzd {
    public zzf(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // com.google.android.gms.internal.measurement.zzd
    public final Bundle zza(Bundle bundle) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, bundle);
        Parcel zza = zza(1, m3778a_);
        Bundle bundle2 = (Bundle) zzb.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle2;
    }
}
