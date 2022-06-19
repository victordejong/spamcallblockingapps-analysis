package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzu.class */
public final class zzu extends zza implements zzs {
    public zzu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.zzs
    public final int zza() {
        Parcel zza = zza(2, m3778a_());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.measurement.zzs
    public final void zza(String str, String str2, Bundle bundle, long j) {
        Parcel m3778a_ = m3778a_();
        m3778a_.writeString(str);
        m3778a_.writeString(str2);
        zzb.zza(m3778a_, bundle);
        m3778a_.writeLong(j);
        zzb(1, m3778a_);
    }
}
