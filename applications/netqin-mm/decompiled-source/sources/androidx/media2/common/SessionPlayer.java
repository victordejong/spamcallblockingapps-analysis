package androidx.media2.common;

import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import androidx.media.AudioAttributesCompat;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executor;
import p012b.p042i.p053o.C0944d;
import p012b.p076s.p077a.AbstractC1154a;
import p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer.class */
public abstract class SessionPlayer implements AutoCloseable {

    /* renamed from: a */
    public final Object f1533a = new Object();

    /* renamed from: b */
    public final List<C0944d<AbstractC0277a, Executor>> f1534b = new ArrayList();

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$TrackInfo.class */
    public static final class TrackInfo extends CustomVersionedParcelable {

        /* renamed from: a */
        public int f1535a;

        /* renamed from: b */
        public MediaItem f1536b;

        /* renamed from: c */
        public int f1537c;

        /* renamed from: d */
        public Bundle f1538d;

        /* renamed from: e */
        public MediaFormat f1539e;

        /* renamed from: f */
        public MediaItem f1540f;

        public TrackInfo() {
        }

        public TrackInfo(int i, MediaItem mediaItem, int i2, MediaFormat mediaFormat) {
            this.f1535a = i;
            this.f1540f = mediaItem;
            this.f1537c = i2;
            this.f1539e = mediaFormat;
        }

        /* renamed from: a */
        public final void m38216a(String str) {
            if (this.f1539e.containsKey(str)) {
                this.f1538d.putInt(str, this.f1539e.getInteger(str));
            }
        }

        @Override // androidx.versionedparcelable.CustomVersionedParcelable
        /* renamed from: a */
        public void mo32076a(boolean z) {
            if (this.f1539e != null) {
                this.f1538d = new Bundle();
                m38214b("language");
                m38214b("mime");
                m38216a("is-forced-subtitle");
                m38216a("is-autoselect");
                m38216a("is-default");
            }
            MediaItem mediaItem = this.f1540f;
            if (mediaItem != null && this.f1536b == null) {
                this.f1536b = new MediaItem(mediaItem);
            }
        }

        /* renamed from: a */
        public final boolean m38215a(String str, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
            boolean containsKey = mediaFormat.containsKey(str);
            boolean containsKey2 = mediaFormat2.containsKey(str);
            boolean z = true;
            boolean z2 = true;
            if (!containsKey || !containsKey2) {
                if (containsKey || containsKey2) {
                    z = false;
                }
                return z;
            }
            if (mediaFormat.getInteger(str) != mediaFormat2.getInteger(str)) {
                z2 = false;
            }
            return z2;
        }

        /* renamed from: b */
        public final void m38214b(String str) {
            if (this.f1539e.containsKey(str)) {
                this.f1538d.putString(str, this.f1539e.getString(str));
            }
        }

        /* renamed from: b */
        public final boolean m38213b(String str, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
            return TextUtils.equals(mediaFormat.getString(str), mediaFormat2.getString(str));
        }

        /* renamed from: c */
        public final void m38212c(String str) {
            if (this.f1538d.containsKey(str)) {
                this.f1539e.setInteger(str, this.f1538d.getInt(str));
            }
        }

        /* renamed from: d */
        public final void m38211d(String str) {
            if (this.f1538d.containsKey(str)) {
                this.f1539e.setString(str, this.f1538d.getString(str));
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || TrackInfo.class != obj.getClass()) {
                return false;
            }
            TrackInfo trackInfo = (TrackInfo) obj;
            if (this.f1535a != trackInfo.f1535a || this.f1537c != trackInfo.f1537c) {
                return false;
            }
            if (!(this.f1539e == null && trackInfo.f1539e == null)) {
                if (this.f1539e == null && trackInfo.f1539e != null) {
                    return false;
                }
                if ((this.f1539e != null && trackInfo.f1539e == null) || !m38213b("language", this.f1539e, trackInfo.f1539e) || !m38213b("mime", this.f1539e, trackInfo.f1539e) || !m38215a("is-forced-subtitle", this.f1539e, trackInfo.f1539e) || !m38215a("is-autoselect", this.f1539e, trackInfo.f1539e) || !m38215a("is-default", this.f1539e, trackInfo.f1539e)) {
                    return false;
                }
            }
            if (this.f1540f == null && trackInfo.f1540f == null) {
                return true;
            }
            MediaItem mediaItem = this.f1540f;
            if (mediaItem == null || trackInfo.f1540f == null) {
                return false;
            }
            String h = mediaItem.m38233h();
            return h != null ? h.equals(trackInfo.f1540f.m38233h()) : this.f1540f.equals(trackInfo.f1540f);
        }

        @Override // androidx.versionedparcelable.CustomVersionedParcelable
        /* renamed from: f */
        public void mo32075f() {
            if (this.f1538d != null) {
                this.f1539e = new MediaFormat();
                m38211d("language");
                m38211d("mime");
                m38212c("is-forced-subtitle");
                m38212c("is-autoselect");
                m38212c("is-default");
            }
            if (this.f1540f == null) {
                this.f1540f = this.f1536b;
            }
        }

        /* renamed from: g */
        public MediaFormat m38210g() {
            if (this.f1537c == 4) {
                return this.f1539e;
            }
            return null;
        }

