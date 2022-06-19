package com.google.android.exoplayer2.video;

import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.C10934d;
import com.google.android.exoplayer2.decoder.C10935e;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.video.AbstractC11663l;
/* renamed from: com.google.android.exoplayer2.video.l */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/l.class */
public interface AbstractC11663l {

    /* renamed from: com.google.android.exoplayer2.video.l$_CC */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/l$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$a(AbstractC11663l abstractC11663l, int i, int i2, int i3, float f) {
        }

        public static void $default$a(AbstractC11663l abstractC11663l, int i, long j) {
        }

        public static void $default$a(AbstractC11663l abstractC11663l, long j, int i) {
        }

        public static void $default$a(AbstractC11663l abstractC11663l, Surface surface) {
        }

        public static void $default$a(AbstractC11663l abstractC11663l, Format format, C10935e c10935e) {
        }

        public static void $default$a(AbstractC11663l abstractC11663l, C10934d c10934d) {
        }

        public static void $default$a(AbstractC11663l abstractC11663l, String str) {
        }

        public static void $default$a(AbstractC11663l abstractC11663l, String str, long j, long j2) {
        }

        public static void $default$b(AbstractC11663l abstractC11663l, C10934d c10934d) {
        }
    }

    /* renamed from: com.google.android.exoplayer2.video.l$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/l$a.class */
    public static final class C11664a {

        /* renamed from: a */
        private final Handler f38910a;

        /* renamed from: b */
        private final AbstractC11663l f38911b;

        public C11664a(Handler handler, AbstractC11663l abstractC11663l) {
            this.f38910a = abstractC11663l != null ? (Handler) C11593a.m20020b(handler) : null;
            this.f38911b = abstractC11663l;
        }

        /* renamed from: b */
        public /* synthetic */ void m19650b(int i, int i2, int i3, float f) {
            ((AbstractC11663l) C11599af.m19974a(this.f38911b)).mo19667a(i, i2, i3, f);
        }

        /* renamed from: b */
        public /* synthetic */ void m19649b(int i, long j) {
            ((AbstractC11663l) C11599af.m19974a(this.f38911b)).mo19666a(i, j);
        }

        /* renamed from: b */
        public /* synthetic */ void m19648b(long j, int i) {
            ((AbstractC11663l) C11599af.m19974a(this.f38911b)).mo19665a(j, i);
        }

        /* renamed from: b */
        public /* synthetic */ void m19647b(Surface surface) {
            ((AbstractC11663l) C11599af.m19974a(this.f38911b)).mo19664a(surface);
        }

        /* renamed from: b */
        public /* synthetic */ void m19646b(Format format, C10935e c10935e) {
            ((AbstractC11663l) C11599af.m19974a(this.f38911b)).mo19663a(format, c10935e);
        }

        /* renamed from: b */
        public /* synthetic */ void m19644b(String str) {
            ((AbstractC11663l) C11599af.m19974a(this.f38911b)).mo19661a(str);
        }

        /* renamed from: b */
        public /* synthetic */ void m19643b(String str, long j, long j2) {
            ((AbstractC11663l) C11599af.m19974a(this.f38911b)).mo19660a(str, j, j2);
        }

        /* renamed from: c */
        public /* synthetic */ void m19642c(C10934d c10934d) {
            ((AbstractC11663l) C11599af.m19974a(this.f38911b)).mo19659b(c10934d);
        }

        /* renamed from: d */
        public /* synthetic */ void m19641d(C10934d c10934d) {
            ((AbstractC11663l) C11599af.m19974a(this.f38911b)).mo19662a(c10934d);
        }

        /* renamed from: a */
        public final void m19658a(final int i, final int i2, final int i3, final float f) {
            Handler handler = this.f38910a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$1dakQsVJrxBxnVimx8L_pbYFI5s
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC11663l.C11664a.this.m19650b(i, i2, i3, f);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m19657a(final int i, final long j) {
            Handler handler = this.f38910a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$Wv_JanVgqbm1_P_1gSL7vpyblTM
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC11663l.C11664a.this.m19649b(i, j);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m19656a(final long j, final int i) {
            Handler handler = this.f38910a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$v0ivuvdiizSkEuqO_2ShF240sGU
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC11663l.C11664a.this.m19648b(j, i);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m19655a(final Surface surface) {
            Handler handler = this.f38910a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$4_kW5KbqHloIpGJpbTvWfU8bmng
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC11663l.C11664a.this.m19647b(surface);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m19654a(final Format format, final C10935e c10935e) {
            Handler handler = this.f38910a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$lFX32SpxAsBjv02OV1Pog9PUreo
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC11663l.C11664a.this.m19646b(format, c10935e);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m19653a(final C10934d c10934d) {
            Handler handler = this.f38910a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$LriKX_Xu7ZL6fNYk3zq_mYHr0cQ
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC11663l.C11664a.this.m19641d(c10934d);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m19652a(final String str) {
            Handler handler = this.f38910a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$YRfxFog65ggrpRGRanlz_MEi1yI
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC11663l.C11664a.this.m19644b(str);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m19651a(final String str, final long j, final long j2) {
            Handler handler = this.f38910a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$jmC1uMqQoX3auKYODh_v1YzyACY
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC11663l.C11664a.this.m19643b(str, j, j2);
                    }
                });
            }
        }

        /* renamed from: b */
        public final void m19645b(final C10934d c10934d) {
            Handler handler = this.f38910a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.video._$$Lambda$l$a$j4HyUiKVbiKHo_jXc53_ttljZxA
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC11663l.C11664a.this.m19642c(c10934d);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    void mo19667a(int i, int i2, int i3, float f);

    /* renamed from: a */
    void mo19666a(int i, long j);

    /* renamed from: a */
    void mo19665a(long j, int i);

    /* renamed from: a */
    void mo19664a(Surface surface);

    /* renamed from: a */
    void mo19663a(Format format, C10935e c10935e);

    /* renamed from: a */
    void mo19662a(C10934d c10934d);

    /* renamed from: a */
    void mo19661a(String str);

    /* renamed from: a */
    void mo19660a(String str, long j, long j2);

    /* renamed from: b */
    void mo19659b(C10934d c10934d);
}
