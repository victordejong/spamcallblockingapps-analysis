package androidx.media2.widget;

import android.support.v4.media.MediaMetadataCompat;
import android.view.Surface;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.SessionCommandGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.PangleAdapterConfiguration;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/k.class */
final class k {

    /* renamed from: a  reason: collision with root package name */
    final MediaController f5254a;

    /* renamed from: b  reason: collision with root package name */
    final SessionPlayer f5255b;

    /* renamed from: c  reason: collision with root package name */
    final b f5256c;

    /* renamed from: d  reason: collision with root package name */
    int f5257d;
    SessionCommandGroup e;
    MediaMetadata f;
    private final Executor g;
    private final a h;
    private final c i;
    private boolean j;
    private final SessionCommandGroup k;

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/k$a.class */
    final class a extends MediaController.a {
        a() {
        }

        @Override // androidx.media2.session.MediaController.a
        public final void a() {
            k.this.f5256c.c(k.this);
            k.this.m();
        }

        @Override // androidx.media2.session.MediaController.a
        public final void a(float f) {
            k.this.f5256c.a(k.this, f);
        }

        @Override // androidx.media2.session.MediaController.a
        public final void a(int i) {
            if (k.this.f5257d != i) {
                k.this.f5257d = i;
                k.this.f5256c.a(k.this, i);
            }
        }

        @Override // androidx.media2.session.MediaController.a
        public final void a(long j) {
            k.this.f5256c.a(k.this, j);
        }

        @Override // androidx.media2.session.MediaController.a
        public final void a(MediaItem mediaItem) {
            k.this.f = mediaItem == null ? null : mediaItem.d();
            k.this.f5256c.a(k.this, mediaItem);
        }

        @Override // androidx.media2.session.MediaController.a
        public final void a(SessionPlayer.TrackInfo trackInfo) {
            k.this.f5256c.a(k.this, trackInfo);
        }

        @Override // androidx.media2.session.MediaController.a
        public final void a(SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
            k.this.f5256c.a(k.this, trackInfo, subtitleData);
        }

        @Override // androidx.media2.session.MediaController.a
        public final void a(VideoSize videoSize) {
            k.this.f5256c.a(k.this, videoSize);
        }

        @Override // androidx.media2.session.MediaController.a
        public final void a(SessionCommandGroup sessionCommandGroup) {
            if (!androidx.core.e.a.a(k.this.e, sessionCommandGroup)) {
                k.this.e = sessionCommandGroup;
                k.this.f5256c.b(k.this);
            }
        }

        @Override // androidx.media2.session.MediaController.a
        public final void a(List<SessionPlayer.TrackInfo> list) {
            k.this.f5256c.a(k.this, list);
        }

        @Override // androidx.media2.session.MediaController.a
        public final void a(List<MediaItem> list, MediaMetadata mediaMetadata) {
            k.this.f5256c.a(k.this, list, mediaMetadata);
        }

        @Override // androidx.media2.session.MediaController.a
        public final void b(SessionPlayer.TrackInfo trackInfo) {
            k.this.f5256c.b(k.this, trackInfo);
        }

