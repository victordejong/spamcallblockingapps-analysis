package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckw.class */
public final class zzckw extends zzckv {
    private final zzdsh zzgmd;

    public zzckw(Executor executor, zzazo zzazoVar, zzdsh zzdshVar, zzdsj zzdsjVar) {
        super(executor, zzazoVar, zzdsjVar);
        this.zzgmd = zzdshVar;
        zzaqw();
    }

    @Override // com.google.android.gms.internal.ads.zzckv
    public final void zzaqw() {
        this.zzgmd.zzq(this.zzgls);
    }

    public final Map<String, String> zzaqx() {
        return new HashMap(this.zzgls);
    }
}
