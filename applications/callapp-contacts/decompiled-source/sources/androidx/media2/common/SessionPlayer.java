package androidx.media2.common;

import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import androidx.media.AudioAttributesCompat;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer.class */
public abstract class SessionPlayer implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final Object f2752a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final List<androidx.core.e.b<a, Executor>> f2753b = new ArrayList();

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$TrackInfo.class */
    public static class TrackInfo extends CustomVersionedParcelable {

        /* renamed from: a  reason: collision with root package name */
        public int f2754a;

        /* renamed from: b  reason: collision with root package name */
        public int f2755b;

        /* renamed from: c  reason: collision with root package name */
        public MediaFormat f2756c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f2757d;
        Bundle e;
        private final Object f;

        /* JADX INFO: Access modifiers changed from: package-private */
        public TrackInfo() {
            this.f = new Object();
        }

        public TrackInfo(int i, int i2, MediaFormat mediaFormat) {
            this(i, i2, mediaFormat, false);
        }

        public TrackInfo(int i, int i2, MediaFormat mediaFormat, boolean z) {
            this.f = new Object();
            this.f2754a = i;
            this.f2755b = i2;
            this.f2756c = mediaFormat;
            this.f2757d = z;
        }

        private static void a(String str, MediaFormat mediaFormat, Bundle bundle) {
            if (mediaFormat.containsKey(str)) {
                bundle.putInt(str, mediaFormat.getInteger(str));
            }
        }

        private static void b(String str, MediaFormat mediaFormat, Bundle bundle) {
            if (mediaFormat.containsKey(str)) {
                bundle.putString(str, mediaFormat.getString(str));
            }
        }

        private static void c(String str, MediaFormat mediaFormat, Bundle bundle) {
            if (bundle.containsKey(str)) {
                mediaFormat.setInteger(str, bundle.getInt(str));
            }
        }

        private static void d(String str, MediaFormat mediaFormat, Bundle bundle) {
            if (bundle.containsKey(str)) {
                mediaFormat.setString(str, bundle.getString(str));
            }
        }

        public MediaFormat a() {
            return this.f2756c;
        }

        @Override // androidx.versionedparcelable.CustomVersionedParcelable
        public final void a(boolean z) {
            synchronized (this.f) {
                Bundle bundle = new Bundle();
                this.e = bundle;
                bundle.putBoolean("androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_FORMAT_NULL", this.f2756c == null);
                MediaFormat mediaFormat = this.f2756c;
                if (mediaFormat != null) {
                    b("language", mediaFormat, this.e);
                    b("mime", this.f2756c, this.e);
                    a("is-forced-subtitle", this.f2756c, this.e);
                    a("is-autoselect", this.f2756c, this.e);
                    a("is-default", this.f2756c, this.e);
                }
                this.e.putBoolean("androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_SELECTABLE", this.f2757d);
            }
        }

        @Override // androidx.versionedparcelable.CustomVersionedParcelable
        public final void e() {
            Bundle bundle = this.e;
            if (bundle != null && !bundle.getBoolean("androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_FORMAT_NULL")) {
                MediaFormat mediaFormat = new MediaFormat();
                this.f2756c = mediaFormat;
                d("language", mediaFormat, this.e);
                d("mime", this.f2756c, this.e);
                c("is-forced-subtitle", this.f2756c, this.e);
                c("is-autoselect", this.f2756c, this.e);
                c("is-default", this.f2756c, this.e);
            }
            Bundle bundle2 = this.e;
            if (bundle2 == null || !bundle2.containsKey("androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_SELECTABLE")) {
                boolean z = true;
                if (this.f2755b == 1) {
                    z = false;
                }
                this.f2757d = z;
                return;
            }
            this.f2757d = this.e.getBoolean("androidx.media2.common.SessionPlayer.TrackInfo.KEY_IS_SELECTABLE");
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TrackInfo) && this.f2754a == ((TrackInfo) obj).f2754a;
        }

        public int hashCode() {
            return this.f2754a;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append(getClass().getName());
            sb.append('#');
            sb.append(this.f2754a);
            sb.append('{');
            int i = this.f2755b;
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
            sb.append(this.f2756c);
            sb.append(", isSelectable=");
            sb.append(this.f2757d);
            sb.append("}");
            return sb.toString();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$a.class */
    public static abstract class a {
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

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$b.class */
    public static class b implements androidx.media2.common.a {

        /* renamed from: a  reason: collision with root package name */
        public final long f2758a;

        /* renamed from: b  reason: collision with root package name */
        public final MediaItem f2759b;

        /* renamed from: c  reason: collision with root package name */
        private final int f2760c;

        public b(int i, MediaItem mediaItem) {
            this(i, mediaItem, SystemClock.elapsedRealtime());
        }

        private b(int i, MediaItem mediaItem, long j) {
            this.f2760c = i;
            this.f2759b = mediaItem;
            this.f2758a = j;
        }

        public static com.google.common.util.concurrent.a<b> b() {
            androidx.c.a.b a2 = androidx.c.a.b.a();
            a2.a((androidx.c.a.b) new b(-3, null));
            return a2;
        }

        @Override // androidx.media2.common.a
        public int a() {
            return this.f2760c;
        }
    }

    public abstract com.google.common.util.concurrent.a<b> a();

    public abstract com.google.common.util.concurrent.a<b> a(float f);

    public abstract com.google.common.util.concurrent.a<b> a(int i);

    public com.google.common.util.concurrent.a<b> a(int i, int i2) {
        throw new UnsupportedOperationException("movePlaylistItem is not implemented");
    }

    public abstract com.google.common.util.concurrent.a<b> a(int i, MediaItem mediaItem);

    public abstract com.google.common.util.concurrent.a<b> a(long j);

    public com.google.common.util.concurrent.a<b> a(Surface surface) {
        throw new UnsupportedOperationException("setSurface is not implemented");
    }

    public abstract com.google.common.util.concurrent.a<b> a(MediaMetadata mediaMetadata);

    public com.google.common.util.concurrent.a<b> a(TrackInfo trackInfo) {
        throw new UnsupportedOperationException("selectTrack is not implemented");
    }

    public abstract com.google.common.util.concurrent.a<b> a(List<MediaItem> list, MediaMetadata mediaMetadata);

    public final void a(a aVar) {
        Objects.requireNonNull(aVar, "callback shouldn't be null");
        synchronized (this.f2752a) {
            for (int size = this.f2753b.size() - 1; size >= 0; size--) {
                if (this.f2753b.get(size).f1889a == aVar) {
                    this.f2753b.remove(size);
                }
            }
        }
    }

    public final void a(Executor executor, a aVar) {
        Objects.requireNonNull(executor, "executor shouldn't be null");
        Objects.requireNonNull(aVar, "callback shouldn't be null");
        synchronized (this.f2752a) {
            for (androidx.core.e.b<a, Executor> bVar : this.f2753b) {
                if (bVar.f1889a == aVar && bVar.f1890b != null) {
                    Log.w("SessionPlayer", "callback is already added. Ignoring.");
                    return;
                }
            }
            this.f2753b.add(new androidx.core.e.b<>(aVar, executor));
        }
    }

    public abstract com.google.common.util.concurrent.a<b> b();

    public abstract com.google.common.util.concurrent.a<b> b(int i);

    public com.google.common.util.concurrent.a<b> b(TrackInfo trackInfo) {
        throw new UnsupportedOperationException("deselectTrack is not implemented");
    }

    public abstract com.google.common.util.concurrent.a<b> c();

    public abstract com.google.common.util.concurrent.a<b> c(int i);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f2752a) {
            this.f2753b.clear();
        }
    }

    public abstract int d();

    public abstract com.google.common.util.concurrent.a<b> d(int i);

    public abstract long e();

    public TrackInfo e(int i) {
        throw new UnsupportedOperationException("getSelectedTrack is not implemented");
    }

    public abstract long f();

    public abstract long g();

    public abstract int h();

    public abstract float i();

    public VideoSize j() {
        throw new UnsupportedOperationException("getVideoSize is not implemented");
    }

    public abstract AudioAttributesCompat k();

    public abstract com.google.common.util.concurrent.a<b> l();

    public abstract com.google.common.util.concurrent.a<b> m();

    public abstract List<MediaItem> n();

    public abstract MediaMetadata o();

    public abstract int p();

    public abstract int q();

    public abstract MediaItem r();

    public abstract int s();

    public abstract int t();

    public abstract int u();

    /* JADX INFO: Access modifiers changed from: protected */
    public final List<androidx.core.e.b<a, Executor>> v() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f2752a) {
            arrayList.addAll(this.f2753b);
        }
        return arrayList;
    }

    public List<TrackInfo> w() {
        throw new UnsupportedOperationException("getTracks is not implemented");
    }
}
