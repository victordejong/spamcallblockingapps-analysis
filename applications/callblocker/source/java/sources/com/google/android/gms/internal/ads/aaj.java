package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioManager;
@TargetApi(14)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aaj.class */
public final class aaj implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a */
    private final AudioManager f7643a;

    /* renamed from: b */
    private final aai f7644b;

    /* renamed from: c */
    private boolean f7645c;

    /* renamed from: d */
    private boolean f7646d;

    /* renamed from: e */
    private boolean f7647e;

    /* renamed from: f */
    private float f7648f = 1.0f;

    public aaj(Context context, aai aaiVar) {
        this.f7643a = (AudioManager) context.getSystemService("audio");
        this.f7644b = aaiVar;
    }

    /* renamed from: d */
    private final void m13726d() {
        boolean z = true;
        boolean z2 = this.f7646d && !this.f7647e && this.f7648f > 0.0f;
        if (z2 && !this.f7645c) {
            if (this.f7643a != null && !this.f7645c) {
                if (this.f7643a.requestAudioFocus(this, 3, 2) != 1) {
                    z = false;
                }
                this.f7645c = z;
            }
            this.f7644b.mo6692e();
        } else if (z2 || !this.f7645c) {
        } else {
            if (this.f7643a != null && this.f7645c) {
                this.f7645c = this.f7643a.abandonAudioFocus(this) == 0;
            }
            this.f7644b.mo6692e();
        }
    }

    /* renamed from: a */
    public final float m13731a() {
        float f = this.f7647e ? 0.0f : this.f7648f;
        if (!this.f7645c) {
            f = 0.0f;
        }
        return f;
    }

    /* renamed from: a */
    public final void m13730a(float f) {
        this.f7648f = f;
        m13726d();
    }

    /* renamed from: a */
    public final void m13729a(boolean z) {
        this.f7647e = z;
        m13726d();
    }

    /* renamed from: b */
    public final void m13728b() {
        this.f7646d = true;
        m13726d();
    }

    /* renamed from: c */
    public final void m13727c() {
        this.f7646d = false;
        m13726d();
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.f7645c = i > 0;
        this.f7644b.mo6692e();
    }
}
