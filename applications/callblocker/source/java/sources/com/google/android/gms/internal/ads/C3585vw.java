package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
/* renamed from: com.google.android.gms.internal.ads.vw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vw.class */
public final class C3585vw {

    /* renamed from: a */
    private boolean f17526a = false;

    /* renamed from: b */
    private float f17527b = 1.0f;

    /* renamed from: a */
    public static float m6902a(Context context) {
        float streamVolume;
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            streamVolume = 0.0f;
        } else {
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            streamVolume = streamMaxVolume == 0 ? 0.0f : audioManager.getStreamVolume(3) / streamMaxVolume;
        }
        return streamVolume;
    }

    /* renamed from: c */
    private final boolean m6899c() {
        boolean z;
        synchronized (this) {
            z = this.f17527b >= 0.0f;
        }
        return z;
    }

    /* renamed from: a */
    public final float m6904a() {
        float f;
        synchronized (this) {
            f = m6899c() ? this.f17527b : 1.0f;
        }
        return f;
    }

    /* renamed from: a */
    public final void m6903a(float f) {
        synchronized (this) {
            this.f17527b = f;
        }
    }

    /* renamed from: a */
    public final void m6901a(boolean z) {
        synchronized (this) {
            this.f17526a = z;
        }
    }

    /* renamed from: b */
    public final boolean m6900b() {
        boolean z;
        synchronized (this) {
            z = this.f17526a;
        }
        return z;
    }
}
