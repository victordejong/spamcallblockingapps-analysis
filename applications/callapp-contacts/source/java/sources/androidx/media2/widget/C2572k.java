package androidx.media2.widget;

import android.support.p008v4.media.MediaMetadataCompat;
import android.view.Surface;
import androidx.core.p036e.C0827a;
import androidx.media2.common.AbstractC1354a;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.SessionCommandGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.common.util.concurrent.AbstractFutureC15579a;
import com.mopub.mobileads.PangleAdapterConfiguration;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/k.class */
public final class C2572k {

    /* renamed from: a */
    final MediaController f9768a;

    /* renamed from: b */
    final SessionPlayer f9769b;

    /* renamed from: c */
    final AbstractC2574b f9770c;

    /* renamed from: d */
    int f9771d;

    /* renamed from: e */
    SessionCommandGroup f9772e;

    /* renamed from: f */
    MediaMetadata f9773f;

    /* renamed from: g */
    private final Executor f9774g;

    /* renamed from: h */
    private final C2573a f9775h;

    /* renamed from: i */
    private final C2575c f9776i;

    /* renamed from: j */
    private boolean f9777j;

    /* renamed from: k */
    private final SessionCommandGroup f9778k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.widget.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/k$a.class */
    public final class C2573a extends MediaController.AbstractC2200a {
        C2573a() {
            C2572k.this = r4;
        }

        @Override // androidx.media2.session.MediaController.AbstractC2200a
        /* renamed from: a */
        public final void mo40632a() {
            C2572k.this.f9770c.mo40607c(C2572k.this);
            C2572k.this.m40640m();
        }

        @Override // androidx.media2.session.MediaController.AbstractC2200a
        /* renamed from: a */
        public final void mo40631a(float f) {
            C2572k.this.f9770c.mo40618a(C2572k.this, f);
        }

        @Override // androidx.media2.session.MediaController.AbstractC2200a
        /* renamed from: a */
        public final void mo40630a(int i) {
            if (C2572k.this.f9771d == i) {
                return;
            }
            C2572k.this.f9771d = i;
            C2572k.this.f9770c.mo40617a(C2572k.this, i);
        }

        @Override // androidx.media2.session.MediaController.AbstractC2200a
        /* renamed from: a */
        public final void mo40629a(long j) {
            C2572k.this.f9770c.mo40616a(C2572k.this, j);
        }

        @Override // androidx.media2.session.MediaController.AbstractC2200a
        /* renamed from: a */
        public final void mo40628a(MediaItem mediaItem) {
            C2572k.this.f9773f = mediaItem == null ? null : mediaItem.m43200d();
            C2572k.this.f9770c.mo40615a(C2572k.this, mediaItem);
        }

        @Override // androidx.media2.session.MediaController.AbstractC2200a
        /* renamed from: a */
        public final void mo40627a(SessionPlayer.TrackInfo trackInfo) {
            C2572k.this.f9770c.mo40614a(C2572k.this, trackInfo);
        }

        @Override // androidx.media2.session.MediaController.AbstractC2200a
        /* renamed from: a */
        public final void mo40626a(SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
            C2572k.this.f9770c.mo40613a(C2572k.this, trackInfo, subtitleData);
        }

        @Override // androidx.media2.session.MediaController.AbstractC2200a
        /* renamed from: a */
        public final void mo40625a(VideoSize videoSize) {
            C2572k.this.f9770c.mo40612a(C2572k.this, videoSize);
        }

        @Override // androidx.media2.session.MediaController.AbstractC2200a
        /* renamed from: a */
        public final void mo40624a(SessionCommandGroup sessionCommandGroup) {
            if (C0827a.m44414a(C2572k.this.f9772e, sessionCommandGroup)) {
                return;
            }
            C2572k.this.f9772e = sessionCommandGroup;
            C2572k.this.f9770c.mo40609b(C2572k.this);
        }

        @Override // androidx.media2.session.MediaController.AbstractC2200a
        /* renamed from: a */
        public final void mo40623a(List<SessionPlayer.TrackInfo> list) {
            C2572k.this.f9770c.mo40611a(C2572k.this, list);
        }

        @Override // androidx.media2.session.MediaController.AbstractC2200a
        /* renamed from: a */
        public final void mo40622a(List<MediaItem> list, MediaMetadata mediaMetadata) {
            C2572k.this.f9770c.mo40610a(C2572k.this, list, mediaMetadata);
        }

        @Override // androidx.media2.session.MediaController.AbstractC2200a
        /* renamed from: b */
        public final void mo40621b(SessionPlayer.TrackInfo trackInfo) {
            C2572k.this.f9770c.mo40608b(C2572k.this, trackInfo);
        }

