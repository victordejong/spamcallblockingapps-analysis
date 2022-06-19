package com.google.android.gms.internal.ads;

import com.android.volley.DefaultRetryPolicy;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzr.class */
public final class zzr implements zzak {
    private int zzab;
    private int zzac;
    private final int zzad;
    private final float zzae;

    public zzr() {
        this(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 1, 1.0f);
    }

    private zzr(int i, int i2, float f) {
        this.zzab = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS;
        this.zzad = 1;
        this.zzae = 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzak
    public final void zza(zzap zzapVar) throws zzap {
        boolean z = true;
        int i = this.zzac + 1;
        this.zzac = i;
        int i2 = this.zzab;
        this.zzab = i2 + ((int) (i2 * this.zzae));
        if (i > this.zzad) {
            z = false;
        }
        if (z) {
            return;
        }
        throw zzapVar;
    }

    @Override // com.google.android.gms.internal.ads.zzak
    public final int zzb() {
        return this.zzab;
    }

    @Override // com.google.android.gms.internal.ads.zzak
    public final int zzc() {
        return this.zzac;
    }
}
