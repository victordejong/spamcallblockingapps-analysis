package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/abc.class */
public final class abc implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a */
    float f39792a = 1.0f;

    /* renamed from: b */
    private final AudioManager f39793b;

    /* renamed from: c */
    private final abe f39794c;

    /* renamed from: d */
    private boolean f39795d;

    /* renamed from: e */
    private boolean f39796e;

    /* renamed from: f */
    private boolean f39797f;

    public abc(Context context, abe abeVar) {
        this.f39793b = (AudioManager) context.getSystemService("audio");
        this.f39794c = abeVar;
    }

    /* renamed from: a */
    public final float m18918a() {
        return this.f39795d ? this.f39797f ? 0.0f : this.f39792a : BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: a */
    public final void m18917a(boolean z) {
        this.f39797f = z;
        m18914d();
    }

    /* renamed from: b */
    public final void m18916b() {
        this.f39796e = true;
        m18914d();
    }

    /* renamed from: c */
    public final void m18915c() {
        this.f39796e = false;
        m18914d();
    }

    /* renamed from: d */
    public final void m18914d() {
        boolean z;
        boolean z2;
        boolean z3 = false;
        boolean z4 = this.f39796e && !this.f39797f && this.f39792a > BitmapDescriptorFactory.HUE_RED;
        if (z4 && !(z2 = this.f39795d)) {
            AudioManager audioManager = this.f39793b;
            if (audioManager != null && !z2) {
                boolean z5 = false;
                if (audioManager.requestAudioFocus(this, 3, 2) == 1) {
                    z5 = true;
                }
                this.f39795d = z5;
            }
            this.f39794c.mo13819m();
        } else if (z4 || !(z = this.f39795d)) {
        } else {
            AudioManager audioManager2 = this.f39793b;
            if (audioManager2 != null && z) {
                if (audioManager2.abandonAudioFocus(this) == 0) {
                    z3 = true;
                }
                this.f39795d = z3;
            }
            this.f39794c.mo13819m();
        }
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.f39795d = i > 0;
        this.f39794c.mo13819m();
    }
}