        @Override // androidx.media2.session.MediaController.AbstractC2200a
        /* renamed from: c */
        public final void mo40620c() {
            C2572k.this.f9770c.mo40619a(C2572k.this);
        }
    }

    /* renamed from: androidx.media2.widget.k$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/k$b.class */
    public static abstract class AbstractC2574b {
        /* renamed from: a */
        void mo40619a(C2572k c2572k) {
        }

        /* renamed from: a */
        void mo40618a(C2572k c2572k, float f) {
        }

        /* renamed from: a */
        void mo40617a(C2572k c2572k, int i) {
        }

        /* renamed from: a */
        void mo40616a(C2572k c2572k, long j) {
        }

        /* renamed from: a */
        void mo40615a(C2572k c2572k, MediaItem mediaItem) {
        }

        /* renamed from: a */
        void mo40614a(C2572k c2572k, SessionPlayer.TrackInfo trackInfo) {
        }

        /* renamed from: a */
        void mo40613a(C2572k c2572k, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
        }

        /* renamed from: a */
        void mo40612a(C2572k c2572k, VideoSize videoSize) {
        }

        /* renamed from: a */
        void mo40611a(C2572k c2572k, List<SessionPlayer.TrackInfo> list) {
        }

        /* renamed from: a */
        void mo40610a(C2572k c2572k, List<MediaItem> list, MediaMetadata mediaMetadata) {
        }

        /* renamed from: b */
        void mo40609b(C2572k c2572k) {
        }

        /* renamed from: b */
        void mo40608b(C2572k c2572k, SessionPlayer.TrackInfo trackInfo) {
        }

