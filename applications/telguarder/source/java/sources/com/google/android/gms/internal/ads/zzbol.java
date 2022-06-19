package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbol.class */
public final class zzbol implements zzeqb<String> {
    private final zzboj zzfwt;

    private zzbol(zzboj zzbojVar) {
        this.zzfwt = zzbojVar;
    }

    public static zzbol zza(zzboj zzbojVar) {
        return new zzbol(zzbojVar);
    }

    public static String zzb(zzboj zzbojVar) {
        return (String) zzeqh.zza(zzbojVar.zzakz(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzb(this.zzfwt);
    }
}
