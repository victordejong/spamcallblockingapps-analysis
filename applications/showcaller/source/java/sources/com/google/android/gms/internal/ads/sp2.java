package com.google.android.gms.internal.ads;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sp2.class */
public final class sp2 extends ContentObserver {

    /* renamed from: a */
    private final Context f29599a;

    /* renamed from: b */
    private final AudioManager f29600b;

    /* renamed from: c */
    private final qp2 f29601c;

    /* renamed from: d */
    private float f29602d;

    /* renamed from: e */
    private final bq2 f29603e;

    public sp2(Handler handler, Context context, qp2 qp2Var, bq2 bq2Var, byte[] bArr) {
        super(handler);
        this.f29599a = context;
        this.f29600b = (AudioManager) context.getSystemService("audio");
        this.f29601c = qp2Var;
        this.f29603e = bq2Var;
    }

    /* renamed from: c */
    private final float m10937c() {
        int streamVolume = this.f29600b.getStreamVolume(3);
        int streamMaxVolume = this.f29600b.getStreamMaxVolume(3);
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
    private final void m10936d() {
        this.f29603e.m16295e(this.f29602d);
    }

    /* renamed from: a */
    public final void m10939a() {
        this.f29602d = m10937c();
        m10936d();
        this.f29599a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    /* renamed from: b */
    public final void m10938b() {
        this.f29599a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        super.onChange(z);
        float m10937c = m10937c();
        if (m10937c != this.f29602d) {
            this.f29602d = m10937c;
            m10936d();
        }
    }
}
