package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.common.util.Clock;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcef.class */
public final class zzcef {
    private Context zza;
    private Clock zzb;
    private zzg zzc;
    private zzcfa zzd;

    private zzcef() {
    }

    public /* synthetic */ zzcef(zzceg zzcegVar) {
    }

    public final zzcef zza(Context context) {
        Objects.requireNonNull(context);
        this.zza = context;
        return this;
    }

    public final zzcef zzb(Clock clock) {
        Objects.requireNonNull(clock);
        this.zzb = clock;
        return this;
    }

    public final zzcef zzc(zzg zzgVar) {
        this.zzc = zzgVar;
        return this;
    }

    public final zzcef zzd(zzcfa zzcfaVar) {
        this.zzd = zzcfaVar;
        return this;
    }

    public final zzcfb zze() {
        zzgli.zzc(this.zza, Context.class);
        zzgli.zzc(this.zzb, Clock.class);
        zzgli.zzc(this.zzc, zzg.class);
        zzgli.zzc(this.zzd, zzcfa.class);
        return new zzceh(this.zza, this.zzb, this.zzc, this.zzd, null);
    }
}
