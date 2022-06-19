package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzblb.class */
public final class zzblb implements zzeqb<String> {
    public static zzblb zzajm() {
        zzblb zzblbVar;
        zzblbVar = zzble.zzfub;
        return zzblbVar;
    }

    public static String zzajn() {
        return (String) zzeqh.zza("app_open_ad", "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzajn();
    }
}
