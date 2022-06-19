package com.google.android.exoplayer2;

import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.AbstractC11420j;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.trackselection.C11443g;
import com.google.android.exoplayer2.util.C11623r;
import com.google.android.exoplayer2.video.AbstractC11658i;
import com.google.android.exoplayer2.video.AbstractC11662k;
import com.google.android.exoplayer2.video.p347a.AbstractC11641a;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.ac */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ac.class */
public interface AbstractC10842ac {

    /* renamed from: com.google.android.exoplayer2.ac$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ac$a.class */
    public interface AbstractC10843a {

        /* renamed from: com.google.android.exoplayer2.ac$a$_CC */
        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ac$a$_CC.class */
        public final /* synthetic */ class _CC {
            public static void $default$a(AbstractC10843a abstractC10843a, ExoPlaybackException exoPlaybackException) {
            }

            public static void $default$a(AbstractC10843a abstractC10843a, MediaItem mediaItem, int i) {
            }

            public static void $default$a(AbstractC10843a abstractC10843a, C10840aa c10840aa) {
            }

            public static void $default$a(AbstractC10843a abstractC10843a, C10844b c10844b) {
            }

            public static void $default$a(AbstractC10843a abstractC10843a, AbstractC10864al abstractC10864al, int i) {
                if (abstractC10864al.mo20949a() == 1) {
                    abstractC10864al.mo20853a(0, new AbstractC10864al.C10867b(), 0L);
                }
            }

            public static void $default$a(AbstractC10843a abstractC10843a, TrackGroupArray trackGroupArray, C11443g c11443g) {
            }

            public static void $default$a(AbstractC10843a abstractC10843a, boolean z) {
            }

            public static void $default$b(AbstractC10843a abstractC10843a, int i) {
            }

            public static void $default$b(AbstractC10843a abstractC10843a, boolean z) {
            }

            @Deprecated
            public static void $default$b(AbstractC10843a abstractC10843a, boolean z, int i) {
            }

            public static void $default$c(AbstractC10843a abstractC10843a, List list) {
            }

            public static void $default$c(AbstractC10843a abstractC10843a, boolean z) {
            }

            public static void $default$c(AbstractC10843a abstractC10843a, boolean z, int i) {
            }

            public static void $default$d(AbstractC10843a abstractC10843a, int i) {
            }

            public static void $default$e(AbstractC10843a abstractC10843a, int i) {
            }

            public static void $default$f(AbstractC10843a abstractC10843a, int i) {
            }

            @Deprecated
            public static void $default$p_(AbstractC10843a abstractC10843a) {
            }

            public static void $default$q_(AbstractC10843a abstractC10843a) {
            }
        }

        /* renamed from: a */
        void mo20311a(ExoPlaybackException exoPlaybackException);

        /* renamed from: a */
        void mo20310a(MediaItem mediaItem, int i);

        /* renamed from: a */
        void mo20309a(C10840aa c10840aa);

        /* renamed from: a */
        void mo20308a(C10844b c10844b);

        /* renamed from: a */
        void mo20307a(AbstractC10864al abstractC10864al, int i);

        /* renamed from: a */
        void mo20306a(TrackGroupArray trackGroupArray, C11443g c11443g);

        /* renamed from: a */
        void mo20305a(boolean z);

        /* renamed from: b */
        void mo20304b(int i);

        /* renamed from: b */
        void mo20303b(boolean z);

        @Deprecated
        /* renamed from: b */
        void mo20302b(boolean z, int i);

        /* renamed from: c */
        void mo20301c(List<Metadata> list);

        /* renamed from: c */
        void mo20300c(boolean z);

        /* renamed from: c */
        void mo20299c(boolean z, int i);

        /* renamed from: d */
        void mo20298d(int i);

        /* renamed from: e */
        void mo20297e(int i);

        /* renamed from: f */
        void mo20296f(int i);

        @Deprecated
        /* renamed from: p_ */
        void mo20295p_();

        /* renamed from: q_ */
        void mo20294q_();
    }

    /* renamed from: com.google.android.exoplayer2.ac$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ac$b.class */
    public static final class C10844b extends C11623r {
        @Override // com.google.android.exoplayer2.util.C11623r
        /* renamed from: a */
        public final boolean mo19839a(int i) {
            return super.mo19839a(i);
        }

