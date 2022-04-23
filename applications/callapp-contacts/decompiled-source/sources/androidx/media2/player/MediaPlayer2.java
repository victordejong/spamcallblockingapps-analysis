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

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$a.class */
    public static abstract class a {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$b.class */
    public static abstract class b {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$c.class */
    public static abstract class c {
        public void a(MediaItem mediaItem, int i) {
        }

        public void a(MediaItem mediaItem, int i, int i2) {
        }

        public void a(MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
        }

        public void a(MediaItem mediaItem, i iVar) {
        }

        public void a(MediaItem mediaItem, m mVar) {
        }

        public void a(List<SessionPlayer.TrackInfo> list) {
        }

        public void b(MediaItem mediaItem, int i, int i2) {
        }

        public void c(MediaItem mediaItem, int i, int i2) {
        }
    }

    public abstract SessionPlayer.TrackInfo a(int i);

    public abstract Object a(float f);

    public abstract Object a(long j, int i);

    public abstract Object a(Surface surface);

    public abstract Object a(AudioAttributesCompat audioAttributesCompat);

    public abstract Object a(MediaItem mediaItem);

    public abstract Object a(j jVar);

    public abstract void a(Executor executor, a aVar);

    public abstract void a(Executor executor, c cVar);

    public abstract boolean a(Object obj);

    public abstract MediaItem b();

    public abstract Object b(int i);

    public abstract Object b(MediaItem mediaItem);

    public abstract Object c();

    public abstract Object c(int i);

    public abstract Object d();

    public abstract Object e();

    public abstract long f();

    public abstract long g();

    public abstract long h();

    public abstract Object i();

    public abstract AudioAttributesCompat j();

    public abstract j k();

    public abstract int l();

    public abstract int m();

    public abstract float n();

    public abstract List<SessionPlayer.TrackInfo> o();

    public abstract void p();

    public abstract void q();
}
