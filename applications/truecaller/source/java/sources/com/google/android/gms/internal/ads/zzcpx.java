package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpx.class */
public final class zzcpx implements zzewl {
    private final zzcqu zza;
    private Context zzb;
    private String zzc;
    private zzbdl zzd;

    public /* synthetic */ zzcpx(zzcqu zzcquVar, zzcql zzcqlVar) {
        this.zza = zzcquVar;
    }

    @Override // com.google.android.gms.internal.ads.zzewl
    public final zzewm zza() {
        zzgli.zzc(this.zzb, Context.class);
        zzgli.zzc(this.zzc, String.class);
        zzgli.zzc(this.zzd, zzbdl.class);
        return new zzcpy(this.zza, this.zzb, this.zzc, this.zzd, null);
    }

    @Override // com.google.android.gms.internal.ads.zzewl
    public final /* bridge */ /* synthetic */ zzewl zzb(zzbdl zzbdlVar) {
        Objects.requireNonNull(zzbdlVar);
        this.zzd = zzbdlVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzewl
    public final /* bridge */ /* synthetic */ zzewl zzc(String str) {
        Objects.requireNonNull(str);
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzewl
    public final /* bridge */ /* synthetic */ zzewl zzd(Context context) {
        Objects.requireNonNull(context);
        this.zzb = context;
        return this;
    }
}
