package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.media.AudioManager;
/* renamed from: com.google.android.gms.ads.internal.util.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/e.class */
public final class C1415e {

    /* renamed from: a */
    private boolean f5562a = false;

    /* renamed from: b */
    private float f5563b = 1.0f;

    /* renamed from: e */
    public static float m8839e(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return 0.0f;
        }
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        int streamVolume = audioManager.getStreamVolume(3);
        if (streamMaxVolume != 0) {
            return streamVolume / streamMaxVolume;
        }
        return 0.0f;
    }

    /* renamed from: f */
    private final boolean m8838f() {
        boolean z;
        synchronized (this) {
            z = this.f5563b >= 0.0f;
        }
        return z;
    }

    /* renamed from: a */
    public final void m8843a(float f) {
        synchronized (this) {
            this.f5563b = f;
        }
    }

    /* renamed from: b */
    public final float m8842b() {
        synchronized (this) {
            if (m8838f()) {
                return this.f5563b;
            }
            return 1.0f;
        }
    }

    /* renamed from: c */
    public final void m8841c(boolean z) {
        synchronized (this) {
            this.f5562a = z;
        }
    }

    /* renamed from: d */
    public final boolean m8840d() {
        boolean z;
        synchronized (this) {
            z = this.f5562a;
        }
        return z;
    }
}
