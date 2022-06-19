package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcps.class */
public final class zzcps implements zzeux {
    private final zzcqu zza;
    private Context zzb;
    private String zzc;

    public /* synthetic */ zzcps(zzcqu zzcquVar, zzcql zzcqlVar) {
        this.zza = zzcquVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeux
    public final zzeuy zza() {
        zzgli.zzc(this.zzb, Context.class);
        zzgli.zzc(this.zzc, String.class);
        return new zzcpt(this.zza, this.zzb, this.zzc, null);
    }

    @Override // com.google.android.gms.internal.ads.zzeux
    public final /* bridge */ /* synthetic */ zzeux zzb(String str) {
        Objects.requireNonNull(str);
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeux
    public final /* bridge */ /* synthetic */ zzeux zzc(Context context) {
        Objects.requireNonNull(context);
        this.zzb = context;
        return this;
    }
}
