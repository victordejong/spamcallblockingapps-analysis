package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazm.class */
public final class zzazm {

    /* renamed from: a */
    public boolean f24675a = false;

    /* renamed from: b */
    public float f24676b = 1.0f;

    /* renamed from: a */
    public static float m16021a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return 0.0f;
        }
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        int streamVolume = audioManager.getStreamVolume(3);
        if (streamMaxVolume == 0) {
            return 0.0f;
        }
        return streamVolume / streamMaxVolume;
    }

    /* renamed from: a */
    public final float m16023a() {
        synchronized (this) {
            if (!m16018c()) {
                return 1.0f;
            }
            return this.f24676b;
        }
    }

    /* renamed from: a */
    public final void m16022a(float f) {
        synchronized (this) {
            this.f24676b = f;
        }
    }

    /* renamed from: a */
    public final void m16020a(boolean z) {
        synchronized (this) {
            this.f24675a = z;
        }
    }

    /* renamed from: b */
    public final boolean m16019b() {
        boolean z;
        synchronized (this) {
            z = this.f24675a;
        }
        return z;
    }

    /* renamed from: c */
    public final boolean m16018c() {
        boolean z;
        synchronized (this) {
            z = this.f24676b >= 0.0f;
        }
        return z;
    }
}
