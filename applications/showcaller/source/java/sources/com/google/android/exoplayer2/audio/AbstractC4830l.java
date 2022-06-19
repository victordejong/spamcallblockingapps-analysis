package com.google.android.exoplayer2.audio;

import android.os.Handler;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AbstractC4830l;
import com.google.android.exoplayer2.p242b1.C4857d;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.audio.l */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/l.class */
public interface AbstractC4830l {

    /* renamed from: com.google.android.exoplayer2.audio.l$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/l$a.class */
    public static final class C4831a {

        /* renamed from: a */
        private final Handler f14630a;

        /* renamed from: b */
        private final AbstractC4830l f14631b;

        public C4831a(Handler handler, AbstractC4830l abstractC4830l) {
            this.f14630a = abstractC4830l != null ? (Handler) C5508e.m18911e(handler) : null;
            this.f14631b = abstractC4830l;
        }

        /* renamed from: g */
        public /* synthetic */ void m21566h(int i) {
            ((AbstractC4830l) C5515h0.m18833g(this.f14631b)).mo18399a(i);
        }

        /* renamed from: i */
        public /* synthetic */ void m21564j(int i, long j, long j2) {
            ((AbstractC4830l) C5515h0.m18833g(this.f14631b)).mo18384x(i, j, j2);
        }

        /* renamed from: k */
        public /* synthetic */ void m21562l(String str, long j, long j2) {
            ((AbstractC4830l) C5515h0.m18833g(this.f14631b)).mo18390m(str, j, j2);
        }

        /* renamed from: m */
        public /* synthetic */ void m21560n(C4857d c4857d) {
            c4857d.m21430a();
            ((AbstractC4830l) C5515h0.m18833g(this.f14631b)).mo18398b(c4857d);
        }

        /* renamed from: o */
        public /* synthetic */ void m21558p(C4857d c4857d) {
            ((AbstractC4830l) C5515h0.m18833g(this.f14631b)).mo18397c(c4857d);
        }

        /* renamed from: q */
        public /* synthetic */ void m21556r(Format format) {
            ((AbstractC4830l) C5515h0.m18833g(this.f14631b)).mo18385v(format);
        }

        /* renamed from: a */
        public void m21573a(final int i) {
            Handler handler = this.f14630a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC4830l.C4831a.this.m21566h(i);
                    }
                });
            }
        }

        /* renamed from: b */
        public void m21572b(final int i, final long j, final long j2) {
            Handler handler = this.f14630a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC4830l.C4831a.this.m21564j(i, j, j2);
                    }
                });
            }
        }

        /* renamed from: c */
        public void m21571c(final String str, final long j, final long j2) {
            Handler handler = this.f14630a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC4830l.C4831a.this.m21562l(str, j, j2);
                    }
                });
            }
        }

        /* renamed from: d */
        public void m21570d(final C4857d c4857d) {
            c4857d.m21430a();
            Handler handler = this.f14630a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC4830l.C4831a.this.m21560n(c4857d);
                    }
                });
            }
        }

        /* renamed from: e */
        public void m21569e(final C4857d c4857d) {
            Handler handler = this.f14630a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC4830l.C4831a.this.m21558p(c4857d);
                    }
                });
            }
        }

        /* renamed from: f */
        public void m21568f(final Format format) {
            Handler handler = this.f14630a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC4830l.C4831a.this.m21556r(format);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    void mo18399a(int i);

    /* renamed from: b */
    void mo18398b(C4857d c4857d);

    /* renamed from: c */
    void mo18397c(C4857d c4857d);

    /* renamed from: m */
    void mo18390m(String str, long j, long j2);

    /* renamed from: v */
    void mo18385v(Format format);

    /* renamed from: x */
    void mo18384x(int i, long j, long j2);
}
