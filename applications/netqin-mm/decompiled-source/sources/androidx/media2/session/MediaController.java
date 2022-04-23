package androidx.media2.session;

import android.view.Surface;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.VideoSize;
import java.util.List;
import java.util.concurrent.Executor;
import p012b.p042i.p053o.C0943c;
import p012b.p130z.AbstractC1978c;
import p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController.class */
public class MediaController implements AutoCloseable {

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$PlaybackInfo.class */
    public static final class PlaybackInfo implements AbstractC1978c {

        /* renamed from: a */
        public int f2190a;

        /* renamed from: b */
        public int f2191b;

        /* renamed from: c */
        public int f2192c;

        /* renamed from: d */
        public int f2193d;

        /* renamed from: e */
        public AudioAttributesCompat f2194e;

        public boolean equals(Object obj) {
            if (!(obj instanceof PlaybackInfo)) {
                return false;
            }
            PlaybackInfo playbackInfo = (PlaybackInfo) obj;
            boolean z = false;
            if (this.f2190a == playbackInfo.f2190a) {
                z = false;
                if (this.f2191b == playbackInfo.f2191b) {
                    z = false;
                    if (this.f2192c == playbackInfo.f2192c) {
                        z = false;
                        if (this.f2193d == playbackInfo.f2193d) {
                            z = false;
                            if (C0943c.m35448a(this.f2194e, playbackInfo.f2194e)) {
                                z = true;
                            }
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return C0943c.m35447a(Integer.valueOf(this.f2190a), Integer.valueOf(this.f2191b), Integer.valueOf(this.f2192c), Integer.valueOf(this.f2193d), this.f2194e);
        }
    }

    /* renamed from: androidx.media2.session.MediaController$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$a.class */
    public static abstract class AbstractC0421a {
    }

    /* renamed from: a */
    public SessionPlayer.TrackInfo m37774a(int i) {
        throw null;
    }

    /* renamed from: a */
    public SessionCommandGroup m37776a() {
        throw null;
    }

    /* renamed from: a */
    public AbstractFutureC5108l<SessionResult> m37775a(float f) {
        throw null;
    }

    /* renamed from: a */
    public AbstractFutureC5108l<SessionResult> m37773a(Surface surface) {
        throw null;
    }

    /* renamed from: a */
    public AbstractFutureC5108l<SessionResult> m37772a(SessionPlayer.TrackInfo trackInfo) {
        throw null;
    }

    /* renamed from: a */
    public void m37771a(AbstractC0421a aVar) {
        throw null;
    }

    /* renamed from: a */
    public void m37770a(Executor executor, AbstractC0421a aVar) {
        throw null;
    }

    /* renamed from: b */
    public long m37769b() {
        throw null;
    }

    /* renamed from: b */
    public AbstractFutureC5108l<SessionResult> m37768b(SessionPlayer.TrackInfo trackInfo) {
        throw null;
    }

    /* renamed from: c */
    public MediaItem m37767c() {
        throw null;
    }

    /* renamed from: d */
    public long m37766d() {
        throw null;
    }

    /* renamed from: d */
    public AbstractFutureC5108l<SessionResult> m37765d(long j) {
        throw null;
    }

    /* renamed from: e */
    public long m37764e() {
        throw null;
    }

    /* renamed from: f */
    public int m37763f() {
        throw null;
    }

    /* renamed from: g */
    public float m37762g() {
        throw null;
    }

    /* renamed from: h */
    public int m37761h() {
        throw null;
    }

    /* renamed from: i */
    public int m37760i() {
        throw null;
    }

    /* renamed from: j */
    public List<SessionPlayer.TrackInfo> m37759j() {
        throw null;
    }

    /* renamed from: k */
    public VideoSize m37758k() {
        throw null;
    }

    /* renamed from: l */
    public boolean m37757l() {
        throw null;
    }

    /* renamed from: m */
    public AbstractFutureC5108l<SessionResult> m37756m() {
        throw null;
    }

    /* renamed from: n */
    public AbstractFutureC5108l<SessionResult> m37755n() {
        throw null;
    }

    /* renamed from: p */
    public AbstractFutureC5108l<SessionResult> m37754p() {
        throw null;
    }

    /* renamed from: q */
    public AbstractFutureC5108l<SessionResult> m37753q() {
        throw null;
    }
}
