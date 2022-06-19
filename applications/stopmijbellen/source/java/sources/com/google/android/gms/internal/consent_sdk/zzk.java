package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import p231s4.AbstractC4290c;
import p231s4.C4293d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzk.class */
public final class zzk implements AbstractC4290c {
    private final zzam zza;
    private final zzv zzb;
    private final zzba zzc;

    public zzk(zzam zzamVar, zzv zzvVar, zzba zzbaVar) {
        this.zza = zzamVar;
        this.zzb = zzvVar;
        this.zzc = zzbaVar;
    }

    @Override // p231s4.AbstractC4290c
    public final int getConsentStatus() {
        return this.zza.zza();
    }

    @Override // p231s4.AbstractC4290c
    public final boolean isConsentFormAvailable() {
        return this.zzc.zzc();
    }

    @Override // p231s4.AbstractC4290c
    public final void requestConsentInfoUpdate(Activity activity, C4293d c4293d, AbstractC4290c.AbstractC4292b abstractC4292b, AbstractC4290c.AbstractC4291a abstractC4291a) {
        this.zzb.zzc(activity, c4293d, abstractC4292b, abstractC4291a);
    }

    public final void reset() {
        this.zzc.zzb(null);
        this.zza.zzd();
    }
}
