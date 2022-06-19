package com.google.android.gms.internal.ads;

import com.google.firebase.analytics.FirebaseAnalytics;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdvy.class */
final class zzdvy extends zzdvv {
    static final zzdvy zzhvt = new zzdvy();

    private zzdvy() {
        super("CharMatcher.none()");
    }

    @Override // com.google.android.gms.internal.ads.zzdvu
    public final int zza(CharSequence charSequence, int i) {
        zzdwl.zzb(i, charSequence.length(), FirebaseAnalytics.Param.INDEX);
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdvu
    public final boolean zzc(char c) {
        return false;
    }
}