        @Override // com.google.android.exoplayer2.util.C11623r
        /* renamed from: a */
        public final boolean mo19838a(int... iArr) {
            return super.mo19838a(iArr);
        }

        @Override // com.google.android.exoplayer2.util.C11623r
        /* renamed from: b */
        public final int mo19837b(int i) {
            return super.mo19837b(i);
        }
    }

    /* renamed from: com.google.android.exoplayer2.ac$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ac$c.class */
    public interface AbstractC10845c {
        /* renamed from: a */
        List<C11356b> mo22220a();

        /* renamed from: a */
        void mo22208a(AbstractC11420j abstractC11420j);

        /* renamed from: b */
        void mo22197b(AbstractC11420j abstractC11420j);
    }

    /* renamed from: com.google.android.exoplayer2.ac$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ac$d.class */
    public interface AbstractC10846d {
        /* renamed from: a */
        void mo22217a(Surface surface);

        /* renamed from: a */
        void mo22214a(SurfaceView surfaceView);

        /* renamed from: a */
        void mo22213a(TextureView textureView);

        /* renamed from: a */
        void mo22207a(AbstractC11641a abstractC11641a);

        /* renamed from: a */
        void mo22205a(AbstractC11658i abstractC11658i);

        /* renamed from: a */
        void mo22204a(AbstractC11662k abstractC11662k);

        /* renamed from: b */
        void mo22201b(Surface surface);

        /* renamed from: b */
        void mo22200b(SurfaceView surfaceView);

        /* renamed from: b */
        void mo22199b(TextureView textureView);

        /* renamed from: b */
        void mo22196b(AbstractC11641a abstractC11641a);

        /* renamed from: b */
        void mo22195b(AbstractC11658i abstractC11658i);

        /* renamed from: b */
        void mo22194b(AbstractC11662k abstractC11662k);
    }

    /* renamed from: A */
    long mo21186A();

    /* renamed from: A_ */
    boolean mo21938A_();

    /* renamed from: B */
    long mo21185B();

    /* renamed from: C */
    boolean mo21184C();

    /* renamed from: D */
    int mo21183D();

    /* renamed from: E */
    int mo21182E();

    /* renamed from: F */
    long mo21181F();

    /* renamed from: G */
    long mo21180G();

    /* renamed from: H */
    TrackGroupArray mo21179H();

    /* renamed from: I */
    C11443g mo21178I();

    /* renamed from: J */
    List<Metadata> mo21177J();

    /* renamed from: K */
    AbstractC10864al mo21176K();

    /* renamed from: a */
    void mo21173a(int i);

    /* renamed from: a */
    void mo21171a(int i, long j);

    /* renamed from: a */
    void mo21168a(C10840aa c10840aa);

    /* renamed from: a */
    void mo21167a(AbstractC10843a abstractC10843a);

    /* renamed from: a */
    void mo21150a(boolean z);

    /* renamed from: b */
    int mo21146b(int i);

    /* renamed from: b */
    void mo21937b();

    /* renamed from: b */
    void mo21144b(AbstractC10843a abstractC10843a);

    /* renamed from: b */
    void mo21138b(boolean z);

    @Deprecated
    /* renamed from: c */
    void mo21134c(boolean z);

    /* renamed from: c */
    boolean mo21936c();

    /* renamed from: d */
    boolean mo21935d();

    /* renamed from: e */
    void mo21934e();

    /* renamed from: f */
    int mo21933f();

    /* renamed from: g */
    int mo21932g();

    /* renamed from: h */
    boolean mo21931h();

    /* renamed from: k */
    AbstractC10846d mo21125k();

    /* renamed from: l */
    AbstractC10845c mo21124l();

    /* renamed from: m */
    Looper mo21123m();

    /* renamed from: n */
    int mo21122n();

    /* renamed from: o */
    int mo21121o();

    /* renamed from: p */
    ExoPlaybackException mo21120p();

    /* renamed from: q */
    void mo21119q();

    /* renamed from: r */
    boolean mo21118r();

    /* renamed from: s */
    int mo21117s();

    /* renamed from: t */
    boolean mo21116t();

    /* renamed from: u */
    boolean mo21115u();

    /* renamed from: v */
    C10840aa mo21114v();

    /* renamed from: w */
    void mo21113w();

    /* renamed from: x */
    int mo21112x();

    /* renamed from: y */
    int mo21111y();

    /* renamed from: z */
    long mo21110z();
}
