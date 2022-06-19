package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.media.AudioManager;
/* renamed from: com.google.android.gms.ads.internal.util.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/f.class */
public final class C5688f {

    /* renamed from: a */
    private boolean f18467a = false;

    /* renamed from: b */
    private float f18468b = 1.0f;

    /* renamed from: e */
    public static float m18028e(Context context) {
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
    private final boolean m18027f() {
        boolean z;
        synchronized (this) {
            z = this.f18468b >= 0.0f;
        }
        return z;
    }

    /* renamed from: a */
    public final void m18032a(float f) {
        synchronized (this) {
            this.f18468b = f;
        }
    }

    /* renamed from: b */
    public final float m18031b() {
        synchronized (this) {
            if (m18027f()) {
                return this.f18468b;
            }
            return 1.0f;
        }
    }

    /* renamed from: c */
    public final void m18030c(boolean z) {
        synchronized (this) {
            this.f18467a = z;
        }
    }

    /* renamed from: d */
    public final boolean m18029d() {
        boolean z;
        synchronized (this) {
            z = this.f18467a;
        }
        return z;
    }
}
