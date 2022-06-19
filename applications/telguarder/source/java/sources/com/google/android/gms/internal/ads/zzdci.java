package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdci.class */
public final class zzdci implements zzdfi<zzdcj> {
    private final zzdnp zzfwy;
    private final zzdzv zzghl;
    private final String zzgzy;
    private final zzcip zzhbq;

    public zzdci(zzdzv zzdzvVar, zzcip zzcipVar, zzdnp zzdnpVar, String str) {
        this.zzghl = zzdzvVar;
        this.zzhbq = zzcipVar;
        this.zzfwy = zzdnpVar;
        this.zzgzy = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdcj> zzasy() {
        return this.zzghl.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzdcl
            private final zzdci zzhbt;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhbt = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzhbt.zzate();
            }
        });
    }

    public final /* synthetic */ zzdcj zzate() throws Exception {
        return new zzdcj(this.zzhbq.zzq(this.zzfwy.zzhkx, this.zzgzy), this.zzhbq.zzapx());
    }
}
