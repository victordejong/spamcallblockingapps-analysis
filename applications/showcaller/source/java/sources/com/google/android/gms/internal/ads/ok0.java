package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioManager;
@TargetApi(14)
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ok0.class */
public final class ok0 implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a */
    private final AudioManager f27586a;

    /* renamed from: b */
    private final nk0 f27587b;

    /* renamed from: c */
    private boolean f27588c;

    /* renamed from: d */
    private boolean f27589d;

    /* renamed from: e */
    private boolean f27590e;

    /* renamed from: f */
    private float f27591f = 1.0f;

    public ok0(Context context, nk0 nk0Var) {
        this.f27586a = (AudioManager) context.getSystemService("audio");
        this.f27587b = nk0Var;
    }

    /* renamed from: f */
    private final void m12637f() {
        boolean z = false;
        if (this.f27589d && !this.f27590e && this.f27591f > 0.0f) {
            if (this.f27588c) {
                return;
            }
            AudioManager audioManager = this.f27586a;
            if (audioManager != null) {
                if (audioManager.requestAudioFocus(this, 3, 2) == 1) {
                    z = true;
                }
                this.f27588c = z;
            }
            this.f27587b.zzt();
        } else if (!this.f27588c) {
        } else {
            AudioManager audioManager2 = this.f27586a;
            if (audioManager2 != null) {
                boolean z2 = false;
                if (audioManager2.abandonAudioFocus(this) == 0) {
                    z2 = true;
                }
                this.f27588c = z2;
            }
            this.f27587b.zzt();
        }
    }

    /* renamed from: a */
    public final void m12642a(boolean z) {
        this.f27590e = z;
        m12637f();
    }

    /* renamed from: b */
    public final void m12641b(float f) {
        this.f27591f = f;
        m12637f();
    }

    /* renamed from: c */
    public final float m12640c() {
        float f = this.f27590e ? 0.0f : this.f27591f;
        if (this.f27588c) {
            return f;
        }
        return 0.0f;
    }

    /* renamed from: d */
    public final void m12639d() {
        this.f27589d = true;
        m12637f();
    }

    /* renamed from: e */
    public final void m12638e() {
        this.f27589d = false;
        m12637f();
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.f27588c = i > 0;
        this.f27587b.zzt();
    }
}
