package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioManager;
@TargetApi(14)
/* renamed from: com.google.android.gms.internal.ads.vq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vq.class */
public final class C2002vq implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a */
    private final AudioManager f8938a;

    /* renamed from: b */
    private final AbstractC1981uq f8939b;

    /* renamed from: c */
    private boolean f8940c;

    /* renamed from: d */
    private boolean f8941d;

    /* renamed from: e */
    private boolean f8942e;

    /* renamed from: f */
    private float f8943f = 1.0f;

    public C2002vq(Context context, AbstractC1981uq uqVar) {
        this.f8938a = (AudioManager) context.getSystemService("audio");
        this.f8939b = uqVar;
    }

    /* renamed from: f */
    private final void m5190f() {
        boolean z = false;
        if (!this.f8941d || this.f8942e || this.f8943f <= 0.0f) {
            if (this.f8940c) {
                AudioManager audioManager = this.f8938a;
                if (audioManager != null) {
                    if (audioManager.abandonAudioFocus(this) == 0) {
                        z = true;
                    }
                    this.f8940c = z;
                }
                this.f8939b.m5351l();
            }
        } else if (!this.f8940c) {
            AudioManager audioManager2 = this.f8938a;
            if (audioManager2 != null) {
                if (audioManager2.requestAudioFocus(this, 3, 2) == 1) {
                    z = true;
                }
                this.f8940c = z;
            }
            this.f8939b.m5351l();
        }
    }

    /* renamed from: a */
    public final void m5195a(boolean z) {
        this.f8942e = z;
        m5190f();
    }

    /* renamed from: b */
    public final void m5194b(float f) {
        this.f8943f = f;
        m5190f();
    }

    /* renamed from: c */
    public final float m5193c() {
        float f = this.f8942e ? 0.0f : this.f8943f;
        if (this.f8940c) {
            return f;
        }
        return 0.0f;
    }

    /* renamed from: d */
    public final void m5192d() {
        this.f8941d = true;
        m5190f();
    }

    /* renamed from: e */
    public final void m5191e() {
        this.f8941d = false;
        m5190f();
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.f8940c = i > 0;
        this.f8939b.m5351l();
    }
}
