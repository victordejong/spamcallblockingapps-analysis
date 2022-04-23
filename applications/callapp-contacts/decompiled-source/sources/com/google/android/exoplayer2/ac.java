package com.google.android.exoplayer2;

import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.j;
import com.google.android.exoplayer2.trackselection.g;
import com.google.android.exoplayer2.util.r;
import com.google.android.exoplayer2.video.i;
import com.google.android.exoplayer2.video.k;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ac.class */
public interface ac {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ac$a.class */
    public interface a {

        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ac$a$_CC.class */
        public final /* synthetic */ class _CC {
            public static void $default$a(a aVar, ExoPlaybackException exoPlaybackException) {
            }

            public static void $default$a(a aVar, MediaItem mediaItem, int i) {
            }

            public static void $default$a(a aVar, aa aaVar) {
            }

            public static void $default$a(a aVar, b bVar) {
            }

            public static void $default$a(a aVar, al alVar, int i) {
                if (alVar.a() == 1) {
                    alVar.a(0, new al.b(), 0L);
                }
            }

            public static void $default$a(a aVar, TrackGroupArray trackGroupArray, g gVar) {
            }

            public static void $default$a(a aVar, boolean z) {
            }

            public static void $default$b(a aVar, int i) {
            }

            public static void $default$b(a aVar, boolean z) {
            }

            @Deprecated
            public static void $default$b(a aVar, boolean z, int i) {
            }

            public static void $default$c(a aVar, List list) {
            }

            public static void $default$c(a aVar, boolean z) {
            }

            public static void $default$c(a aVar, boolean z, int i) {
            }

            public static void $default$d(a aVar, int i) {
            }

            public static void $default$e(a aVar, int i) {
            }

            public static void $default$f(a aVar, int i) {
            }

            @Deprecated
            public static void $default$p_(a aVar) {
            }

            public static void $default$q_(a aVar) {
            }
        }

        void a(ExoPlaybackException exoPlaybackException);

        void a(MediaItem mediaItem, int i);

        void a(aa aaVar);

        void a(b bVar);

        void a(al alVar, int i);

        void a(TrackGroupArray trackGroupArray, g gVar);

        void a(boolean z);

        void b(int i);

        void b(boolean z);

        @Deprecated
        void b(boolean z, int i);

        void c(List<Metadata> list);

        void c(boolean z);

        void c(boolean z, int i);

        void d(int i);

        void e(int i);

        void f(int i);

        @Deprecated
        void p_();

        void q_();
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ac$b.class */
    public static final class b extends r {
        @Override // com.google.android.exoplayer2.util.r
        public final boolean a(int i) {
            return super.a(i);
        }

        @Override // com.google.android.exoplayer2.util.r
        public final boolean a(int... iArr) {
            return super.a(iArr);
        }

        @Override // com.google.android.exoplayer2.util.r
        public final int b(int i) {
            return super.b(i);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ac$c.class */
    public interface c {
        List<com.google.android.exoplayer2.text.b> a();

        void a(j jVar);

        void b(j jVar);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ac$d.class */
    public interface d {
        void a(Surface surface);

        void a(SurfaceView surfaceView);

        void a(TextureView textureView);

        void a(com.google.android.exoplayer2.video.a.a aVar);

        void a(i iVar);

        void a(k kVar);

        void b(Surface surface);

        void b(SurfaceView surfaceView);

        void b(TextureView textureView);

        void b(com.google.android.exoplayer2.video.a.a aVar);

        void b(i iVar);

        void b(k kVar);
    }

    long A();

    boolean A_();

    long B();

    boolean C();

    int D();

    int E();

    long F();

    long G();

    TrackGroupArray H();

    g I();

    List<Metadata> J();

    al K();

    void a(int i);

    void a(int i, long j);

    void a(aa aaVar);

    void a(a aVar);

    void a(boolean z);

    int b(int i);

    void b();

    void b(a aVar);

    void b(boolean z);

    @Deprecated
    void c(boolean z);

    boolean c();

    boolean d();

    void e();

    int f();

    int g();

    boolean h();

    d k();

    c l();

    Looper m();

    int n();

    int o();

    ExoPlaybackException p();

    void q();

    boolean r();

    int s();

    boolean t();

    boolean u();

    aa v();

    void w();

    int x();

    int y();

    long z();
}
