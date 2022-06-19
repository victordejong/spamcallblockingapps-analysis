package com.google.android.gms.internal.ads;

import com.facebook.internal.AnalyticsEvents;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcax.class */
public final class zzcax implements zzeqb<String> {
    public static zzcax zzane() {
        zzcax zzcaxVar;
        zzcaxVar = zzcba.zzgce;
        return zzcaxVar;
    }

    public static String zzanf() {
        return (String) zzeqh.zza(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE, "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzanf();
    }
}
