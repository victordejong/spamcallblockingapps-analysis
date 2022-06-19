package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q31.class */
public final class q31 extends m81<s31> {

    /* renamed from: e */
    private boolean f28306e = false;

    public q31(Set<ja1<s31>> set) {
        super(set);
    }

    public final void zza() {
        synchronized (this) {
            if (!this.f28306e) {
                m13339Q0(p31.f27827a);
                this.f28306e = true;
            }
        }
    }
}
