package com.google.android.exoplayer2;

import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.AbstractC5326j;
import com.google.android.exoplayer2.trackselection.C5411g;
import com.google.android.exoplayer2.video.AbstractC5561k;
import com.google.android.exoplayer2.video.AbstractC5563m;
import com.google.android.exoplayer2.video.AbstractC5568p;
import com.google.android.exoplayer2.video.p261r.AbstractC5571a;
/* renamed from: com.google.android.exoplayer2.o0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/o0.class */
public interface AbstractC5162o0 {

    /* renamed from: com.google.android.exoplayer2.o0$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/o0$a.class */
    public interface AbstractC5163a {
        void onIsPlayingChanged(boolean z);

        void onLoadingChanged(boolean z);

        void onPlaybackParametersChanged(C5102l0 c5102l0);

        void onPlaybackSuppressionReasonChanged(int i);

        void onPlayerError(ExoPlaybackException exoPlaybackException);

        void onPlayerStateChanged(boolean z, int i);

        void onPositionDiscontinuity(int i);

        void onRepeatModeChanged(int i);

        void onSeekProcessed();

        void onShuffleModeEnabledChanged(boolean z);

        void onTimelineChanged(AbstractC5585y0 abstractC5585y0, int i);

        @Deprecated
        void onTimelineChanged(AbstractC5585y0 abstractC5585y0, Object obj, int i);

        void onTracksChanged(TrackGroupArray trackGroupArray, C5411g c5411g);
    }

    /* renamed from: com.google.android.exoplayer2.o0$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/o0$b.class */
    public interface AbstractC5164b {
        /* renamed from: H */
        void mo18468H(AbstractC5326j abstractC5326j);

        /* renamed from: s */
        void mo18414s(AbstractC5326j abstractC5326j);
    }

    /* renamed from: com.google.android.exoplayer2.o0$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/o0$c.class */
    public interface AbstractC5165c {
        /* renamed from: C */
        void mo18477C(AbstractC5563m abstractC5563m);

        /* renamed from: G */
        void mo18470G(SurfaceView surfaceView);

        /* renamed from: P */
        void mo18456P(TextureView textureView);

        /* renamed from: S */
        void mo18453S(AbstractC5568p abstractC5568p);

        /* renamed from: a */
        void mo18449a(Surface surface);

        /* renamed from: b */
        void mo18447b(AbstractC5571a abstractC5571a);

        /* renamed from: c */
        void mo18445c(AbstractC5563m abstractC5563m);

        /* renamed from: i */
        void mo18433i(Surface surface);

        /* renamed from: l */
        void mo18427l(AbstractC5571a abstractC5571a);

        /* renamed from: n */
        void mo18424n(TextureView textureView);

        /* renamed from: p */
        void mo18420p(AbstractC5561k abstractC5561k);

        /* renamed from: r */
        void mo18416r(SurfaceView surfaceView);

        /* renamed from: v */
        void mo18408v(AbstractC5568p abstractC5568p);
    }

    /* renamed from: A */
    long mo18481A();

    /* renamed from: B */
    int mo18479B();

    /* renamed from: D */
    int mo18475D();

    /* renamed from: E */
    void mo18473E(int i);

    /* renamed from: F */
    int mo19702F();

    /* renamed from: I */
    int mo18466I();

    /* renamed from: J */
    TrackGroupArray mo18464J();

    /* renamed from: K */
    int mo18462K();

    /* renamed from: L */
    AbstractC5585y0 mo18460L();

    /* renamed from: M */
    Looper mo18459M();

    /* renamed from: N */
    boolean mo18458N();

    /* renamed from: O */
    long mo18457O();

    /* renamed from: Q */
    C5411g mo18455Q();

    /* renamed from: R */
    int mo18454R(int i);

    /* renamed from: T */
    AbstractC5164b mo18452T();

    /* renamed from: d */
    C5102l0 mo18443d();

    /* renamed from: e */
    boolean mo18441e();

    /* renamed from: f */
    long mo18439f();

    /* renamed from: g */
    void mo18437g(int i, long j);

    long getCurrentPosition();

    long getDuration();

    /* renamed from: h */
    boolean mo18435h();

    boolean hasNext();

    boolean hasPrevious();

    boolean isPlaying();

    /* renamed from: j */
    void mo18431j(boolean z);

    /* renamed from: k */
    ExoPlaybackException mo18429k();

    /* renamed from: m */
    boolean mo19697m();

    /* renamed from: o */
    void mo18422o(AbstractC5163a abstractC5163a);

    /* renamed from: q */
    int mo18418q();

    /* renamed from: t */
    void mo18412t(AbstractC5163a abstractC5163a);

    /* renamed from: u */
    int mo18410u();

    /* renamed from: w */
    void mo18406w(boolean z);

    /* renamed from: x */
    AbstractC5165c mo18404x();

    /* renamed from: y */
    long mo18402y();

    /* renamed from: z */
    int mo19696z();
}
