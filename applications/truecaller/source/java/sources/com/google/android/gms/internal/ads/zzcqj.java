package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcqj.class */
public final class zzcqj implements zzeye {
    private final zzcqu zza;
    private Context zzb;
    private String zzc;
    private zzbdl zzd;

    public /* synthetic */ zzcqj(zzcqu zzcquVar, zzcql zzcqlVar) {
        this.zza = zzcquVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeye
    public final zzeyf zza() {
        zzgli.zzc(this.zzb, Context.class);
        zzgli.zzc(this.zzc, String.class);
        zzgli.zzc(this.zzd, zzbdl.class);
        return new zzcqk(this.zza, this.zzb, this.zzc, this.zzd, null);
    }

    @Override // com.google.android.gms.internal.ads.zzeye
    public final /* bridge */ /* synthetic */ zzeye zzb(zzbdl zzbdlVar) {
        Objects.requireNonNull(zzbdlVar);
        this.zzd = zzbdlVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeye
    public final /* bridge */ /* synthetic */ zzeye zzc(String str) {
        Objects.requireNonNull(str);
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzeye
    public final /* bridge */ /* synthetic */ zzeye zzd(Context context) {
        Objects.requireNonNull(context);
        this.zzb = context;
        return this;
    }
}
