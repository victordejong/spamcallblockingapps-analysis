package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckn.class */
public final class zzckn {
    private final Executor executor;
    private final zzckw zzglo;
    private final Map<String, String> zzgls;

    public zzckn(zzckw zzckwVar, Executor executor) {
        this.zzglo = zzckwVar;
        this.zzgls = zzckwVar.zzaqx();
        this.executor = executor;
    }

    public final zzckq zzaqr() {
        zzckq zzaqs;
        zzaqs = new zzckq(this).zzaqs();
        return zzaqs;
    }
}
