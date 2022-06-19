package androidx.media2.session;

import android.view.Surface;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.VideoSize;
import com.google.common.util.concurrent.AbstractFutureC15579a;
import java.util.List;
/* renamed from: androidx.media2.session.k */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/k.class */
final class C2322k {

    /* renamed from: androidx.media2.session.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/k$a.class */
    interface AbstractC2323a {
        /* renamed from: a */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40970a();

        /* renamed from: a */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40969a(float f);

        /* renamed from: a */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40965a(long j);

        /* renamed from: b */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40952b();

        /* renamed from: c */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40948c();

        /* renamed from: d */
        int mo40946d();

        /* renamed from: e */
        long mo40944e();

        /* renamed from: f */
        long mo40942f();

        /* renamed from: g */
        int mo40941g();

        /* renamed from: h */
        float mo40940h();
    }

    /* renamed from: androidx.media2.session.k$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/k$b.class */
    interface AbstractC2324b extends AbstractC2323a, AbstractC2325c {
        /* renamed from: a */
        SessionPlayer.TrackInfo mo40968a(int i);

        /* renamed from: a */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40964a(Surface surface);

        /* renamed from: a */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40961a(SessionPlayer.TrackInfo trackInfo);

        /* renamed from: b */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40950b(SessionPlayer.TrackInfo trackInfo);

        /* renamed from: i */
        VideoSize mo40939i();

        /* renamed from: j */
        List<SessionPlayer.TrackInfo> mo40938j();
    }

    /* renamed from: androidx.media2.session.k$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/k$c.class */
    interface AbstractC2325c {
        /* renamed from: a */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40967a(int i, int i2);

        /* renamed from: a */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40966a(int i, MediaItem mediaItem);

        /* renamed from: a */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40962a(MediaMetadata mediaMetadata);

        /* renamed from: a */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40953a(List<MediaItem> list, MediaMetadata mediaMetadata);

        /* renamed from: b */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40951b(int i);

        /* renamed from: c */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40947c(int i);

        /* renamed from: d */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40945d(int i);

        /* renamed from: e */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40943e(int i);

        /* renamed from: k */
        List<MediaItem> mo40937k();

        /* renamed from: l */
        MediaMetadata mo40936l();

        /* renamed from: m */
        MediaItem mo40935m();

        /* renamed from: n */
        int mo40934n();

        /* renamed from: o */
        int mo40933o();

        /* renamed from: p */
        int mo40932p();

        /* renamed from: q */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40931q();

        /* renamed from: r */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40930r();

        /* renamed from: s */
        int mo40929s();

        /* renamed from: t */
        int mo40928t();
    }

    private C2322k() {
    }
}
