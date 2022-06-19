package p193e.p1577m.p1578a.p1596c;

import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.source.TrackGroupArray;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24572k;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24648g;
import p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24826m;
import p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24828o;
import p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24833r;
import p193e.p1577m.p1578a.p1596c.p1637r1.p1638t.AbstractC24836a;
/* renamed from: e.m.a.c.q0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q0.class */
public interface AbstractC24760q0 {

    /* renamed from: e.m.a.c.q0$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/q0$a.class */
    public interface AbstractC24761a {
    }

    /* renamed from: e.m.a.c.q0$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/q0$b.class */
    public interface AbstractC24762b {
        /* renamed from: A0 */
        void mo4655A0();

        /* renamed from: G5 */
        void mo4654G5(boolean z, int i);

        /* renamed from: N7 */
        void mo4653N7(AbstractC24861y0 abstractC24861y0, int i);

        @Deprecated
        /* renamed from: Pi */
        void mo4652Pi(AbstractC24861y0 abstractC24861y0, Object obj, int i);

        /* renamed from: S8 */
        void mo4651S8(boolean z);

        /* renamed from: Xl */
        void mo4650Xl(boolean z);

        /* renamed from: Zl */
        void mo4649Zl(int i);

        /* renamed from: fs */
        void mo4648fs(TrackGroupArray trackGroupArray, C24648g c24648g);

        /* renamed from: h5 */
        void mo4647h5(int i);

        /* renamed from: hy */
        void mo4646hy(int i);

        /* renamed from: rs */
        void mo4645rs(C24652o0 c24652o0);

        /* renamed from: tf */
        void mo4644tf(C24189b0 c24189b0);

        /* renamed from: w1 */
        void mo4643w1(boolean z);
    }

    /* renamed from: e.m.a.c.q0$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/q0$c.class */
    public interface AbstractC24763c {
    }

    /* renamed from: e.m.a.c.q0$d */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/q0$d.class */
    public interface AbstractC24764d {
        void addTextOutput(AbstractC24572k abstractC24572k);

        void removeTextOutput(AbstractC24572k abstractC24572k);
    }

    /* renamed from: e.m.a.c.q0$e */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/q0$e.class */
    public interface AbstractC24765e {
        void addVideoListener(AbstractC24833r abstractC24833r);

        void clearCameraMotionListener(AbstractC24836a abstractC24836a);

        void clearVideoFrameMetadataListener(AbstractC24828o abstractC24828o);

        void clearVideoSurface(Surface surface);

        void clearVideoSurfaceView(SurfaceView surfaceView);

        void clearVideoTextureView(TextureView textureView);

        void removeVideoListener(AbstractC24833r abstractC24833r);

        void setCameraMotionListener(AbstractC24836a abstractC24836a);

        void setVideoDecoderOutputBufferRenderer(AbstractC24826m abstractC24826m);

        void setVideoFrameMetadataListener(AbstractC24828o abstractC24828o);

        void setVideoSurface(Surface surface);

        void setVideoSurfaceView(SurfaceView surfaceView);

        void setVideoTextureView(TextureView textureView);
    }

    void addListener(AbstractC24762b abstractC24762b);

    Looper getApplicationLooper();

    long getBufferedPosition();

    long getContentBufferedPosition();

    long getContentDuration();

    long getContentPosition();

    int getCurrentAdGroupIndex();

    int getCurrentAdIndexInAdGroup();

    long getCurrentPosition();

    AbstractC24861y0 getCurrentTimeline();

    TrackGroupArray getCurrentTrackGroups();

    C24648g getCurrentTrackSelections();

    int getCurrentWindowIndex();

    long getDuration();

    int getNextWindowIndex();

    boolean getPlayWhenReady();

    C24189b0 getPlaybackError();

    C24652o0 getPlaybackParameters();

    int getPlaybackState();

    int getPlaybackSuppressionReason();

    int getPreviousWindowIndex();

    int getRendererType(int i);

    int getRepeatMode();

    boolean getShuffleModeEnabled();

    AbstractC24764d getTextComponent();

    long getTotalBufferedDuration();

    AbstractC24765e getVideoComponent();

    boolean hasNext();

    boolean hasPrevious();

    boolean isCurrentWindowSeekable();

    boolean isPlaying();

    boolean isPlayingAd();

    void release();

    void removeListener(AbstractC24762b abstractC24762b);

    void seekTo(int i, long j);

    void seekTo(long j);

    void setPlayWhenReady(boolean z);

    void setRepeatMode(int i);

    void setShuffleModeEnabled(boolean z);

    void stop();

    void stop(boolean z);
}
