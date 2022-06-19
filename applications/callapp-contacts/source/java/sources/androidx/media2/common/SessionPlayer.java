package androidx.media2.common;

import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import androidx.core.p036e.C0828b;
import androidx.media.AudioAttributesCompat;
import androidx.p024c.p025a.C0492b;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.google.common.util.concurrent.AbstractFutureC15579a;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer.class */
public abstract class SessionPlayer implements Closeable {

    /* renamed from: a */
    private final Object f5046a = new Object();

    /* renamed from: b */
    private final List<C0828b<AbstractC1351a, Executor>> f5047b = new ArrayList();

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$TrackInfo.class */
    public static class TrackInfo extends CustomVersionedParcelable {

        /* renamed from: a */
        public int f5048a;

        /* renamed from: b */
        public int f5049b;

        /* renamed from: c */
        public MediaFormat f5050c;

        /* renamed from: d */
        public boolean f5051d;

        /* renamed from: e */
        Bundle f5052e;

        /* renamed from: f */
        private final Object f5053f;

        public TrackInfo() {
            this.f5053f = new Object();
        }

        public TrackInfo(int i, int i2, MediaFormat mediaFormat) {
            this(i, i2, mediaFormat, false);
        }

        public TrackInfo(int i, int i2, MediaFormat mediaFormat, boolean z) {
            this.f5053f = new Object();
            this.f5048a = i;
            this.f5049b = i2;
            this.f5050c = mediaFormat;
            this.f5051d = z;
        }

        /* renamed from: a */
        private static void m43182a(String str, MediaFormat mediaFormat, Bundle bundle) {
            if (mediaFormat.containsKey(str)) {
                bundle.putInt(str, mediaFormat.getInteger(str));
            }
        }

        /* renamed from: b */
        private static void m43181b(String str, MediaFormat mediaFormat, Bundle bundle) {
            if (mediaFormat.containsKey(str)) {
                bundle.putString(str, mediaFormat.getString(str));
            }
        }

        /* renamed from: c */
        private static void m43180c(String str, MediaFormat mediaFormat, Bundle bundle) {
            if (bundle.containsKey(str)) {
                mediaFormat.setInteger(str, bundle.getInt(str));
            }
        }

        /* renamed from: d */
        private static void m43179d(String str, MediaFormat mediaFormat, Bundle bundle) {
            if (bundle.containsKey(str)) {
                mediaFormat.setString(str, bundle.getString(str));
            }
        }

        /* renamed from: a */
        public MediaFormat mo41325a() {
            return this.f5050c;
        }

        @Override // androidx.versionedparcelable.CustomVersionedParcelable
        /* renamed from: a */
        public final void mo39667a(boolean z) {
            synchronized (this.f5053f) {
                Bundle bundle = new Bundle();
                this.f5052e = bundle;
                bundle.putBoolean("androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_FORMAT_NULL", this.f5050c == null);
                MediaFormat mediaFormat = this.f5050c;
                if (mediaFormat != null) {
                    m43181b("language", mediaFormat, this.f5052e);
                    m43181b("mime", this.f5050c, this.f5052e);
                    m43182a("is-forced-subtitle", this.f5050c, this.f5052e);
                    m43182a("is-autoselect", this.f5050c, this.f5052e);
                    m43182a("is-default", this.f5050c, this.f5052e);
                }
                this.f5052e.putBoolean("androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_SELECTABLE", this.f5051d);
            }
        }

        @Override // androidx.versionedparcelable.CustomVersionedParcelable
        /* renamed from: e */
        public final void mo39666e() {
            Bundle bundle = this.f5052e;
            if (bundle != null && !bundle.getBoolean("androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_FORMAT_NULL")) {
                MediaFormat mediaFormat = new MediaFormat();
                this.f5050c = mediaFormat;
                m43179d("language", mediaFormat, this.f5052e);
                m43179d("mime", this.f5050c, this.f5052e);
                m43180c("is-forced-subtitle", this.f5050c, this.f5052e);
                m43180c("is-autoselect", this.f5050c, this.f5052e);
                m43180c("is-default", this.f5050c, this.f5052e);
            }
            Bundle bundle2 = this.f5052e;
            if (bundle2 != null && bundle2.containsKey("androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_SELECTABLE")) {
                this.f5051d = this.f5052e.getBoolean("androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_SELECTABLE");
                return;
            }
            boolean z = true;
            if (this.f5049b == 1) {
                z = false;
            }
            this.f5051d = z;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TrackInfo) && this.f5048a == ((TrackInfo) obj).f5048a;
        }

