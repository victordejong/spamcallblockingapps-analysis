package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddk.class */
public final class zzddk implements zzdfi<zzddl> {
    private final zzdmu zzfrb;
    private final zzdzv zzghl;

    public zzddk(zzdzv zzdzvVar, zzdmu zzdmuVar) {
        this.zzghl = zzdzvVar;
        this.zzfrb = zzdmuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzddl> zzasy() {
        return this.zzghl.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzddn
            private final zzddk zzhcf;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhcf = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzhcf.zzath();
            }
        });
    }

    public final /* synthetic */ zzddl zzath() throws Exception {
        return new zzddl(this.zzfrb);
    }
}
