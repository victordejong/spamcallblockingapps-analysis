package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.util.Log;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.ads.t2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t2.class */
public final class C6982t2 {

    /* renamed from: a */
    private final AudioManager f29785a;

    /* renamed from: b */
    private final C6908r2 f29786b;

    /* renamed from: c */
    private AbstractC6945s2 f29787c;

    /* renamed from: e */
    private float f29789e = 1.0f;

    /* renamed from: d */
    private int f29788d = 0;

    public C6982t2(Context context, Handler handler, AbstractC6945s2 abstractC6945s2) {
        AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
        Objects.requireNonNull(audioManager);
        this.f29785a = audioManager;
        this.f29787c = abstractC6945s2;
        this.f29786b = new C6908r2(this, handler);
    }

    /* renamed from: d */
    public static /* synthetic */ void m10856d(C6982t2 c6982t2, int i) {
        if (i == -3 || i == -2) {
            if (i != -2) {
                c6982t2.m10854f(3);
                return;
            }
            c6982t2.m10853g(0);
            c6982t2.m10854f(2);
        } else if (i == -1) {
            c6982t2.m10853g(-1);
            c6982t2.m10855e();
        } else if (i == 1) {
            c6982t2.m10854f(1);
            c6982t2.m10853g(1);
        } else {
            StringBuilder sb = new StringBuilder(38);
            sb.append("Unknown focus change type: ");
            sb.append(i);
            Log.w("AudioFocusManager", sb.toString());
        }
    }

    /* renamed from: e */
    private final void m10855e() {
        if (this.f29788d == 0) {
            return;
        }
        if (C7101wa.f31475a < 26) {
            this.f29785a.abandonAudioFocus(this.f29786b);
        }
        m10854f(0);
    }

    /* renamed from: f */
    private final void m10854f(int i) {
        if (this.f29788d == i) {
            return;
        }
        this.f29788d = i;
        float f = i == 3 ? 0.2f : 1.0f;
        if (this.f29789e == f) {
            return;
        }
        this.f29789e = f;
        AbstractC6945s2 abstractC6945s2 = this.f29787c;
        if (abstractC6945s2 == null) {
            return;
        }
        ((SurfaceHolder$CallbackC6282a7) abstractC6945s2).f19845d.m15918O();
    }

    /* renamed from: g */
    private final void m10853g(int i) {
        int m15913T;
        AbstractC6945s2 abstractC6945s2 = this.f29787c;
        if (abstractC6945s2 != null) {
            SurfaceHolder$CallbackC6282a7 surfaceHolder$CallbackC6282a7 = (SurfaceHolder$CallbackC6282a7) abstractC6945s2;
            boolean m15891l = surfaceHolder$CallbackC6282a7.f19845d.m15891l();
            C6393d7 c6393d7 = surfaceHolder$CallbackC6282a7.f19845d;
            m15913T = C6393d7.m15913T(m15891l, i);
            c6393d7.m15917P(m15891l, i, m15913T);
        }
    }

    /* renamed from: a */
    public final float m10859a() {
        return this.f29789e;
    }

    /* renamed from: b */
    public final int m10858b(boolean z, int i) {
        m10855e();
        return z ? 1 : -1;
    }

    /* renamed from: c */
    public final void m10857c() {
        this.f29787c = null;
        m10855e();
    }
}
