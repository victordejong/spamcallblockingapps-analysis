package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/h83.class */
public final class h83 {

    /* renamed from: a */
    public static final h83 f23825a = new h83(0, 0, 1, 1, null);

    /* renamed from: b */
    public static final AbstractC7093w2<h83> f23826b = js1.f24973a;

    /* renamed from: c */
    public final int f23827c = 1;

    /* renamed from: d */
    private AudioAttributes f23828d;

    /* synthetic */ h83(int i, int i2, int i3, int i4, fj2 fj2Var) {
    }

    /* renamed from: a */
    public final AudioAttributes m14723a() {
        if (this.f23828d == null) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(0).setFlags(0).setUsage(1);
            if (C7101wa.f31475a >= 29) {
                usage.setAllowedCapturePolicy(1);
            }
            this.f23828d = usage.build();
        }
        return this.f23828d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h83.class != obj.getClass()) {
            return false;
        }
        h83 h83Var = (h83) obj;
        return true;
    }

    public final int hashCode() {
        return 15699889;
    }
}
