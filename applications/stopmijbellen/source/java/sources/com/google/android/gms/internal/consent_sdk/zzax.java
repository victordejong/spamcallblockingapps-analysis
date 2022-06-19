package com.google.android.gms.internal.consent_sdk;

import p231s4.AbstractC4288b;
import p231s4.AbstractC4296f;
import p231s4.AbstractC4297g;
import p231s4.C4295e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzax.class */
public final class zzax implements AbstractC4297g, AbstractC4296f {
    private final AbstractC4297g zza;
    private final AbstractC4296f zzb;

    public /* synthetic */ zzax(AbstractC4297g abstractC4297g, AbstractC4296f abstractC4296f, zzav zzavVar) {
        this.zza = abstractC4297g;
        this.zzb = abstractC4296f;
    }

    @Override // p231s4.AbstractC4296f
    public final void onConsentFormLoadFailure(C4295e c4295e) {
        this.zzb.onConsentFormLoadFailure(c4295e);
    }

    @Override // p231s4.AbstractC4297g
    public final void onConsentFormLoadSuccess(AbstractC4288b abstractC4288b) {
        this.zza.onConsentFormLoadSuccess(abstractC4288b);
    }
}