        /* renamed from: c */
        void mo40607c(C2572k c2572k) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.widget.k$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/k$c.class */
    public final class C2575c extends SessionPlayer.AbstractC1351a {
        C2575c() {
            C2572k.this = r4;
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onCurrentMediaItemChanged(SessionPlayer sessionPlayer, MediaItem mediaItem) {
            C2572k.this.f9773f = mediaItem == null ? null : mediaItem.m43200d();
            C2572k.this.f9770c.mo40615a(C2572k.this, mediaItem);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onPlaybackCompleted(SessionPlayer sessionPlayer) {
            C2572k.this.f9770c.mo40619a(C2572k.this);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onPlaybackSpeedChanged(SessionPlayer sessionPlayer, float f) {
            C2572k.this.f9770c.mo40618a(C2572k.this, f);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onPlayerStateChanged(SessionPlayer sessionPlayer, int i) {
            if (C2572k.this.f9771d == i) {
                return;
            }
            C2572k.this.f9771d = i;
            C2572k.this.f9770c.mo40617a(C2572k.this, i);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onPlaylistChanged(SessionPlayer sessionPlayer, List<MediaItem> list, MediaMetadata mediaMetadata) {
            C2572k.this.f9770c.mo40610a(C2572k.this, list, mediaMetadata);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onSeekCompleted(SessionPlayer sessionPlayer, long j) {
            C2572k.this.f9770c.mo40616a(C2572k.this, j);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onSubtitleData(SessionPlayer sessionPlayer, MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
            C2572k.this.f9770c.mo40613a(C2572k.this, trackInfo, subtitleData);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onTrackDeselected(SessionPlayer sessionPlayer, SessionPlayer.TrackInfo trackInfo) {
            C2572k.this.f9770c.mo40608b(C2572k.this, trackInfo);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onTrackSelected(SessionPlayer sessionPlayer, SessionPlayer.TrackInfo trackInfo) {
            C2572k.this.f9770c.mo40614a(C2572k.this, trackInfo);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onTracksChanged(SessionPlayer sessionPlayer, List<SessionPlayer.TrackInfo> list) {
            C2572k.this.f9770c.mo40611a(C2572k.this, list);
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC1351a
        public final void onVideoSizeChanged(SessionPlayer sessionPlayer, VideoSize videoSize) {
            C2572k.this.f9770c.mo40612a(C2572k.this, videoSize);
        }
    }

    public C2572k(SessionPlayer sessionPlayer, Executor executor, AbstractC2574b abstractC2574b) {
        this.f9771d = 0;
        Objects.requireNonNull(sessionPlayer, "player must not be null");
        Objects.requireNonNull(executor, "executor must not be null");
        Objects.requireNonNull(abstractC2574b, "callback must not be null");
        this.f9769b = sessionPlayer;
        this.f9774g = executor;
        this.f9770c = abstractC2574b;
        this.f9776i = new C2575c();
        this.f9768a = null;
        this.f9775h = null;
        this.f9778k = new SessionCommandGroup.C2213a().m41128a(1).m41129a();
    }

    public C2572k(MediaController mediaController, Executor executor, AbstractC2574b abstractC2574b) {
        this.f9771d = 0;
        Objects.requireNonNull(mediaController, "controller must not be null");
        Objects.requireNonNull(executor, "executor must not be null");
        Objects.requireNonNull(abstractC2574b, "callback must not be null");
        this.f9768a = mediaController;
        this.f9774g = executor;
        this.f9770c = abstractC2574b;
        this.f9775h = new C2573a();
        this.f9769b = null;
        this.f9776i = null;
        this.f9778k = null;
    }

    /* renamed from: r */
    private float m40635r() {
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            return mediaController.m41157b() ? mediaController.mo41081a().mo41056g() : BitmapDescriptorFactory.HUE_RED;
        }
        SessionPlayer sessionPlayer = this.f9769b;
        if (sessionPlayer == null) {
            return 1.0f;
        }
        return sessionPlayer.mo41344i();
    }

    /* renamed from: s */
    private SessionCommandGroup m40634s() {
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            if (mediaController.m41157b()) {
                return mediaController.mo41081a().mo41047p();
            }
            return null;
        } else if (this.f9769b == null) {
            return null;
        } else {
            return this.f9778k;
        }
    }

    /* renamed from: t */
    private void m40633t() {
        this.f9770c.mo40618a(this, m40635r());
        List<SessionPlayer.TrackInfo> m40638o = m40638o();
        if (m40638o != null) {
            this.f9770c.mo40611a(this, m40638o);
        }
        if (m40641l() != null) {
            this.f9770c.mo40612a(this, m40639n());
        }
    }

    /* renamed from: a */
    public final SessionPlayer.TrackInfo m40655a(int i) {
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            return mediaController.m41164a(i);
        }
        SessionPlayer sessionPlayer = this.f9769b;
        if (sessionPlayer == null) {
            return null;
        }
        return sessionPlayer.mo41350e(i);
    }

    /* renamed from: a */
    public final AbstractFutureC15579a<? extends AbstractC1354a> m40653a(Surface surface) {
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            return mediaController.m41157b() ? mediaController.mo41081a().mo41065a(surface) : MediaController.m41143n();
        }
        SessionPlayer sessionPlayer = this.f9769b;
        if (sessionPlayer == null) {
            return null;
        }
        return sessionPlayer.mo41380a(surface);
    }

    /* renamed from: a */
    public final void m40656a() {
        if (this.f9777j) {
            return;
        }
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            mediaController.m41158a(this.f9774g, this.f9775h);
        } else {
            SessionPlayer sessionPlayer = this.f9769b;
            if (sessionPlayer != null) {
                sessionPlayer.m43184a(this.f9774g, this.f9776i);
            }
        }
        m40640m();
        this.f9777j = true;
    }

    /* renamed from: a */
    public final void m40654a(long j) {
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            mediaController.m41163a(j);
            return;
        }
        SessionPlayer sessionPlayer = this.f9769b;
        if (sessionPlayer == null) {
            return;
        }
        sessionPlayer.mo41381a(j);
    }

    /* renamed from: a */
    public final void m40652a(SessionPlayer.TrackInfo trackInfo) {
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            mediaController.m41161a(trackInfo);
            return;
        }
        SessionPlayer sessionPlayer = this.f9769b;
        if (sessionPlayer == null) {
            return;
        }
        sessionPlayer.mo41374a(trackInfo);
    }

    /* renamed from: b */
    public final void m40651b() {
        if (!this.f9777j) {
            return;
        }
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            mediaController.m41160a(this.f9775h);
        } else {
            SessionPlayer sessionPlayer = this.f9769b;
            if (sessionPlayer != null) {
                sessionPlayer.m43185a(this.f9776i);
            }
        }
        this.f9777j = false;
    }

    /* renamed from: c */
    public final boolean m40650c() {
        return this.f9771d == 2;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* renamed from: d */
    public final long m40649d() {
        char c;
        if (this.f9771d == 0) {
            return 0L;
        }
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            c = mediaController.m41150g();
        } else {
            SessionPlayer sessionPlayer = this.f9769b;
            c = sessionPlayer != null ? sessionPlayer.mo41351e() : (char) 0;
        }
        if (c >= 0) {
            return c;
        }
        return 0L;
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* renamed from: e */
    public final long m40648e() {
        char c;
        if (this.f9771d == 0) {
            return 0L;
        }
        long m40643j = m40643j();
        if (m40643j == 0) {
            return 0L;
        }
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            c = mediaController.m41149h();
        } else {
            SessionPlayer sessionPlayer = this.f9769b;
            c = sessionPlayer != null ? sessionPlayer.mo41347g() : (char) 0;
        }
        if (c >= 0) {
            return (c * 'd') / m40643j;
        }
        return 0L;
    }

    /* renamed from: f */
    public final int m40647f() {
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            return mediaController.m41152e();
        }
        SessionPlayer sessionPlayer = this.f9769b;
        if (sessionPlayer == null) {
            return 0;
        }
        return sessionPlayer.mo41353d();
    }

    /* renamed from: g */
    public final boolean m40646g() {
        SessionCommandGroup sessionCommandGroup = this.f9772e;
        return sessionCommandGroup != null && sessionCommandGroup.m41130a(PangleAdapterConfiguration.CONTENT_TYPE_ERROR);
    }

    /* renamed from: h */
    public final void m40645h() {
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            mediaController.m41153d();
            return;
        }
        SessionPlayer sessionPlayer = this.f9769b;
        if (sessionPlayer == null) {
            return;
        }
        sessionPlayer.mo41366b();
    }

