package com.google.android.exoplayer2.video;

import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.d;
import com.google.android.exoplayer2.decoder.e;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.video.l;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/l.class */
public interface l {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/l$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$a(l lVar, int i, int i2, int i3, float f) {
        }

        public static void $default$a(l lVar, int i, long j) {
        }

        public static void $default$a(l lVar, long j, int i) {
        }

        public static void $default$a(l lVar, Surface surface) {
        }

        public static void $default$a(l lVar, Format format, e eVar) {
        }

        public static void $default$a(l lVar, d dVar) {
        }

        public static void $default$a(l lVar, String str) {
        }

        public static void $default$a(l lVar, String str, long j, long j2) {
        }

        public static void $default$b(l lVar, d dVar) {
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/l$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f22421a;

        /* renamed from: b  reason: collision with root package name */
        private final l f22422b;

        public a(Handler handler, l lVar) {
            this.f22421a = lVar != null ? (Handler) com.google.android.exoplayer2.util.a.b(handler) : null;
            this.f22422b = lVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(int i, int i2, int i3, float f) {
            ((l) af.a(this.f22422b)).a(i, i2, i3, f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(int i, long j) {
            ((l) af.a(this.f22422b)).a(i, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(long j, int i) {
            ((l) af.a(this.f22422b)).a(j, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(Surface surface) {
            ((l) af.a(this.f22422b)).a(surface);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(Format format, e eVar) {
            ((l) af.a(this.f22422b)).a(format, eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str) {
            ((l) af.a(this.f22422b)).a(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str, long j, long j2) {
            ((l) af.a(this.f22422b)).a(str, j, j2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(d dVar) {
            ((l) af.a(this.f22422b)).b(dVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(d dVar) {
            ((l) af.a(this.f22422b)).a(dVar);
        }

        public final void a(final int i, final int i2, final int i3, final float f) {
            Handler handler = this.f22421a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$1dakQsVJrxBxnVimx8L_pbYFI5s
                    @Override // java.lang.Runnable
                    public final void run() {
                        l.a.this.b(i, i2, i3, f);
                    }
                });
            }
        }

        public final void a(final int i, final long j) {
            Handler handler = this.f22421a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$Wv_JanVgqbm1_P_1gSL7vpyblTM
                    @Override // java.lang.Runnable
                    public final void run() {
                        l.a.this.b(i, j);
                    }
                });
            }
        }

        public final void a(final long j, final int i) {
            Handler handler = this.f22421a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$v0ivuvdiizSkEuqO_2ShF240sGU
                    @Override // java.lang.Runnable
                    public final void run() {
                        l.a.this.b(j, i);
                    }
                });
            }
        }

        public final void a(final Surface surface) {
            Handler handler = this.f22421a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$4_kW5KbqHloIpGJpbTvWfU8bmng
                    @Override // java.lang.Runnable
                    public final void run() {
                        l.a.this.b(surface);
                    }
                });
            }
        }

        public final void a(final Format format, final e eVar) {
            Handler handler = this.f22421a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$lFX32SpxAsBjv02OV1Pog9PUreo
                    @Override // java.lang.Runnable
                    public final void run() {
                        l.a.this.b(format, eVar);
                    }
                });
            }
        }

        public final void a(final d dVar) {
            Handler handler = this.f22421a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$LriKX_Xu7ZL6fNYk3zq_mYHr0cQ
                    @Override // java.lang.Runnable
                    public final void run() {
                        l.a.this.d(dVar);
                    }
                });
            }
        }

        public final void a(final String str) {
            Handler handler = this.f22421a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$YRfxFog65ggrpRGRanlz_MEi1yI
                    @Override // java.lang.Runnable
                    public final void run() {
                        l.a.this.b(str);
                    }
                });
            }
        }

        public final void a(final String str, final long j, final long j2) {
            Handler handler = this.f22421a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$jmC1uMqQoX3auKYODh_v1YzyACY
                    @Override // java.lang.Runnable
                    public final void run() {
                        l.a.this.b(str, j, j2);
                    }
                });
            }
        }

        public final void b(final d dVar) {
            Handler handler = this.f22421a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$j4HyUiKVbiKHo_jXc53_ttljZxA
                    @Override // java.lang.Runnable
                    public final void run() {
                        l.a.this.c(dVar);
                    }
                });
            }
        }
    }

    void a(int i, int i2, int i3, float f);

    void a(int i, long j);

    void a(long j, int i);

    void a(Surface surface);

    void a(Format format, e eVar);

    void a(d dVar);

    void a(String str);

    void a(String str, long j, long j2);

    void b(d dVar);
}
