package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import p131c.p161d.p170b.p224d.p252g.p253a.AbstractC4057t7;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdz.class */
public final class zzbdz implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a */
    public final AudioManager f24871a;

    /* renamed from: b */
    public final AbstractC4057t7 f24872b;

    /* renamed from: c */
    public boolean f24873c;

    /* renamed from: d */
    public boolean f24874d;

    /* renamed from: e */
    public boolean f24875e;

    /* renamed from: f */
    public float f24876f = 1.0f;

    public zzbdz(Context context, AbstractC4057t7 t7Var) {
        this.f24871a = (AudioManager) context.getSystemService("audio");
        this.f24872b = t7Var;
    }

    /* renamed from: a */
    public final float m15743a() {
        float f = this.f24875e ? 0.0f : this.f24876f;
        if (this.f24873c) {
            return f;
        }
        return 0.0f;
    }

    /* renamed from: a */
    public final void m15742a(float f) {
        this.f24876f = f;
        m15738d();
    }

    /* renamed from: a */
    public final void m15741a(boolean z) {
        this.f24875e = z;
        m15738d();
    }

    /* renamed from: b */
    public final void m15740b() {
        this.f24874d = true;
        m15738d();
    }

    /* renamed from: c */
    public final void m15739c() {
        this.f24874d = false;
        m15738d();
    }

    /* renamed from: d */
    public final void m15738d() {
        boolean z;
        boolean z2;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = this.f24874d && !this.f24875e && this.f24876f > 0.0f;
        if (z5 && !(z2 = this.f24873c)) {
            AudioManager audioManager = this.f24871a;
            if (audioManager != null && !z2) {
                if (audioManager.requestAudioFocus(this, 3, 2) == 1) {
                    z4 = true;
                }
                this.f24873c = z4;
            }
            this.f24872b.mo15737a();
        } else if (!z5 && (z = this.f24873c)) {
            AudioManager audioManager2 = this.f24871a;
            if (audioManager2 != null && z) {
                if (audioManager2.abandonAudioFocus(this) == 0) {
                    z3 = true;
                }
                this.f24873c = z3;
            }
            this.f24872b.mo15737a();
        }
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.f24873c = i > 0;
        this.f24872b.mo15737a();
    }
}
