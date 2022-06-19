package p1727n3.p1874y.p1908e;

import android.view.Surface;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.SessionCommand;
import androidx.media2.session.SessionCommandGroup;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import p1727n3.p1874y.p1875a.AbstractC27066a;
/* renamed from: n3.y.e.x */
/* loaded from: classes-dex2jar.jar:n3/y/e/x.class */
public class C27544x {

    /* renamed from: a */
    public final SessionPlayer f77580a;

    /* renamed from: b */
    public final Executor f77581b;

    /* renamed from: c */
    public final AbstractC27545a f77582c;

    /* renamed from: e */
    public boolean f77584e;

    /* renamed from: g */
    public SessionCommandGroup f77586g;

    /* renamed from: h */
    public MediaMetadata f77587h;

    /* renamed from: i */
    public final SessionCommandGroup f77588i;

    /* renamed from: f */
    public int f77585f = 0;

    /* renamed from: d */
    public final b f77583d = new b(this);

    /* renamed from: n3.y.e.x$a */
    /* loaded from: classes-dex2jar.jar:n3/y/e/x$a.class */
    public static abstract class AbstractC27545a {
        /* renamed from: a */
        public void m130a(C27544x c27544x, SessionCommandGroup sessionCommandGroup) {
        }

        /* renamed from: b */
        public abstract void m129b(C27544x c27544x, MediaItem mediaItem);

        /* renamed from: c */
        public void m128c(C27544x c27544x) {
        }

        /* renamed from: d */
        public void m127d(C27544x c27544x, float f) {
        }

        /* renamed from: e */
        public abstract void m126e(C27544x c27544x, int i);

        /* renamed from: f */
        public void m125f(C27544x c27544x, List<MediaItem> list, MediaMetadata mediaMetadata) {
        }

        /* renamed from: g */
        public void m124g(C27544x c27544x, long j) {
        }

        /* renamed from: h */
        public void m123h(C27544x c27544x, MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
        }

        /* renamed from: i */
        public abstract void m122i(C27544x c27544x, SessionPlayer.TrackInfo trackInfo);

        /* renamed from: j */
        public abstract void m121j(C27544x c27544x, SessionPlayer.TrackInfo trackInfo);

        /* renamed from: k */
        public abstract void m120k(C27544x c27544x, List<SessionPlayer.TrackInfo> list);

        /* renamed from: l */
        public abstract void m119l(C27544x c27544x, VideoSize videoSize);
    }

    public C27544x(SessionPlayer sessionPlayer, Executor executor, AbstractC27545a abstractC27545a) {
        Objects.requireNonNull(sessionPlayer, "player must not be null");
        Objects.requireNonNull(executor, "executor must not be null");
        this.f77580a = sessionPlayer;
        this.f77581b = executor;
        this.f77582c = abstractC27545a;
        SessionCommandGroup.C0284a c0284a = new SessionCommandGroup.C0284a();
        c0284a.m42770a(1, SessionCommand.f1234d);
        c0284a.m42770a(1, SessionCommand.f1235e);
        c0284a.m42770a(1, SessionCommand.f1236f);
        c0284a.m42770a(1, SessionCommand.f1237g);
        c0284a.m42770a(1, SessionCommand.f1238h);
        this.f77588i = new SessionCommandGroup(c0284a.f1243a);
    }

    /* renamed from: a */
    public void m145a() {
        boolean z;
        if (this.f77584e) {
            return;
        }
        SessionPlayer sessionPlayer = this.f77580a;
        if (sessionPlayer != null) {
            sessionPlayer.m42852k0(this.f77581b, this.f77583d);
        }
        int m138h = m138h();
        boolean z2 = false;
        if (this.f77585f != m138h) {
            this.f77585f = m138h;
            z = true;
        } else {
            z = false;
        }
        MediaMetadata mediaMetadata = null;
        SessionCommandGroup sessionCommandGroup = this.f77580a != null ? this.f77588i : null;
        if (!Objects.equals(this.f77586g, sessionCommandGroup)) {
            this.f77586g = sessionCommandGroup;
            z2 = true;
        }
        MediaItem m141e = m141e();
        if (m141e != null) {
            mediaMetadata = m141e.e();
        }
        this.f77587h = mediaMetadata;
        if (z) {
            this.f77582c.m126e(this, m138h);
        }
        if (sessionCommandGroup != null && z2) {
            this.f77582c.m130a(this, sessionCommandGroup);
        }
        this.f77582c.m129b(this, m141e);
        AbstractC27545a abstractC27545a = this.f77582c;
        SessionPlayer sessionPlayer2 = this.f77580a;
        abstractC27545a.m127d(this, sessionPlayer2 != null ? sessionPlayer2.mo42809E() : 1.0f);
        List<SessionPlayer.TrackInfo> m135k = m135k();
        if (m135k != null) {
            this.f77582c.m120k(this, m135k);
        }
        if (m141e() != null) {
            this.f77582c.m119l(this, m134l());
        }
        this.f77584e = true;
    }

