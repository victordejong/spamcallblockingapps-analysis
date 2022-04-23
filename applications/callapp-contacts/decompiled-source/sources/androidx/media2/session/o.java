package androidx.media2.session;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import androidx.media.b;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaSession;
import androidx.media2.session.SessionCommandGroup;
import com.mopub.mobileads.PangleAdapterConfiguration;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/o.class */
public final class o extends MediaSessionCompat.a {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f4957a = Log.isLoggable("MediaSessionLegacyStub", 3);
    static final SparseArray<SessionCommand> f = new SparseArray<>();
    final androidx.media2.session.a<b.C0073b> g;
    final MediaSession.c h;
    final androidx.media.b i;
    final Context j;
    final a l;
    final MediaSession.a k = new c();
    volatile long m = 300000;

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/o$a.class */
    final class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            MediaSession.b bVar = (MediaSession.b) message.obj;
            if (o.this.g.b(bVar)) {
                try {
                    bVar.f4536c.b(0);
                } catch (RemoteException e) {
                }
                o.this.g.a(bVar);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/o$b.class */
    final class b extends MediaSession.a {

        /* renamed from: b  reason: collision with root package name */
        private final b.C0073b f5000b;

        b(b.C0073b bVar) {
            this.f5000b = bVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, long j, long j2, float f) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, long j, long j2, int i2) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, long j, long j2, long j3) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaItem mediaItem, int i2, int i3, int i4) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaItem mediaItem, int i2, long j, long j2, long j3) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaMetadata mediaMetadata) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, SessionPlayer.b bVar) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, VideoSize videoSize) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, LibraryResult libraryResult) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaController.PlaybackInfo playbackInfo) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, SessionResult sessionResult) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, List<MediaItem> list, MediaMetadata mediaMetadata, int i2, int i3, int i4) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, List<SessionPlayer.TrackInfo> list, SessionPlayer.TrackInfo trackInfo, SessionPlayer.TrackInfo trackInfo2, SessionPlayer.TrackInfo trackInfo3, SessionPlayer.TrackInfo trackInfo4) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void b(int i) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void b(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void b(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != b.class) {
                return false;
            }
            return androidx.core.e.a.a(this.f5000b, ((b) obj).f5000b);
        }

        public final int hashCode() {
            return androidx.core.e.a.a(this.f5000b);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/o$c.class */
    final class c extends MediaSession.a {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i) throws RemoteException {
            PlaybackStateCompat I = o.this.h.I();
            PlaybackStateCompat playbackStateCompat = I;
            if (I.getState() != 2) {
                playbackStateCompat = new PlaybackStateCompat.a(I).a(2, I.getPosition(), I.getPlaybackSpeed(), SystemClock.elapsedRealtime()).b();
            }
            o.this.h.E().a(playbackStateCompat);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            o.this.h.E().f447a.d(i2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, long j, long j2, float f) throws RemoteException {
            o.this.h.E().a(o.this.h.I());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, long j, long j2, int i2) throws RemoteException {
            o.this.h.E().a(o.this.h.I());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, long j, long j2, long j3) throws RemoteException {
            o.this.h.E().a(o.this.h.I());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaItem mediaItem, int i2, int i3, int i4) throws RemoteException {
            o.this.h.E().f447a.a(mediaItem == null ? null : s.a(mediaItem.d()));
            o.this.h.E().a(o.this.h.I());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaItem mediaItem, int i2, long j, long j2, long j3) throws RemoteException {
            o.this.h.E().a(o.this.h.I());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaMetadata mediaMetadata) throws RemoteException {
            CharSequence charSequence;
            CharSequence c2 = o.this.h.E().f448b.c();
            if (mediaMetadata != null) {
                CharSequence b2 = mediaMetadata.b(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE);
                charSequence = b2;
                if (b2 == null) {
                    charSequence = mediaMetadata.b(MediaMetadataCompat.METADATA_KEY_TITLE);
                }
            } else {
                charSequence = null;
            }
            if (!TextUtils.equals(c2, charSequence)) {
                o.this.h.E().a(charSequence);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, SessionPlayer.b bVar) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, VideoSize videoSize) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, LibraryResult libraryResult) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaController.PlaybackInfo playbackInfo) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, SessionResult sessionResult) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, List<MediaItem> list, MediaMetadata mediaMetadata, int i2, int i3, int i4) throws RemoteException {
            if (Build.VERSION.SDK_INT >= 21) {
                o.this.h.E().a(s.d(list));
            } else if (list == null) {
                o.this.h.E().a((List<MediaSessionCompat.QueueItem>) null);
            } else {
                List<MediaSessionCompat.QueueItem> e = s.e(s.d(list));
                if (e.size() != list.size()) {
                    StringBuilder sb = new StringBuilder("Sending ");
                    sb.append(e.size());
                    sb.append(" items out of ");
                    sb.append(list.size());
                }
                o.this.h.E().a(e);
            }
            a(i, mediaMetadata);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, List<SessionPlayer.TrackInfo> list, SessionPlayer.TrackInfo trackInfo, SessionPlayer.TrackInfo trackInfo2, SessionPlayer.TrackInfo trackInfo3, SessionPlayer.TrackInfo trackInfo4) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void b(int i) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void b(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            o.this.h.E().f447a.c(i2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void b(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/o$d.class */
    public interface d {
        void a(MediaSession.b bVar) throws RemoteException;
    }

    static {
        for (SessionCommand sessionCommand : new SessionCommandGroup.a().b(2).e(2).a().a()) {
            f.append(sessionCommand.f, sessionCommand);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(MediaSession.c cVar, Handler handler) {
        this.h = cVar;
        Context F = cVar.F();
        this.j = F;
        this.i = androidx.media.b.a(F);
        this.l = new a(handler.getLooper());
        this.g = new androidx.media2.session.a<>(cVar);
    }

    private void a(final SessionCommand sessionCommand, final int i, final d dVar) {
        if (!this.h.H()) {
            final b.C0073b b2 = this.h.E().b();
            if (b2 == null) {
                StringBuilder sb = new StringBuilder("RemoteUserInfo is null, ignoring command=");
                sb.append(sessionCommand);
                sb.append(", commandCode=");
                sb.append(i);
                return;
            }
            this.h.G().execute(new Runnable() { // from class: androidx.media2.session.o.13
                @Override // java.lang.Runnable
                public final void run() {
                    if (!o.this.h.H()) {
                        MediaSession.b b3 = o.this.g.b((androidx.media2.session.a<b.C0073b>) b2);
                        MediaSession.b bVar = b3;
                        if (b3 == null) {
                            bVar = new MediaSession.b(b2, -1, o.this.i.a(b2), new b(b2), null);
                            o.this.h.y();
                            o.this.h.z();
                            SessionCommandGroup d2 = MediaSession.d.d();
                            if (d2 == null) {
                                try {
                                    bVar.f4536c.b(0);
                                    return;
                                } catch (RemoteException e) {
                                    return;
                                }
                            } else {
                                o.this.g.a(bVar.f4534a, bVar, d2);
                            }
                        }
                        a aVar = o.this.l;
                        long j = o.this.m;
                        aVar.removeMessages(1001, bVar);
                        aVar.sendMessageDelayed(aVar.obtainMessage(1001, bVar), j);
                        o.this.a(bVar, sessionCommand, i, dVar);
                    }
                }
            });
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void a() {
        a((SessionCommand) null, 10002, new d() { // from class: androidx.media2.session.o.12
            @Override // androidx.media2.session.o.d
            public final void a(MediaSession.b bVar) throws RemoteException {
                o.this.h.a();
            }
        });
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void a(final float f2) {
        a((SessionCommand) null, 10004, new d() { // from class: androidx.media2.session.o.3
            @Override // androidx.media2.session.o.d
            public final void a(MediaSession.b bVar) throws RemoteException {
                o.this.h.a(f2);
            }
        });
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void a(final int i) {
        a((SessionCommand) null, 10011, new d() { // from class: androidx.media2.session.o.8
            @Override // androidx.media2.session.o.d
            public final void a(MediaSession.b bVar) throws RemoteException {
                o.this.h.d(i);
            }
        });
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void a(final long j) {
        a((SessionCommand) null, 10007, new d() { // from class: androidx.media2.session.o.4
            @Override // androidx.media2.session.o.d
            public final void a(MediaSession.b bVar) throws RemoteException {
                if (o.this.h.B().n() != null) {
                    o.this.h.b((int) j);
                }
            }
        });
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void a(final Uri uri, final Bundle bundle) {
        a((SessionCommand) null, 40011, new d() { // from class: androidx.media2.session.o.14
            @Override // androidx.media2.session.o.d
            public final void a(MediaSession.b bVar) throws RemoteException {
                o.this.h.y();
                o.this.h.z();
            }
        });
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void a(MediaDescriptionCompat mediaDescriptionCompat) {
        a(mediaDescriptionCompat, Integer.MAX_VALUE);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void a(final MediaDescriptionCompat mediaDescriptionCompat, final int i) {
        if (mediaDescriptionCompat != null) {
            a((SessionCommand) null, 10013, new d() { // from class: androidx.media2.session.o.10
                @Override // androidx.media2.session.o.d
                public final void a(MediaSession.b bVar) throws RemoteException {
                    if (TextUtils.isEmpty(mediaDescriptionCompat.getMediaId())) {
                        Log.w("MediaSessionLegacyStub", "onAddQueueItem(): Media ID shouldn't be empty");
                        return;
                    }
                    o.this.h.y();
                    o.this.h.z();
                    o.this.h.a(i, (MediaItem) null);
                }
            });
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void a(RatingCompat ratingCompat) {
        b(ratingCompat);
    }

    final void a(MediaSession.b bVar, SessionCommand sessionCommand, int i, d dVar) {
        SessionCommand sessionCommand2;
        if (sessionCommand != null) {
            if (this.g.a(bVar, sessionCommand)) {
                sessionCommand2 = f.get(sessionCommand.f);
            } else {
                return;
            }
        } else if (this.g.a(bVar, i)) {
            sessionCommand2 = f.get(i);
        } else {
            return;
        }
        if (sessionCommand2 != null) {
            this.h.y();
            this.h.z();
        }
        try {
            dVar.a(bVar);
        } catch (RemoteException e) {
            Log.w("MediaSessionLegacyStub", "Exception in ".concat(String.valueOf(bVar)), e);
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void a(String str, Bundle bundle) {
        a(new Uri.Builder().scheme("androidx").authority("media2-session").path("prepareFromMediaId").appendQueryParameter("id", str).build(), bundle);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void a(String str, final Bundle bundle, final ResultReceiver resultReceiver) {
        if (str != null) {
            final SessionCommand sessionCommand = new SessionCommand(str, null);
            a(sessionCommand, 0, new d() { // from class: androidx.media2.session.o.1
                @Override // androidx.media2.session.o.d
                public final void a(MediaSession.b bVar) throws RemoteException {
                    o.this.h.y();
                    o.this.h.z();
                    SessionResult e = MediaSession.d.e();
                    ResultReceiver resultReceiver2 = resultReceiver;
                    if (resultReceiver2 != null) {
                        resultReceiver2.send(e.a(), e.f4548c);
                    }
                }
            });
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void b() {
        a((SessionCommand) null, 10000, new d() { // from class: androidx.media2.session.o.15
            @Override // androidx.media2.session.o.d
            public final void a(MediaSession.b bVar) throws RemoteException {
                o.this.h.b();
            }
        });
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void b(final int i) {
        a((SessionCommand) null, 10010, new d() { // from class: androidx.media2.session.o.9
            @Override // androidx.media2.session.o.d
            public final void a(MediaSession.b bVar) throws RemoteException {
                o.this.h.e(i);
            }
        });
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void b(final long j) {
        a((SessionCommand) null, 10003, new d() { // from class: androidx.media2.session.o.19
            @Override // androidx.media2.session.o.d
            public final void a(MediaSession.b bVar) throws RemoteException {
                o.this.h.a(j);
            }
        });
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void b(final Uri uri, final Bundle bundle) {
        a((SessionCommand) null, 40011, new d() { // from class: androidx.media2.session.o.16
            @Override // androidx.media2.session.o.d
            public final void a(MediaSession.b bVar) throws RemoteException {
                o.this.h.y();
                o.this.h.z();
            }
        });
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void b(final MediaDescriptionCompat mediaDescriptionCompat) {
        if (mediaDescriptionCompat != null) {
            a((SessionCommand) null, 10014, new d() { // from class: androidx.media2.session.o.11
                @Override // androidx.media2.session.o.d
                public final void a(MediaSession.b bVar) throws RemoteException {
                    String mediaId = mediaDescriptionCompat.getMediaId();
                    if (TextUtils.isEmpty(mediaId)) {
                        Log.w("MediaSessionLegacyStub", "onRemoveQueueItem(): Media ID shouldn't be null");
                        return;
                    }
                    List<MediaItem> k = o.this.h.k();
                    for (int i = 0; i < k.size(); i++) {
                        if (TextUtils.equals(k.get(i).f(), mediaId)) {
                            o.this.h.c(i);
                            return;
                        }
                    }
                }
            });
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void b(final RatingCompat ratingCompat) {
        if (ratingCompat != null) {
            a((SessionCommand) null, 40010, new d() { // from class: androidx.media2.session.o.7
                @Override // androidx.media2.session.o.d
                public final void a(MediaSession.b bVar) throws RemoteException {
                    MediaItem m = o.this.h.m();
                    if (m != null) {
                        o.this.h.y();
                        o.this.h.z();
                        m.f();
                        s.a(ratingCompat);
                    }
                }
            });
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void b(String str, Bundle bundle) {
        a(new Uri.Builder().scheme("androidx").authority("media2-session").path("prepareFromSearch").appendQueryParameter("query", str).build(), bundle);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void c() {
        a((SessionCommand) null, 10001, new d() { // from class: androidx.media2.session.o.17
            @Override // androidx.media2.session.o.d
            public final void a(MediaSession.b bVar) throws RemoteException {
                o.this.h.c();
            }
        });
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void c(String str, Bundle bundle) {
        b(new Uri.Builder().scheme("androidx").authority("media2-session").path("playFromMediaId").appendQueryParameter("id", str).build(), bundle);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void d() {
        a((SessionCommand) null, 10009, new d() { // from class: androidx.media2.session.o.20
            @Override // androidx.media2.session.o.d
            public final void a(MediaSession.b bVar) throws RemoteException {
                o.this.h.r();
            }
        });
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void d(String str, Bundle bundle) {
        b(new Uri.Builder().scheme("androidx").authority("media2-session").path("playFromSearch").appendQueryParameter("query", str).build(), bundle);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void e() {
        a((SessionCommand) null, 10008, new d() { // from class: androidx.media2.session.o.2
            @Override // androidx.media2.session.o.d
            public final void a(MediaSession.b bVar) throws RemoteException {
                o.this.h.q();
            }
        });
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void f() {
        a((SessionCommand) null, PangleAdapterConfiguration.CONTENT_TYPE_ERROR, new d() { // from class: androidx.media2.session.o.5
            @Override // androidx.media2.session.o.d
            public final void a(MediaSession.b bVar) throws RemoteException {
                o.this.h.y();
                o.this.h.z();
            }
        });
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void g() {
        a((SessionCommand) null, 40001, new d() { // from class: androidx.media2.session.o.6
            @Override // androidx.media2.session.o.d
            public final void a(MediaSession.b bVar) throws RemoteException {
                o.this.h.y();
                o.this.h.z();
            }
        });
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.a
    public final void h() {
        a((SessionCommand) null, 10001, new d() { // from class: androidx.media2.session.o.18
            @Override // androidx.media2.session.o.d
            public final void a(MediaSession.b bVar) throws RemoteException {
                o.this.a(bVar, null, 10003, new d() { // from class: androidx.media2.session.o.18.1
                    @Override // androidx.media2.session.o.d
                    public final void a(MediaSession.b bVar2) throws RemoteException {
                        o.this.h.c();
                        o.this.h.a(0L);
                    }
                });
            }
        });
    }
}
