package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzbz.class */
public final class zzbz extends zzce {
    private final AtomicReference zza = new AtomicReference();
    private boolean zzb;

    public static final Object zze(Bundle bundle, Class cls) {
        Object obj = null;
        if (bundle != null) {
            Object obj2 = bundle.get("r");
            obj = null;
            if (obj2 != null) {
                try {
                    obj = cls.cast(obj2);
                } catch (ClassCastException e) {
                    String.format("Unexpected object type. Expected, Received: %s, %s", cls.getCanonicalName(), obj2.getClass().getCanonicalName());
                    throw e;
                }
            }
        }
        return obj;
    }

    public final Bundle zzb(long j) {
        Bundle bundle;
        synchronized (this.zza) {
            if (!this.zzb) {
                try {
                    this.zza.wait(j);
                } catch (InterruptedException e) {
                    return null;
                }
            }
            bundle = (Bundle) this.zza.get();
        }
        return bundle;
    }

    public final String zzc(long j) {
        return (String) zze(zzb(j), String.class);
    }

    @Override // com.google.android.gms.internal.measurement.zzcf
    public final void zzd(Bundle bundle) {
        synchronized (this.zza) {
            this.zza.set(bundle);
            this.zzb = true;
            this.zza.notify();
        }
    }
}
