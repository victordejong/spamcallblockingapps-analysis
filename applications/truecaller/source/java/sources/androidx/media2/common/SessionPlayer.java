package androidx.media2.common;

import android.os.SystemClock;
import android.view.Surface;
import androidx.media.AudioAttributesCompat;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import p1727n3.p1807k.p1820h.C26553c;
import p1727n3.p1874y.p1875a.AbstractC27066a;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer.class */
public abstract class SessionPlayer implements Closeable {

    /* renamed from: a */
    public final Object f937a = new Object();

    /* renamed from: b */
    public final List<C26553c<AbstractC0232a, Executor>> f938b = new ArrayList();

    /* renamed from: androidx.media2.common.SessionPlayer$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$a.class */
    public static abstract class AbstractC0232a {
        public void onAudioAttributesChanged(SessionPlayer sessionPlayer, AudioAttributesCompat audioAttributesCompat) {
        }

        public void onBufferingStateChanged(SessionPlayer sessionPlayer, MediaItem mediaItem, int i) {
        }

        public void onCurrentMediaItemChanged(SessionPlayer sessionPlayer, MediaItem mediaItem) {
        }

        public void onPlaybackCompleted(SessionPlayer sessionPlayer) {
        }

        public void onPlaybackSpeedChanged(SessionPlayer sessionPlayer, float f) {
        }

        public void onPlayerStateChanged(SessionPlayer sessionPlayer, int i) {
        }

        public void onPlaylistChanged(SessionPlayer sessionPlayer, List<MediaItem> list, MediaMetadata mediaMetadata) {
        }

        public void onPlaylistMetadataChanged(SessionPlayer sessionPlayer, MediaMetadata mediaMetadata) {
        }

        public void onRepeatModeChanged(SessionPlayer sessionPlayer, int i) {
        }

        public void onSeekCompleted(SessionPlayer sessionPlayer, long j) {
        }

        public void onShuffleModeChanged(SessionPlayer sessionPlayer, int i) {
        }

        public void onSubtitleData(SessionPlayer sessionPlayer, MediaItem mediaItem, TrackInfo trackInfo, SubtitleData subtitleData) {
        }

        public void onTrackDeselected(SessionPlayer sessionPlayer, TrackInfo trackInfo) {
        }

        public void onTrackSelected(SessionPlayer sessionPlayer, TrackInfo trackInfo) {
        }

        public void onTracksChanged(SessionPlayer sessionPlayer, List<TrackInfo> list) {
        }

        public void onVideoSizeChanged(SessionPlayer sessionPlayer, VideoSize videoSize) {
        }
    }

    /* renamed from: androidx.media2.common.SessionPlayer$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$b.class */
    public static class C0233b implements AbstractC27066a {

        /* renamed from: a */
        public final int f939a;

        public C0233b(int i, MediaItem mediaItem) {
            SystemClock.elapsedRealtime();
            this.f939a = i;
        }

        @Override // p1727n3.p1874y.p1875a.AbstractC27066a
        /* renamed from: d */
        public int mo964d() {
            return this.f939a;
        }
    }

    /* renamed from: B0 */
    public abstract ListenableFuture<C0233b> mo42812B0();

    /* renamed from: D0 */
    public abstract ListenableFuture<C0233b> mo42810D0();

    /* renamed from: E */
    public abstract float mo42809E();

    /* renamed from: I */
    public abstract int mo42804I();

    /* renamed from: J */
    public abstract int mo42803J();

    /* renamed from: K */
    public abstract TrackInfo mo42801K(int i);

    /* renamed from: P */
    public abstract List<TrackInfo> mo42798P();

    /* renamed from: Q */
    public abstract VideoSize mo42797Q();

    /* renamed from: S */
    public abstract ListenableFuture<C0233b> mo42795S();

    /* renamed from: W */
    public abstract ListenableFuture<C0233b> mo42793W();

    /* renamed from: b */
    public abstract ListenableFuture<C0233b> mo42791b(TrackInfo trackInfo);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f937a) {
            this.f938b.clear();
        }
    }

    /* renamed from: d */
    public abstract long mo42790d();

    /* renamed from: j */
    public final List<C26553c<AbstractC0232a, Executor>> m42853j() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f937a) {
            arrayList.addAll(this.f938b);
        }
        return arrayList;
    }

    /* renamed from: k */
    public abstract MediaItem mo42788k();

    /* renamed from: k0 */
    public final void m42852k0(Executor executor, AbstractC0232a abstractC0232a) {
        Objects.requireNonNull(executor, "executor shouldn't be null");
        Objects.requireNonNull(abstractC0232a, "callback shouldn't be null");
        synchronized (this.f937a) {
            for (C26553c<AbstractC0232a, Executor> c26553c : this.f938b) {
                if (c26553c.f74395a == abstractC0232a && c26553c.f74396b != null) {
                    return;
                }
            }
            this.f938b.add(new C26553c<>(abstractC0232a, executor));
        }
    }

    /* renamed from: l */
    public abstract long mo42787l();

    /* renamed from: n0 */
    public abstract ListenableFuture<C0233b> mo42784n0(long j);

    /* renamed from: p0 */
    public abstract ListenableFuture<C0233b> mo42782p0(TrackInfo trackInfo);

    /* renamed from: q */
    public abstract long mo42781q();

    /* renamed from: s */
    public abstract int mo42780s();

    /* renamed from: t0 */
    public abstract ListenableFuture<C0233b> mo42778t0(float f);

    /* renamed from: z0 */
    public abstract ListenableFuture<C0233b> mo42777z0(Surface surface);
}
