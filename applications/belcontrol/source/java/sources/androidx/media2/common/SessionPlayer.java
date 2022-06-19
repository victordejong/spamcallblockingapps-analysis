package androidx.media2.common;

import android.util.Log;
import android.view.Surface;
import androidx.media.AudioAttributesCompat;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer.class */
public abstract class SessionPlayer implements AutoCloseable {

    /* renamed from: a */
    public final Object f1104a = new Object();

    /* renamed from: b */
    public final List<ka<AbstractC0148a, Executor>> f1105b = new ArrayList();

    /* renamed from: androidx.media2.common.SessionPlayer$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$a.class */
    public static abstract class AbstractC0148a {
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

        public void onTrackInfoChanged(SessionPlayer sessionPlayer, List<TrackInfo> list) {
        }

        public void onTrackSelected(SessionPlayer sessionPlayer, TrackInfo trackInfo) {
        }

        public void onVideoSizeChangedInternal(SessionPlayer sessionPlayer, MediaItem mediaItem, VideoSize videoSize) {
        }
    }

    /* renamed from: A */
    public abstract int m6515A();

    /* renamed from: B */
    public abstract TrackInfo m6514B(int i);

    /* renamed from: C */
    public abstract List<TrackInfo> m6513C();

    /* renamed from: D */
    public abstract VideoSize m6512D();

    /* renamed from: E */
    public abstract ListenableFuture<b> m6511E();

    /* renamed from: F */
    public abstract ListenableFuture<b> m6510F();

    /* renamed from: G */
    public final void m6509G(Executor executor, AbstractC0148a abstractC0148a) {
        Objects.requireNonNull(executor, "executor shouldn't be null");
        Objects.requireNonNull(abstractC0148a, "callback shouldn't be null");
        synchronized (this.f1104a) {
            for (ka<AbstractC0148a, Executor> kaVar : this.f1105b) {
                if (kaVar.a == abstractC0148a && kaVar.b != null) {
                    Log.w("SessionPlayer", "callback is already added. Ignoring.");
                    return;
                }
            }
            this.f1105b.add(new ka<>(abstractC0148a, executor));
        }
    }

    /* renamed from: H */
    public abstract ListenableFuture<b> m6508H(long j);

    /* renamed from: I */
    public abstract ListenableFuture<b> m6507I(TrackInfo trackInfo);

    /* renamed from: J */
    public abstract ListenableFuture<b> m6506J(float f);

    /* renamed from: K */
    public abstract ListenableFuture<b> m6505K(Surface surface);

    /* renamed from: L */
    public abstract ListenableFuture<b> m6504L();

    /* renamed from: M */
    public abstract ListenableFuture<b> m6503M();

    /* renamed from: N */
    public final void m6502N(AbstractC0148a abstractC0148a) {
        Objects.requireNonNull(abstractC0148a, "callback shouldn't be null");
        synchronized (this.f1104a) {
            for (int size = this.f1105b.size() - 1; size >= 0; size--) {
                if (this.f1105b.get(size).a == abstractC0148a) {
                    this.f1105b.remove(size);
                }
            }
        }
    }

    /* renamed from: a */
    public abstract ListenableFuture<b> m6501a(TrackInfo trackInfo);

    /* renamed from: e */
    public abstract long m6500e();

    /* renamed from: g */
    public final List<ka<AbstractC0148a, Executor>> m6499g() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f1104a) {
            arrayList.addAll(this.f1105b);
        }
        return arrayList;
    }

    /* renamed from: h */
    public abstract MediaItem m6498h();

    /* renamed from: l */
    public abstract long m6497l();

    /* renamed from: m */
    public abstract long m6496m();

    /* renamed from: r */
    public abstract int m6495r();

    /* renamed from: v */
    public abstract float m6494v();

    /* renamed from: y */
    public abstract int m6493y();
}
