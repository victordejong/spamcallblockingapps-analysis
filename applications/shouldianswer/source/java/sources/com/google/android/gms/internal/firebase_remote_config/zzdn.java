package com.google.android.gms.internal.firebase_remote_config;

import com.google.firebase.analytics.FirebaseAnalytics;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzdn.class */
final class zzdn extends zzdo {
    static final zzdn zzhe = new zzdn();

    private zzdn() {
        super("CharMatcher.none()");
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzdj
    public final int zza(CharSequence charSequence, int i) {
        zzdt.zza(i, charSequence.length(), FirebaseAnalytics.Param.INDEX);
        return -1;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzdj
    public final boolean zzb(char c) {
        return false;
    }
}
