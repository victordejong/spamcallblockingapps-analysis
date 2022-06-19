package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzm.class */
public final class zzm extends zzr {
    private final AtomicReference<Bundle> zza = new AtomicReference<>();
    private boolean zzb;

    public static final <T> T zze(Bundle bundle, Class<T> cls) {
        T t = null;
        if (bundle != null) {
            Object obj = bundle.get("r");
            t = null;
            if (obj != null) {
                try {
                    t = cls.cast(obj);
                } catch (ClassCastException e) {
                    Log.w("AM", String.format("Unexpected object type. Expected, Received: %s, %s", cls.getCanonicalName(), obj.getClass().getCanonicalName()), e);
                    throw e;
                }
            }
        }
        return t;
    }

    @Override // com.google.android.gms.internal.measurement.zzs
    public final void zzb(Bundle bundle) {
        synchronized (this.zza) {
            this.zza.set(bundle);
            this.zzb = true;
            this.zza.notify();
        }
    }

    public final String zzc(long j) {
        return (String) zze(zzd(j), String.class);
    }

    public final Bundle zzd(long j) {
        Bundle bundle;
        synchronized (this.zza) {
            if (!this.zzb) {
                try {
                    this.zza.wait(j);
                } catch (InterruptedException e) {
                    return null;
                }
            }
            bundle = this.zza.get();
        }
        return bundle;
    }
}
