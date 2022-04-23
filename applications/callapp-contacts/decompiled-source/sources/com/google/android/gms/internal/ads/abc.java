package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/abc.class */
public final class abc implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a  reason: collision with root package name */
    float f23040a = 1.0f;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager f23041b;

    /* renamed from: c  reason: collision with root package name */
    private final abe f23042c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f23043d;
    private boolean e;
    private boolean f;

    public abc(Context context, abe abeVar) {
        this.f23041b = (AudioManager) context.getSystemService("audio");
        this.f23042c = abeVar;
    }

    public final float a() {
        return this.f23043d ? this.f ? BitmapDescriptorFactory.HUE_RED : this.f23040a : BitmapDescriptorFactory.HUE_RED;
    }

    public final void a(boolean z) {
        this.f = z;
        d();
    }

    public final void b() {
        this.e = true;
        d();
    }

    public final void c() {
        this.e = false;
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        boolean z;
        boolean z2;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = this.e && !this.f && this.f23040a > BitmapDescriptorFactory.HUE_RED;
        if (z5 && !(z2 = this.f23043d)) {
            AudioManager audioManager = this.f23041b;
            if (audioManager != null && !z2) {
                if (audioManager.requestAudioFocus(this, 3, 2) == 1) {
                    z4 = true;
                }
                this.f23043d = z4;
            }
            this.f23042c.m();
        } else if (!z5 && (z = this.f23043d)) {
            AudioManager audioManager2 = this.f23041b;
            if (audioManager2 != null && z) {
                if (audioManager2.abandonAudioFocus(this) == 0) {
                    z3 = true;
                }
                this.f23043d = z3;
            }
            this.f23042c.m();
        }
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.f23043d = i > 0;
        this.f23042c.m();
    }
}