        /* renamed from: h */
        public int m38209h() {
            return this.f1535a;
        }

        public int hashCode() {
            int i = this.f1535a;
            MediaItem mediaItem = this.f1540f;
            return ((i + 31) * 31) + (mediaItem != null ? mediaItem.m38233h() != null ? this.f1540f.m38233h().hashCode() : this.f1540f.hashCode() : 0);
        }

        /* renamed from: i */
        public Locale m38208i() {
            MediaFormat mediaFormat = this.f1539e;
            String string = mediaFormat != null ? mediaFormat.getString("language") : null;
            String str = string;
            if (string == null) {
                str = "und";
            }
            return new Locale(str);
        }

        /* renamed from: j */
        public MediaItem m38207j() {
            return this.f1540f;
        }

        /* renamed from: k */
        public int m38206k() {
            return this.f1537c;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append(TrackInfo.class.getName());
            sb.append(", id: ");
            sb.append(this.f1535a);
            sb.append(", MediaItem: " + this.f1540f);
            sb.append(", TrackType: ");
            int i = this.f1537c;
            if (i == 1) {
                sb.append("VIDEO");
            } else if (i == 2) {
                sb.append("AUDIO");
            } else if (i != 4) {
                sb.append("UNKNOWN");
            } else {
                sb.append("SUBTITLE");
            }
            sb.append(", Format: " + this.f1539e);
            return sb.toString();
        }
    }

    /* renamed from: androidx.media2.common.SessionPlayer$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$a.class */
    public static abstract class AbstractC0277a {
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

    /* renamed from: androidx.media2.common.SessionPlayer$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$b.class */
    public static class C0278b implements AbstractC1154a {

        /* renamed from: a */
        public final int f1541a;

        public C0278b(int i, MediaItem mediaItem) {
            this(i, mediaItem, SystemClock.elapsedRealtime());
        }

        public C0278b(int i, MediaItem mediaItem, long j) {
            this.f1541a = i;
        }

        @Override // p012b.p076s.p077a.AbstractC1154a
        /* renamed from: e */
        public int mo34562e() {
            return this.f1541a;
        }
    }

    /* renamed from: a */
    public abstract long mo37879a();

    /* renamed from: a */
    public abstract TrackInfo mo37877a(int i);

    /* renamed from: a */
    public abstract AbstractFutureC5108l<C0278b> mo37878a(float f);

    /* renamed from: a */
    public abstract AbstractFutureC5108l<C0278b> mo37872a(Surface surface);

    /* renamed from: a */
    public abstract AbstractFutureC5108l<C0278b> mo37867a(TrackInfo trackInfo);

    /* renamed from: a */
    public final void m38219a(AbstractC0277a aVar) {
        if (aVar != null) {
            synchronized (this.f1533a) {
                for (int size = this.f1534b.size() - 1; size >= 0; size--) {
                    if (this.f1534b.get(size).f4191a == aVar) {
                        this.f1534b.remove(size);
                    }
                }
            }
            return;
        }
        throw new NullPointerException("callback shouldn't be null");
    }

    /* renamed from: a */
    public final void m38218a(Executor executor, AbstractC0277a aVar) {
        if (executor == null) {
            throw new NullPointerException("executor shouldn't be null");
        } else if (aVar != null) {
            synchronized (this.f1533a) {
                for (C0944d<AbstractC0277a, Executor> dVar : this.f1534b) {
                    if (dVar.f4191a == aVar && dVar.f4192b != null) {
                        Log.w("SessionPlayer", "callback is already added. Ignoring.");
                        return;
                    }
                }
                this.f1534b.add(new C0944d<>(aVar, executor));
            }
        } else {
            throw new NullPointerException("callback shouldn't be null");
        }
    }

    /* renamed from: b */
    public abstract AbstractFutureC5108l<C0278b> mo37853b(TrackInfo trackInfo);

    /* renamed from: b */
    public final List<C0944d<AbstractC0277a, Executor>> m38217b() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f1533a) {
            arrayList.addAll(this.f1534b);
        }
        return arrayList;
    }

    /* renamed from: c */
    public abstract MediaItem mo37851c();

    /* renamed from: d */
    public abstract long mo37845d();

    /* renamed from: d */
    public abstract AbstractFutureC5108l<C0278b> mo37843d(long j);

    /* renamed from: e */
    public abstract long mo37842e();

    /* renamed from: f */
    public abstract int mo37840f();

    /* renamed from: g */
    public abstract float mo37839g();

    /* renamed from: h */
    public abstract int mo37837h();

    /* renamed from: i */
    public abstract int mo37836i();

    /* renamed from: j */
    public abstract List<TrackInfo> mo37835j();

    /* renamed from: k */
    public abstract VideoSize mo37834k();

    /* renamed from: l */
    public abstract AbstractFutureC5108l<C0278b> mo37833l();

    /* renamed from: m */
    public abstract AbstractFutureC5108l<C0278b> mo37832m();

    /* renamed from: n */
    public abstract AbstractFutureC5108l<C0278b> mo37831n();

    /* renamed from: p */
    public abstract AbstractFutureC5108l<C0278b> mo37830p();
}