    /* renamed from: i */
    public final void m40644i() {
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            mediaController.m41154c();
            return;
        }
        SessionPlayer sessionPlayer = this.f9769b;
        if (sessionPlayer == null) {
            return;
        }
        sessionPlayer.mo41388a();
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* renamed from: j */
    public final long m40643j() {
        char c;
        if (this.f9771d == 0) {
            return 0L;
        }
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            c = mediaController.m41151f();
        } else {
            SessionPlayer sessionPlayer = this.f9769b;
            c = sessionPlayer != null ? sessionPlayer.mo41349f() : (char) 0;
        }
        if (c >= 0) {
            return c;
        }
        return 0L;
    }

    /* renamed from: k */
    public final CharSequence m40642k() {
        MediaMetadata mediaMetadata = this.f9773f;
        if (mediaMetadata == null || !mediaMetadata.m43197a(MediaMetadataCompat.METADATA_KEY_TITLE)) {
            return null;
        }
        return this.f9773f.m43196b(MediaMetadataCompat.METADATA_KEY_TITLE);
    }

    /* renamed from: l */
    public final MediaItem m40641l() {
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            return mediaController.m41148i();
        }
        SessionPlayer sessionPlayer = this.f9769b;
        if (sessionPlayer == null) {
            return null;
        }
        return sessionPlayer.mo41335r();
    }

    /* renamed from: m */
    final void m40640m() {
        boolean z;
        int m40647f = m40647f();
        boolean z2 = true;
        if (this.f9771d != m40647f) {
            this.f9771d = m40647f;
            z = true;
        } else {
            z = false;
        }
        SessionCommandGroup m40634s = m40634s();
        if (!C0827a.m44414a(this.f9772e, m40634s)) {
            this.f9772e = m40634s;
        } else {
            z2 = false;
        }
        MediaItem m40641l = m40641l();
        this.f9773f = m40641l == null ? null : m40641l.m43200d();
        if (z) {
            this.f9770c.mo40617a(this, m40647f);
        }
        if (m40634s != null && z2) {
            this.f9770c.mo40609b(this);
        }
        this.f9770c.mo40615a(this, m40641l);
        m40633t();
    }

    /* renamed from: n */
    public final VideoSize m40639n() {
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            return mediaController.m41145l();
        }
        SessionPlayer sessionPlayer = this.f9769b;
        return sessionPlayer != null ? sessionPlayer.mo41343j() : new VideoSize(0, 0);
    }

    /* renamed from: o */
    public final List<SessionPlayer.TrackInfo> m40638o() {
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            return mediaController.m41144m();
        }
        SessionPlayer sessionPlayer = this.f9769b;
        return sessionPlayer != null ? sessionPlayer.mo41331w() : Collections.emptyList();
    }

    /* renamed from: p */
    public final int m40637p() {
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            return mediaController.m41147j();
        }
        SessionPlayer sessionPlayer = this.f9769b;
        if (sessionPlayer == null) {
            return -1;
        }
        return sessionPlayer.mo41333t();
    }

    /* renamed from: q */
    public final int m40636q() {
        MediaController mediaController = this.f9768a;
        if (mediaController != null) {
            return mediaController.m41146k();
        }
        SessionPlayer sessionPlayer = this.f9769b;
        if (sessionPlayer == null) {
            return -1;
        }
        return sessionPlayer.mo41332u();
    }
}
