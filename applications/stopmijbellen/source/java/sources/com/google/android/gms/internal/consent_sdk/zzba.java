package com.google.android.gms.internal.consent_sdk;

import java.util.concurrent.atomic.AtomicReference;
import p231s4.AbstractC4296f;
import p231s4.AbstractC4297g;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzba.class */
public final class zzba {
    private final zzcl<zzas> zza;
    private final AtomicReference<zzbc> zzb = new AtomicReference<>();

    public zzba(zzcl<zzas> zzclVar) {
        this.zza = zzclVar;
    }

    public final void zza(AbstractC4297g abstractC4297g, AbstractC4296f abstractC4296f) {
        zzcd.zza();
        zzbc zzbcVar = this.zzb.get();
        if (zzbcVar == null) {
            abstractC4296f.onConsentFormLoadFailure(new zzj(3, "No available form can be built.").zza());
            return;
        }
        zzas zzb = this.zza.zzb();
        zzb.zza(zzbcVar);
        zzb.zzb().zza().zzb(abstractC4297g, abstractC4296f);
    }

    public final void zzb(zzbc zzbcVar) {
        this.zzb.set(zzbcVar);
    }

    public final boolean zzc() {
        return this.zzb.get() != null;
    }
}
