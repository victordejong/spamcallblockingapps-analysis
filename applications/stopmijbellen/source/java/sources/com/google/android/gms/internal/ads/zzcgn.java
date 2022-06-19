package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.common.util.Clock;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgn.class */
public final class zzcgn {
    private Context zza;
    private Clock zzb;
    private zzg zzc;
    private zzchh zzd;

    private zzcgn() {
    }

    public /* synthetic */ zzcgn(zzcgm zzcgmVar) {
    }

    public final zzcgn zza(zzg zzgVar) {
        this.zzc = zzgVar;
        return this;
    }

    public final zzcgn zzb(Context context) {
        Objects.requireNonNull(context);
        this.zza = context;
        return this;
    }

    public final zzcgn zzc(Clock clock) {
        Objects.requireNonNull(clock);
        this.zzb = clock;
        return this;
    }

    public final zzcgn zzd(zzchh zzchhVar) {
        this.zzd = zzchhVar;
        return this;
    }

    public final zzchi zze() {
        zzgpz.zzc(this.zza, Context.class);
        zzgpz.zzc(this.zzb, Clock.class);
        zzgpz.zzc(this.zzc, zzg.class);
        zzgpz.zzc(this.zzd, zzchh.class);
        return new zzcgp(this.zza, this.zzb, this.zzc, this.zzd, null);
    }
}
