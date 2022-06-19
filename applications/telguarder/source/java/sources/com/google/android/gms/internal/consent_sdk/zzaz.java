package com.google.android.gms.internal.consent_sdk;

import com.google.android.ump.UserMessagingPlatform;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzaz.class */
public final class zzaz {
    private final zzct<zzau> zza;
    private final AtomicReference<zzbb> zzb = new AtomicReference<>();

    public zzaz(zzct<zzau> zzctVar) {
        this.zza = zzctVar;
    }

    public final void zza(zzbb zzbbVar) {
        this.zzb.set(zzbbVar);
    }

    public final void zza(UserMessagingPlatform.OnConsentFormLoadSuccessListener onConsentFormLoadSuccessListener, UserMessagingPlatform.OnConsentFormLoadFailureListener onConsentFormLoadFailureListener) {
        zzcd.zza();
        zzbb zzbbVar = this.zzb.get();
        if (zzbbVar == null) {
            onConsentFormLoadFailureListener.onConsentFormLoadFailure(new zzk(3, "No available form can be built.").zza());
        } else {
            this.zza.zza().zza(zzbbVar).zza().zza().zza(onConsentFormLoadSuccessListener, onConsentFormLoadFailureListener);
        }
    }

    public final boolean zza() {
        return this.zzb.get() != null;
    }
}
