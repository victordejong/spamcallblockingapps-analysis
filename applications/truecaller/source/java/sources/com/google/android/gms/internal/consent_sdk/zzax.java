package com.google.android.gms.internal.consent_sdk;

import e.m.a.i.b;
import e.m.a.i.f;
import e.m.a.i.g;
import e.m.a.i.h;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzax.class */
public final class zzax implements g, h {
    private final h zza;
    private final g zzb;

    /* JADX INFO: Access modifiers changed from: private */
    public zzax(h hVar, g gVar) {
        this.zza = hVar;
        this.zzb = gVar;
    }

    public final void onConsentFormLoadFailure(f fVar) {
        this.zzb.onConsentFormLoadFailure(fVar);
    }

    public final void onConsentFormLoadSuccess(b bVar) {
        this.zza.onConsentFormLoadSuccess(bVar);
    }
}
