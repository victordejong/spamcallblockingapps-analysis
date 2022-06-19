package com.google.android.gms.internal.mlkit_common;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzg.class */
public final class zzg {
    private final zzag<zzo> zza;
    private Boolean zzb;
    private boolean zzc;

    private zzg() {
        this.zza = zzad.zze();
        this.zzc = false;
    }

    public /* synthetic */ zzg(zze zzeVar) {
        this();
    }

    public final zzg zza() {
        zzy.zza(this.zzb == null, "A SourcePolicy can only set internal() or external() once.");
        this.zzb = Boolean.TRUE;
        return this;
    }

    public final zzg zzb() {
        zzy.zza(this.zzb == null, "A SourcePolicy can only set internal() or external() once.");
        this.zzb = Boolean.FALSE;
        return this;
    }

    public final zzh zzc() {
        Objects.requireNonNull(this.zzb, "Must call internal() or external() when building a SourcePolicy.");
        return new zzh(this.zzb.booleanValue(), false, this.zza.zza(), null);
    }
}
