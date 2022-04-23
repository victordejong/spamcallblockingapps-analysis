package androidx.media2.player;

import android.content.Context;
import android.media.MediaDrmException;
import android.media.MediaFormat;
import android.view.Surface;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SubtitleData;
import java.util.List;
import java.util.concurrent.Executor;
import p012b.p076s.p112c.C1710b;
import p012b.p076s.p112c.C1711c;
import p012b.p076s.p112c.C1713d;
import p012b.p076s.p112c.p114g.C1719c;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2.class */
public abstract class MediaPlayer2 {

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$NoDrmSchemeException.class */
    public static class NoDrmSchemeException extends MediaDrmException {
        public NoDrmSchemeException(String str) {
            super(str);
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer2$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$a.class */
    public static abstract class AbstractC0408a {
    }

    /* renamed from: androidx.media2.player.MediaPlayer2$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$b.class */
    public static abstract class AbstractC0409b {
        /* renamed from: a */
        public void mo37805a(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i, int i2) {
        }

        /* renamed from: a */
        public void mo37804a(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i, SubtitleData subtitleData) {
        }

        /* renamed from: a */
        public void mo37803a(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, C1710b bVar) {
        }

        /* renamed from: a */
        public void mo37802a(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, C1713d dVar) {
        }

        /* renamed from: b */
        public void mo37801b(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i, int i2) {
        }

        /* renamed from: c */
        public void mo37800c(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i, int i2) {
        }

        /* renamed from: d */
        public void mo37799d(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i, int i2) {
        }
    }

    /* renamed from: androidx.media2.player.MediaPlayer2$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$c.class */
    public static abstract class AbstractC0410c {
        /* renamed from: a */
        public abstract MediaFormat mo32298a();

        /* renamed from: b */
        public abstract int mo32297b();
    }

    /* renamed from: a */
    public static MediaPlayer2 m37806a(Context context) {
        return new C1719c(context);
    }

    /* renamed from: a */
    public abstract Object mo32289a(float f);

    /* renamed from: a */
    public abstract Object mo32288a(int i);

    /* renamed from: a */
    public Object m37807a(long j) {
        return mo32287a(j, 0);
    }

    /* renamed from: a */
    public abstract Object mo32287a(long j, int i);

    /* renamed from: a */
    public abstract Object mo32286a(Surface surface);

    /* renamed from: a */
    public abstract Object mo32285a(AudioAttributesCompat audioAttributesCompat);

    /* renamed from: a */
    public abstract Object mo32284a(C1711c cVar);

    /* renamed from: a */
    public abstract void mo32279a(Executor executor, AbstractC0408a aVar);

    /* renamed from: a */
    public abstract void mo32278a(Executor executor, AbstractC0409b bVar);

    /* renamed from: a */
    public abstract boolean mo32281a(Object obj);

    /* renamed from: b */
    public abstract int mo32276b(int i);

    /* renamed from: b */
    public abstract void mo32277b();

    /* renamed from: c */
    public abstract AudioAttributesCompat mo32274c();

    /* renamed from: c */
    public abstract Object mo32273c(int i);

    /* renamed from: d */
    public abstract long mo32272d();

    /* renamed from: e */
    public abstract MediaItem mo32270e();

    /* renamed from: f */
    public abstract long mo32269f();

    /* renamed from: g */
    public abstract long mo32268g();

    /* renamed from: h */
    public abstract C1711c mo32267h();

    /* renamed from: i */
    public abstract float mo32266i();

    /* renamed from: j */
    public abstract Object mo32264j(MediaItem mediaItem);

    /* renamed from: j */
    public abstract List<AbstractC0410c> mo32265j();

    /* renamed from: k */
    public abstract int mo32263k();

    /* renamed from: k */
    public abstract Object mo32262k(MediaItem mediaItem);

    /* renamed from: l */
    public abstract int mo32261l();

    /* renamed from: m */
    public abstract Object mo32260m();

    /* renamed from: n */
    public abstract Object mo32259n();

    /* renamed from: o */
    public abstract Object mo32258o();

    /* renamed from: p */
    public abstract void mo32257p();

    /* renamed from: q */
    public abstract Object mo32256q();
}
