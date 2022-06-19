package com.google.android.gms.internal.firebase_remote_config;

import com.google.firebase.remoteconfig.FirebaseRemoteConfigSettings;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfb.class */
public final class zzfb {
    private long zzlw;
    private int zzlx;
    private FirebaseRemoteConfigSettings zzly;

    /* JADX INFO: Access modifiers changed from: private */
    public zzfb() {
    }

    public final zzfb zzc(long j) {
        this.zzlw = j;
        return this;
    }

    public final zzfb zzc(FirebaseRemoteConfigSettings firebaseRemoteConfigSettings) {
        this.zzly = firebaseRemoteConfigSettings;
        return this;
    }

    public final zzez zzdf() {
        return new zzez(this.zzlw, this.zzlx, this.zzly);
    }

    public final zzfb zzn(int i) {
        this.zzlx = i;
        return this;
    }
}