        @Override // androidx.media2.session.MediaController.a
        public final void c() {
            k.this.f5256c.a(k.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/k$b.class */
    public static abstract class b {
        void a(k kVar) {
        }

        void a(k kVar, float f) {
        }

        void a(k kVar, int i) {
        }

        void a(k kVar, long j) {
        }

        void a(k kVar, MediaItem mediaItem) {
        }

        void a(k kVar, SessionPlayer.TrackInfo trackInfo) {
        }

        void a(k kVar, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
        }

        void a(k kVar, VideoSize videoSize) {
        }

        void a(k kVar, List<SessionPlayer.TrackInfo> list) {
        }

        void a(k kVar, List<MediaItem> list, MediaMetadata mediaMetadata) {
        }

        void b(k kVar) {
        }

        void b(k kVar, SessionPlayer.TrackInfo trackInfo) {
        }

        void c(k kVar) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/k$c.class */
    final class c extends SessionPlayer.a {
        c() {
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onCurrentMediaItemChanged(SessionPlayer sessionPlayer, MediaItem mediaItem) {
            k.this.f = mediaItem == null ? null : mediaItem.d();
            k.this.f5256c.a(k.this, mediaItem);
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onPlaybackCompleted(SessionPlayer sessionPlayer) {
            k.this.f5256c.a(k.this);
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onPlaybackSpeedChanged(SessionPlayer sessionPlayer, float f) {
            k.this.f5256c.a(k.this, f);
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onPlayerStateChanged(SessionPlayer sessionPlayer, int i) {
            if (k.this.f5257d != i) {
                k.this.f5257d = i;
                k.this.f5256c.a(k.this, i);
            }
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onPlaylistChanged(SessionPlayer sessionPlayer, List<MediaItem> list, MediaMetadata mediaMetadata) {
            k.this.f5256c.a(k.this, list, mediaMetadata);
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onSeekCompleted(SessionPlayer sessionPlayer, long j) {
            k.this.f5256c.a(k.this, j);
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onSubtitleData(SessionPlayer sessionPlayer, MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
            k.this.f5256c.a(k.this, trackInfo, subtitleData);
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onTrackDeselected(SessionPlayer sessionPlayer, SessionPlayer.TrackInfo trackInfo) {
            k.this.f5256c.b(k.this, trackInfo);
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onTrackSelected(SessionPlayer sessionPlayer, SessionPlayer.TrackInfo trackInfo) {
            k.this.f5256c.a(k.this, trackInfo);
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onTracksChanged(SessionPlayer sessionPlayer, List<SessionPlayer.TrackInfo> list) {
            k.this.f5256c.a(k.this, list);
        }

        @Override // androidx.media2.common.SessionPlayer.a
        public final void onVideoSizeChanged(SessionPlayer sessionPlayer, VideoSize videoSize) {
            k.this.f5256c.a(k.this, videoSize);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(SessionPlayer sessionPlayer, Executor executor, b bVar) {
        this.f5257d = 0;
        Objects.requireNonNull(sessionPlayer, "player must not be null");
        Objects.requireNonNull(executor, "executor must not be null");
        Objects.requireNonNull(bVar, "callback must not be null");
        this.f5255b = sessionPlayer;
        this.g = executor;
        this.f5256c = bVar;
        this.i = new c();
        this.f5254a = null;
        this.h = null;
        this.k = new SessionCommandGroup.a().a(1).a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(MediaController mediaController, Executor executor, b bVar) {
        this.f5257d = 0;
        Objects.requireNonNull(mediaController, "controller must not be null");
        Objects.requireNonNull(executor, "executor must not be null");
        Objects.requireNonNull(bVar, "callback must not be null");
        this.f5254a = mediaController;
        this.g = executor;
        this.f5256c = bVar;
        this.h = new a();
        this.f5255b = null;
        this.i = null;
        this.k = null;
    }

    private float r() {
        MediaController mediaController = this.f5254a;
        if (mediaController != null) {
            return mediaController.b() ? mediaController.a().g() : BitmapDescriptorFactory.HUE_RED;
        }
        SessionPlayer sessionPlayer = this.f5255b;
        if (sessionPlayer != null) {
            return sessionPlayer.i();
        }
        return 1.0f;
    }

    private SessionCommandGroup s() {
        MediaController mediaController = this.f5254a;
        if (mediaController != null) {
            if (!mediaController.b()) {
                return null;
            }
            return mediaController.a().p();
        } else if (this.f5255b != null) {
            return this.k;
        } else {
            return null;
        }
    }

    private void t() {
        this.f5256c.a(this, r());
        List<SessionPlayer.TrackInfo> o = o();
        if (o != null) {
            this.f5256c.a(this, o);
        }
        if (l() != null) {
            this.f5256c.a(this, n());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SessionPlayer.TrackInfo a(int i) {
        MediaController mediaController = this.f5254a;
        if (mediaController != null) {
            return mediaController.a(i);
        }
        SessionPlayer sessionPlayer = this.f5255b;
        if (sessionPlayer != null) {
            return sessionPlayer.e(i);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.google.common.util.concurrent.a<? extends androidx.media2.common.a> a(Surface surface) {
        MediaController mediaController = this.f5254a;
        if (mediaController != null) {
            return mediaController.b() ? mediaController.a().a(surface) : MediaController.n();
        }
        SessionPlayer sessionPlayer = this.f5255b;
        if (sessionPlayer != null) {
            return sessionPlayer.a(surface);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (!this.j) {
            MediaController mediaController = this.f5254a;
            if (mediaController != null) {
                mediaController.a(this.g, this.h);
            } else {
                SessionPlayer sessionPlayer = this.f5255b;
                if (sessionPlayer != null) {
                    sessionPlayer.a(this.g, this.i);
                }
            }
            m();
            this.j = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j) {
        MediaController mediaController = this.f5254a;
        if (mediaController != null) {
            mediaController.a(j);
            return;
        }
        SessionPlayer sessionPlayer = this.f5255b;
        if (sessionPlayer != null) {
            sessionPlayer.a(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(SessionPlayer.TrackInfo trackInfo) {
        MediaController mediaController = this.f5254a;
        if (mediaController != null) {
            mediaController.a(trackInfo);
            return;
        }
        SessionPlayer sessionPlayer = this.f5255b;
        if (sessionPlayer != null) {
            sessionPlayer.a(trackInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        if (this.j) {
            MediaController mediaController = this.f5254a;
            if (mediaController != null) {
                mediaController.a(this.h);
            } else {
                SessionPlayer sessionPlayer = this.f5255b;
                if (sessionPlayer != null) {
                    sessionPlayer.a(this.i);
                }
            }
            this.j = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c() {
        return this.f5257d == 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long d() {
        long j;
        if (this.f5257d == 0) {
            return 0L;
        }
        MediaController mediaController = this.f5254a;
        if (mediaController != null) {
            j = mediaController.g();
        } else {
            SessionPlayer sessionPlayer = this.f5255b;
            j = sessionPlayer != null ? sessionPlayer.e() : 0L;
        }
        if (j < 0) {
            return 0L;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long e() {
        long j;
        if (this.f5257d == 0) {
            return 0L;
        }
        long j2 = j();
        if (j2 == 0) {
            return 0L;
        }
        MediaController mediaController = this.f5254a;
        if (mediaController != null) {
            j = mediaController.h();
        } else {
            SessionPlayer sessionPlayer = this.f5255b;
            j = sessionPlayer != null ? sessionPlayer.g() : 0L;
        }
        if (j < 0) {
            return 0L;
        }
        return (j * 100) / j2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int f() {
        MediaController mediaController = this.f5254a;
        if (mediaController != null) {
            return mediaController.e();
        }
        SessionPlayer sessionPlayer = this.f5255b;
        if (sessionPlayer != null) {
            return sessionPlayer.d();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g() {
        SessionCommandGroup sessionCommandGroup = this.e;
        return sessionCommandGroup != null && sessionCommandGroup.a(PangleAdapterConfiguration.CONTENT_TYPE_ERROR);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h() {
        MediaController mediaController = this.f5254a;
        if (mediaController != null) {
            mediaController.d();
            return;
        }
        SessionPlayer sessionPlayer = this.f5255b;
        if (sessionPlayer != null) {
            sessionPlayer.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i() {
        MediaController mediaController = this.f5254a;
        if (mediaController != null) {
            mediaController.c();
            return;
        }
        SessionPlayer sessionPlayer = this.f5255b;
        if (sessionPlayer != null) {
            sessionPlayer.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long j() {
        long j;
        if (this.f5257d == 0) {
            return 0L;
        }
        MediaController mediaController = this.f5254a;
        if (mediaController != null) {
            j = mediaController.f();
        } else {
            SessionPlayer sessionPlayer = this.f5255b;
            j = sessionPlayer != null ? sessionPlayer.f() : 0L;
        }
        if (j < 0) {
            return 0L;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final CharSequence k() {
        MediaMetadata mediaMetadata = this.f;
        if (mediaMetadata == null || !mediaMetadata.a(MediaMetadataCompat.METADATA_KEY_TITLE)) {
            return null;
        }
        return this.f.b(MediaMetadataCompat.METADATA_KEY_TITLE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final MediaItem l() {
        MediaController mediaController = this.f5254a;
        if (mediaController != null) {
            return mediaController.i();
        }
        SessionPlayer sessionPlayer = this.f5255b;
        if (sessionPlayer != null) {
            return sessionPlayer.r();
        }
        return null;
    }

    final void m() {
        boolean z;
        int f = f();
        boolean z2 = true;
        if (this.f5257d != f) {
            this.f5257d = f;
            z = true;
        } else {
            z = false;
        }
        SessionCommandGroup s = s();
        if (!androidx.core.e.a.a(this.e, s)) {
            this.e = s;
        } else {
            z2 = false;
        }
        MediaItem l = l();
        this.f = l == null ? null : l.d();
        if (z) {
            this.f5256c.a(this, f);
        }
        if (s != null && z2) {
            this.f5256c.b(this);
        }
        this.f5256c.a(this, l);
        t();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final VideoSize n() {
        MediaController mediaController = this.f5254a;
        if (mediaController != null) {
            return mediaController.l();
        }
        SessionPlayer sessionPlayer = this.f5255b;
        return sessionPlayer != null ? sessionPlayer.j() : new VideoSize(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<SessionPlayer.TrackInfo> o() {
        MediaController mediaController = this.f5254a;
        if (mediaController != null) {
            return mediaController.m();
        }
        SessionPlayer sessionPlayer = this.f5255b;
        return sessionPlayer != null ? sessionPlayer.w() : Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int p() {
        MediaController mediaController = this.f5254a;
        if (mediaController != null) {
            return mediaController.j();
        }
        SessionPlayer sessionPlayer = this.f5255b;
        if (sessionPlayer != null) {
            return sessionPlayer.t();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int q() {
        MediaController mediaController = this.f5254a;
        if (mediaController != null) {
            return mediaController.k();
        }
        SessionPlayer sessionPlayer = this.f5255b;
        if (sessionPlayer != null) {
            return sessionPlayer.u();
        }
        return -1;
    }
}