        public int hashCode() {
            return this.f5048a;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append(getClass().getName());
            sb.append('#');
            sb.append(this.f5048a);
            sb.append('{');
            int i = this.f5049b;
            if (i == 1) {
                sb.append("VIDEO");
            } else if (i == 2) {
                sb.append("AUDIO");
            } else if (i == 4) {
                sb.append("SUBTITLE");
            } else if (i != 5) {
                sb.append("UNKNOWN");
            } else {
                sb.append("METADATA");
            }
            sb.append(", ");
            sb.append(this.f5050c);
            sb.append(", isSelectable=");
            sb.append(this.f5051d);
            sb.append("}");
            return sb.toString();
        }
    }

    /* renamed from: androidx.media2.common.SessionPlayer$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$a.class */
    public static abstract class AbstractC1351a {
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
    public static class C1352b implements AbstractC1354a {

        /* renamed from: a */
        public final long f5054a;

        /* renamed from: b */
        public final MediaItem f5055b;

        /* renamed from: c */
        private final int f5056c;

        public C1352b(int i, MediaItem mediaItem) {
            this(i, mediaItem, SystemClock.elapsedRealtime());
        }

        private C1352b(int i, MediaItem mediaItem, long j) {
            this.f5056c = i;
            this.f5055b = mediaItem;
            this.f5054a = j;
        }

        /* renamed from: b */
        public static AbstractFutureC15579a<C1352b> m43178b() {
            C0492b m45412a = C0492b.m45412a();
            m45412a.mo40774a((C0492b) new C1352b(-3, null));
            return m45412a;
        }

        @Override // androidx.media2.common.AbstractC1354a
        /* renamed from: a */
        public int mo41118a() {
            return this.f5056c;
        }
    }

    /* renamed from: a */
    public abstract AbstractFutureC15579a<C1352b> mo41388a();

    /* renamed from: a */
    public abstract AbstractFutureC15579a<C1352b> mo41387a(float f);

    /* renamed from: a */
    public abstract AbstractFutureC15579a<C1352b> mo41386a(int i);

    /* renamed from: a */
    public AbstractFutureC15579a<C1352b> mo41385a(int i, int i2) {
        throw new UnsupportedOperationException("movePlaylistItem is not implemented");
    }

    /* renamed from: a */
    public abstract AbstractFutureC15579a<C1352b> mo41382a(int i, MediaItem mediaItem);

    /* renamed from: a */
    public abstract AbstractFutureC15579a<C1352b> mo41381a(long j);

    /* renamed from: a */
    public AbstractFutureC15579a<C1352b> mo41380a(Surface surface) {
        throw new UnsupportedOperationException("setSurface is not implemented");
    }

    /* renamed from: a */
    public abstract AbstractFutureC15579a<C1352b> mo41375a(MediaMetadata mediaMetadata);

    /* renamed from: a */
    public AbstractFutureC15579a<C1352b> mo41374a(TrackInfo trackInfo) {
        throw new UnsupportedOperationException("selectTrack is not implemented");
    }

    /* renamed from: a */
    public abstract AbstractFutureC15579a<C1352b> mo41368a(List<MediaItem> list, MediaMetadata mediaMetadata);

    /* renamed from: a */
    public final void m43185a(AbstractC1351a abstractC1351a) {
        Objects.requireNonNull(abstractC1351a, "callback shouldn't be null");
        synchronized (this.f5046a) {
            for (int size = this.f5047b.size() - 1; size >= 0; size--) {
                if (this.f5047b.get(size).f3556a == abstractC1351a) {
                    this.f5047b.remove(size);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m43184a(Executor executor, AbstractC1351a abstractC1351a) {
        Objects.requireNonNull(executor, "executor shouldn't be null");
        Objects.requireNonNull(abstractC1351a, "callback shouldn't be null");
        synchronized (this.f5046a) {
            for (C0828b<AbstractC1351a, Executor> c0828b : this.f5047b) {
                if (c0828b.f3556a == abstractC1351a && c0828b.f3557b != null) {
                    Log.w("SessionPlayer", "callback is already added. Ignoring.");
                    return;
                }
            }
            this.f5047b.add(new C0828b<>(abstractC1351a, executor));
        }
    }

    /* renamed from: b */
    public abstract AbstractFutureC15579a<C1352b> mo41366b();

    /* renamed from: b */
    public abstract AbstractFutureC15579a<C1352b> mo41364b(int i);

    /* renamed from: b */
    public AbstractFutureC15579a<C1352b> mo41359b(TrackInfo trackInfo) {
        throw new UnsupportedOperationException("deselectTrack is not implemented");
    }

    /* renamed from: c */
    public abstract AbstractFutureC15579a<C1352b> mo41358c();

    /* renamed from: c */
    public abstract AbstractFutureC15579a<C1352b> mo41356c(int i);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f5046a) {
            this.f5047b.clear();
        }
    }

    /* renamed from: d */
    public abstract int mo41353d();

    /* renamed from: d */
    public abstract AbstractFutureC15579a<C1352b> mo41352d(int i);

    /* renamed from: e */
    public abstract long mo41351e();

    /* renamed from: e */
    public TrackInfo mo41350e(int i) {
        throw new UnsupportedOperationException("getSelectedTrack is not implemented");
    }

    /* renamed from: f */
    public abstract long mo41349f();

    /* renamed from: g */
    public abstract long mo41347g();

    /* renamed from: h */
    public abstract int mo41345h();

    /* renamed from: i */
    public abstract float mo41344i();

    /* renamed from: j */
    public VideoSize mo41343j() {
        throw new UnsupportedOperationException("getVideoSize is not implemented");
    }

    /* renamed from: k */
    public abstract AudioAttributesCompat mo41342k();

    /* renamed from: l */
    public abstract AbstractFutureC15579a<C1352b> mo41341l();

    /* renamed from: m */
    public abstract AbstractFutureC15579a<C1352b> mo41340m();

    /* renamed from: n */
    public abstract List<MediaItem> mo41339n();

    /* renamed from: o */
    public abstract MediaMetadata mo41338o();

    /* renamed from: p */
    public abstract int mo41337p();

    /* renamed from: q */
    public abstract int mo41336q();

    /* renamed from: r */
    public abstract MediaItem mo41335r();

    /* renamed from: s */
    public abstract int mo41334s();

    /* renamed from: t */
    public abstract int mo41333t();

    /* renamed from: u */
    public abstract int mo41332u();

    /* renamed from: v */
    public final List<C0828b<AbstractC1351a, Executor>> m43183v() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f5046a) {
            arrayList.addAll(this.f5047b);
        }
        return arrayList;
    }

    /* renamed from: w */
    public List<TrackInfo> mo41331w() {
        throw new UnsupportedOperationException("getTracks is not implemented");
    }
}
