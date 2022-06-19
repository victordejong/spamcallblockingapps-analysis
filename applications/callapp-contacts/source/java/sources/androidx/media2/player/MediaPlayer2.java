package androidx.media2.player;

import android.view.Surface;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2.class */
abstract class MediaPlayer2 {

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$NoDrmSchemeException.class */
    public static class NoDrmSchemeException extends Exception {
        public NoDrmSchemeException(String str) {
            super(str);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer2$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$a.class */
    public static abstract class AbstractC2122a {
    }

    /* renamed from: androidx.media2.player.MediaPlayer2$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$b.class */
    public static abstract class AbstractC2123b {
    }

    /* renamed from: androidx.media2.player.MediaPlayer2$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$c.class */
    public static abstract class AbstractC2124c {
        /* renamed from: a */
        public void mo41310a(MediaItem mediaItem, int i) {
        }

        /* renamed from: a */
        public void mo41309a(MediaItem mediaItem, int i, int i2) {
        }

        /* renamed from: a */
        public void mo41308a(MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
        }

        /* renamed from: a */
        public void mo41307a(MediaItem mediaItem, C2186i c2186i) {
        }

        /* renamed from: a */
        public void mo41306a(MediaItem mediaItem, C2194m c2194m) {
        }

        /* renamed from: a */
        public void mo41305a(List<SessionPlayer.TrackInfo> list) {
        }

        /* renamed from: b */
        public void mo41304b(MediaItem mediaItem, int i, int i2) {
        }

        /* renamed from: c */
        public void mo41303c(MediaItem mediaItem, int i, int i2) {
        }
    }

    /* renamed from: a */
    public abstract SessionPlayer.TrackInfo mo41294a(int i);

    /* renamed from: a */
    public abstract Object mo41295a(float f);

    /* renamed from: a */
    public abstract Object mo41293a(long j, int i);

    /* renamed from: a */
    public abstract Object mo41292a(Surface surface);

    /* renamed from: a */
    public abstract Object mo41290a(AudioAttributesCompat audioAttributesCompat);

    /* renamed from: a */
    public abstract Object mo41289a(MediaItem mediaItem);

    /* renamed from: a */
    public abstract Object mo41286a(C2187j c2187j);

    /* renamed from: a */
    public abstract void mo41282a(Executor executor, AbstractC2122a abstractC2122a);

    /* renamed from: a */
    public abstract void mo41281a(Executor executor, AbstractC2124c abstractC2124c);

    /* renamed from: a */
    public abstract boolean mo41285a(Object obj);

    /* renamed from: b */
    public abstract MediaItem mo41280b();

    /* renamed from: b */
    public abstract Object mo41279b(int i);

    /* renamed from: b */
    public abstract Object mo41278b(MediaItem mediaItem);

    /* renamed from: c */
    public abstract Object mo41276c();

    /* renamed from: c */
    public abstract Object mo41275c(int i);

    /* renamed from: d */
    public abstract Object mo41274d();

    /* renamed from: e */
    public abstract Object mo41273e();

    /* renamed from: f */
    public abstract long mo41272f();

    /* renamed from: g */
    public abstract long mo41271g();

    /* renamed from: h */
    public abstract long mo41270h();

    /* renamed from: i */
    public abstract Object mo41269i();

    /* renamed from: j */
    public abstract AudioAttributesCompat mo41268j();

    /* renamed from: k */
    public abstract C2187j mo41267k();

    /* renamed from: l */
    public abstract int mo41266l();

    /* renamed from: m */
    public abstract int mo41265m();

    /* renamed from: n */
    public abstract float mo41264n();

    /* renamed from: o */
    public abstract List<SessionPlayer.TrackInfo> mo41263o();

    /* renamed from: p */
    public abstract void mo41262p();

    /* renamed from: q */
    public abstract void mo41261q();
}
