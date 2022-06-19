package com.google.android.exoplayer2.video;

import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p242b1.C4857d;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.video.AbstractC5569q;
/* renamed from: com.google.android.exoplayer2.video.q */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/q.class */
public interface AbstractC5569q {

    /* renamed from: com.google.android.exoplayer2.video.q$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/q$a.class */
    public static final class C5570a {

        /* renamed from: a */
        private final Handler f18094a;

        /* renamed from: b */
        private final AbstractC5569q f18095b;

        public C5570a(Handler handler, AbstractC5569q abstractC5569q) {
            this.f18094a = abstractC5569q != null ? (Handler) C5508e.m18911e(handler) : null;
            this.f18095b = abstractC5569q;
        }

        /* renamed from: f */
        public /* synthetic */ void m18529g(String str, long j, long j2) {
            ((AbstractC5569q) C5515h0.m18833g(this.f18095b)).mo18396d(str, j, j2);
        }

        /* renamed from: h */
        public /* synthetic */ void m18527i(C4857d c4857d) {
            c4857d.m21430a();
            ((AbstractC5569q) C5515h0.m18833g(this.f18095b)).mo18383y(c4857d);
        }

        /* renamed from: j */
        public /* synthetic */ void m18525k(int i, long j) {
            ((AbstractC5569q) C5515h0.m18833g(this.f18095b)).mo18388p(i, j);
        }

        /* renamed from: l */
        public /* synthetic */ void m18523m(C4857d c4857d) {
            ((AbstractC5569q) C5515h0.m18833g(this.f18095b)).mo18386t(c4857d);
        }

        /* renamed from: n */
        public /* synthetic */ void m18521o(Format format) {
            ((AbstractC5569q) C5515h0.m18833g(this.f18095b)).mo18387s(format);
        }

        /* renamed from: p */
        public /* synthetic */ void m18519q(Surface surface) {
            ((AbstractC5569q) C5515h0.m18833g(this.f18095b)).mo18391k(surface);
        }

        /* renamed from: r */
        public /* synthetic */ void m18517s(int i, int i2, int i3, float f) {
            ((AbstractC5569q) C5515h0.m18833g(this.f18095b)).onVideoSizeChanged(i, i2, i3, f);
        }

        /* renamed from: a */
        public void m18535a(final String str, final long j, final long j2) {
            Handler handler = this.f18094a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC5569q.C5570a.this.m18529g(str, j, j2);
                    }
                });
            }
        }

        /* renamed from: b */
        public void m18534b(final C4857d c4857d) {
            c4857d.m21430a();
            Handler handler = this.f18094a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC5569q.C5570a.this.m18527i(c4857d);
                    }
                });
            }
        }

        /* renamed from: c */
        public void m18533c(final int i, final long j) {
            Handler handler = this.f18094a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC5569q.C5570a.this.m18525k(i, j);
                    }
                });
            }
        }

        /* renamed from: d */
        public void m18532d(final C4857d c4857d) {
            Handler handler = this.f18094a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC5569q.C5570a.this.m18523m(c4857d);
                    }
                });
            }
        }

        /* renamed from: e */
        public void m18531e(final Format format) {
            Handler handler = this.f18094a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC5569q.C5570a.this.m18521o(format);
                    }
                });
            }
        }

        /* renamed from: t */
        public void m18516t(final Surface surface) {
            Handler handler = this.f18094a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC5569q.C5570a.this.m18519q(surface);
                    }
                });
            }
        }

        /* renamed from: u */
        public void m18515u(final int i, final int i2, final int i3, final float f) {
            Handler handler = this.f18094a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC5569q.C5570a.this.m18517s(i, i2, i3, f);
                    }
                });
            }
        }
    }

    /* renamed from: d */
    void mo18396d(String str, long j, long j2);

    /* renamed from: k */
    void mo18391k(Surface surface);

    void onVideoSizeChanged(int i, int i2, int i3, float f);

    /* renamed from: p */
    void mo18388p(int i, long j);

    /* renamed from: s */
    void mo18387s(Format format);

    /* renamed from: t */
    void mo18386t(C4857d c4857d);

    /* renamed from: y */
    void mo18383y(C4857d c4857d);
}
