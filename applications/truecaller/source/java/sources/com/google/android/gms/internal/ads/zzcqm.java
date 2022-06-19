package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcqm.class */
public final class zzcqm implements zzezs {
    private final zzcqu zza;
    private Context zzb;
    private String zzc;

    public /* synthetic */ zzcqm(zzcqu zzcquVar, zzcql zzcqlVar) {
        this.zza = zzcquVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezs
    public final zzezt zza() {
        zzgli.zzc(this.zzb, Context.class);
        return new zzcqn(this.zza, this.zzb, this.zzc, null);
    }

    @Override // com.google.android.gms.internal.ads.zzezs
    public final /* bridge */ /* synthetic */ zzezs zzb(String str) {
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzezs
    public final /* bridge */ /* synthetic */ zzezs zzc(Context context) {
        Objects.requireNonNull(context);
        this.zzb = context;
        return this;
    }
}
