package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzp.class */
public final class zzp extends zza implements zzn {
    public zzp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.zzn
    public final void zza(Bundle bundle) {
        Parcel m3778a_ = m3778a_();
        zzb.zza(m3778a_, bundle);
        zzb(1, m3778a_);
    }
}
