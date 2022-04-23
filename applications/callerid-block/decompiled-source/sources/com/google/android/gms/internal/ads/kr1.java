package com.google.android.gms.internal.ads;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kr1.class */
public final class kr1 extends ContentObserver {

    /* renamed from: a */
    private final Context f7046a;

    /* renamed from: b */
    private final AudioManager f7047b;

    /* renamed from: c */
    private float f7048c;

    /* renamed from: d */
    private final tr1 f7049d;

    public kr1(Handler handler, Context context, hr1 hr1Var, tr1 tr1Var, byte[] bArr) {
        super(handler);
        this.f7046a = context;
        this.f7047b = (AudioManager) context.getSystemService("audio");
        this.f7049d = tr1Var;
    }

    /* renamed from: c */
    private final float m6767c() {
        int streamVolume = this.f7047b.getStreamVolume(3);
        int streamMaxVolume = this.f7047b.getStreamMaxVolume(3);
        float f = 1.0f;
        if (streamMaxVolume <= 0 || streamVolume <= 0) {
            f = 0.0f;
        } else {
            float f2 = streamVolume / streamMaxVolume;
            if (f2 <= 1.0f) {
                return f2;
            }
        }
        return f;
    }

    /* renamed from: d */
    private final void m6766d() {
        this.f7049d.m5486e(this.f7048c);
    }

    /* renamed from: a */
    public final void m6769a() {
        this.f7048c = m6767c();
        m6766d();
        this.f7046a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    /* renamed from: b */
    public final void m6768b() {
        this.f7046a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        super.onChange(z);
        float c = m6767c();
        if (c != this.f7048c) {
            this.f7048c = c;
            m6766d();
        }
    }
}
