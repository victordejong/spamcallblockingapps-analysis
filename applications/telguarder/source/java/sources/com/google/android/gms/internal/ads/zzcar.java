package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcar.class */
public final class zzcar implements zzeqb<zzcco> {
    private final zzcaq zzgbx;

    private zzcar(zzcaq zzcaqVar) {
        this.zzgbx = zzcaqVar;
    }

    public static zzcar zzc(zzcaq zzcaqVar) {
        return new zzcar(zzcaqVar);
    }

    public static zzcco zzd(zzcaq zzcaqVar) {
        return (zzcco) zzeqh.zza(zzcaqVar.zzanb(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzd(this.zzgbx);
    }
}