    /* renamed from: b */
    public boolean m144b() {
        SessionCommandGroup sessionCommandGroup = this.f77586g;
        return sessionCommandGroup != null && sessionCommandGroup.m42771d(40000);
    }

    /* renamed from: c */
    public void m143c() {
        if (!this.f77584e) {
            return;
        }
        SessionPlayer sessionPlayer = this.f77580a;
        if (sessionPlayer != null) {
            SessionPlayer.AbstractC0232a abstractC0232a = this.f77583d;
            Objects.requireNonNull(sessionPlayer);
            Objects.requireNonNull(abstractC0232a, "callback shouldn't be null");
            synchronized (sessionPlayer.f937a) {
                int size = sessionPlayer.f938b.size();
                while (true) {
                    int i = size - 1;
                    if (i < 0) {
                        break;
                    }
                    size = i;
                    if (sessionPlayer.f938b.get(i).f74395a == abstractC0232a) {
                        sessionPlayer.f938b.remove(i);
                        size = i;
                    }
                }
            }
        }
        this.f77584e = false;
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* renamed from: d */
    public long m142d() {
        if (this.f77585f == 0) {
            return 0L;
        }
        long m139g = m139g();
        if (m139g == 0) {
            return 0L;
        }
        SessionPlayer sessionPlayer = this.f77580a;
        char mo42790d = sessionPlayer != null ? sessionPlayer.mo42790d() : (char) 0;
        return mo42790d < 0 ? (char) 0 : (mo42790d * 'd') / m139g;
    }

    /* renamed from: e */
    public MediaItem m141e() {
        SessionPlayer sessionPlayer = this.f77580a;
        if (sessionPlayer != null) {
            return sessionPlayer.mo42788k();
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* renamed from: f */
    public long m140f() {
        if (this.f77585f == 0) {
            return 0L;
        }
        SessionPlayer sessionPlayer = this.f77580a;
        char mo42787l = sessionPlayer != null ? sessionPlayer.mo42787l() : (char) 0;
        if (mo42787l < 0) {
            mo42787l = 0;
        }
        return mo42787l;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* renamed from: g */
    public long m139g() {
        if (this.f77585f == 0) {
            return 0L;
        }
        SessionPlayer sessionPlayer = this.f77580a;
        char mo42781q = sessionPlayer != null ? sessionPlayer.mo42781q() : (char) 0;
        if (mo42781q < 0) {
            mo42781q = 0;
        }
        return mo42781q;
    }

    /* renamed from: h */
    public int m138h() {
        SessionPlayer sessionPlayer = this.f77580a;
        if (sessionPlayer != null) {
            return sessionPlayer.mo42804I();
        }
        return 0;
    }

    /* renamed from: i */
    public SessionPlayer.TrackInfo m137i(int i) {
        SessionPlayer sessionPlayer = this.f77580a;
        if (sessionPlayer != null) {
            return sessionPlayer.mo42801K(i);
        }
        return null;
    }

    /* renamed from: j */
    public CharSequence m136j() {
        MediaMetadata mediaMetadata = this.f77587h;
        if (mediaMetadata == null || !mediaMetadata.e("android.media.metadata.TITLE")) {
            return null;
        }
        MediaMetadata mediaMetadata2 = this.f77587h;
        Objects.requireNonNull(mediaMetadata2);
        return mediaMetadata2.a.getCharSequence("android.media.metadata.TITLE");
    }

    /* renamed from: k */
    public List<SessionPlayer.TrackInfo> m135k() {
        SessionPlayer sessionPlayer = this.f77580a;
        return sessionPlayer != null ? sessionPlayer.mo42798P() : Collections.emptyList();
    }

    /* renamed from: l */
    public VideoSize m134l() {
        SessionPlayer sessionPlayer = this.f77580a;
        return sessionPlayer != null ? sessionPlayer.mo42797Q() : new VideoSize(0, 0);
    }

    /* renamed from: m */
    public boolean m133m() {
        return this.f77585f == 2;
    }

    /* renamed from: n */
    public void m132n(long j) {
        SessionPlayer sessionPlayer = this.f77580a;
        if (sessionPlayer != null) {
            sessionPlayer.mo42784n0(j);
        }
    }

    /* renamed from: o */
    public ListenableFuture<? extends AbstractC27066a> m131o(Surface surface) {
        SessionPlayer sessionPlayer = this.f77580a;
        if (sessionPlayer != null) {
            return sessionPlayer.mo42777z0(surface);
        }
        return null;
    }
}
