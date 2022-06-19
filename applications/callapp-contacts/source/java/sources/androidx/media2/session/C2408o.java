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
import android.support.p008v4.media.MediaDescriptionCompat;
import android.support.p008v4.media.MediaMetadataCompat;
import android.support.p008v4.media.RatingCompat;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.support.p008v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.p036e.C0827a;
import androidx.media.C1329b;
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
/* renamed from: androidx.media2.session.o */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/o.class */
public final class C2408o extends MediaSessionCompat.AbstractC0064a {

    /* renamed from: a */
    static final boolean f9284a = Log.isLoggable("MediaSessionLegacyStub", 3);

    /* renamed from: f */
    static final SparseArray<SessionCommand> f9285f = new SparseArray<>();

    /* renamed from: g */
    final C2217a<C1329b.C1331b> f9286g;

    /* renamed from: h */
    final MediaSession.AbstractC2210c f9287h;

    /* renamed from: i */
    final C1329b f9288i;

    /* renamed from: j */
    final Context f9289j;

    /* renamed from: l */
    final HandlerC2430a f9291l;

    /* renamed from: k */
    final MediaSession.AbstractC2208a f9290k = new C2432c();

    /* renamed from: m */
    volatile long f9292m = 300000;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.session.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/o$a.class */
    public final class HandlerC2430a extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        HandlerC2430a(Looper looper) {
            super(looper);
            C2408o.this = r4;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            MediaSession.C2209b c2209b = (MediaSession.C2209b) message.obj;
            if (C2408o.this.f9286g.m41091b(c2209b)) {
                try {
                    c2209b.f8743c.mo40813b(0);
                } catch (RemoteException e) {
                }
                C2408o.this.f9286g.m41096a(c2209b);
            }
        }
    }

    /* renamed from: androidx.media2.session.o$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/o$b.class */
    final class C2431b extends MediaSession.AbstractC2208a {

        /* renamed from: b */
        private final C1329b.C1331b f9336b;

        C2431b(C1329b.C1331b c1331b) {
            C2408o.this = r4;
            this.f9336b = c1331b;
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40830a(int i) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40829a(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40828a(int i, long j, long j2, float f) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40827a(int i, long j, long j2, int i2) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40826a(int i, long j, long j2, long j3) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40825a(int i, MediaItem mediaItem, int i2, int i3, int i4) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40824a(int i, MediaItem mediaItem, int i2, long j, long j2, long j3) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40823a(int i, MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40822a(int i, MediaMetadata mediaMetadata) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40821a(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40820a(int i, SessionPlayer.C1352b c1352b) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40819a(int i, VideoSize videoSize) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40818a(int i, LibraryResult libraryResult) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40817a(int i, MediaController.PlaybackInfo playbackInfo) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40816a(int i, SessionResult sessionResult) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40815a(int i, List<MediaItem> list, MediaMetadata mediaMetadata, int i2, int i3, int i4) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40814a(int i, List<SessionPlayer.TrackInfo> list, SessionPlayer.TrackInfo trackInfo, SessionPlayer.TrackInfo trackInfo2, SessionPlayer.TrackInfo trackInfo3, SessionPlayer.TrackInfo trackInfo4) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: b */
        public final void mo40813b(int i) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: b */
        public final void mo40812b(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            throw new AssertionError("This shouldn't be called");
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: b */
        public final void mo40811b(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && obj.getClass() == C2431b.class) {
                return C0827a.m44414a(this.f9336b, ((C2431b) obj).f9336b);
            }
            return false;
        }

        public final int hashCode() {
            return C0827a.m44413a(this.f9336b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.session.o$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/o$c.class */
    public final class C2432c extends MediaSession.AbstractC2208a {
        C2432c() {
            C2408o.this = r4;
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40830a(int i) throws RemoteException {
            PlaybackStateCompat mo40973I = C2408o.this.f9287h.mo40973I();
            PlaybackStateCompat playbackStateCompat = mo40973I;
            if (mo40973I.getState() != 2) {
                playbackStateCompat = new PlaybackStateCompat.C0084a(mo40973I).m46484a(2, mo40973I.getPosition(), mo40973I.getPlaybackSpeed(), SystemClock.elapsedRealtime()).m46483b();
            }
            C2408o.this.f9287h.mo40977E().m46532a(playbackStateCompat);
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40829a(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            C2408o.this.f9287h.mo40977E().f105a.mo46495d(i2);
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40828a(int i, long j, long j2, float f) throws RemoteException {
            C2408o.this.f9287h.mo40977E().m46532a(C2408o.this.f9287h.mo40973I());
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40827a(int i, long j, long j2, int i2) throws RemoteException {
            C2408o.this.f9287h.mo40977E().m46532a(C2408o.this.f9287h.mo40973I());
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40826a(int i, long j, long j2, long j3) throws RemoteException {
            C2408o.this.f9287h.mo40977E().m46532a(C2408o.this.f9287h.mo40973I());
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40825a(int i, MediaItem mediaItem, int i2, int i3, int i4) throws RemoteException {
            C2408o.this.f9287h.mo40977E().f105a.mo46513a(mediaItem == null ? null : C2481s.m40797a(mediaItem.m43200d()));
            C2408o.this.f9287h.mo40977E().m46532a(C2408o.this.f9287h.mo40973I());
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40824a(int i, MediaItem mediaItem, int i2, long j, long j2, long j3) throws RemoteException {
            C2408o.this.f9287h.mo40977E().m46532a(C2408o.this.f9287h.mo40973I());
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40823a(int i, MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40822a(int i, MediaMetadata mediaMetadata) throws RemoteException {
            CharSequence charSequence;
            CharSequence m46568c = C2408o.this.f9287h.mo40977E().f106b.m46568c();
            if (mediaMetadata != null) {
                CharSequence m43196b = mediaMetadata.m43196b(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE);
                charSequence = m43196b;
                if (m43196b == null) {
                    charSequence = mediaMetadata.m43196b(MediaMetadataCompat.METADATA_KEY_TITLE);
                }
            } else {
                charSequence = null;
            }
            if (!TextUtils.equals(m46568c, charSequence)) {
                C2408o.this.f9287h.mo40977E().m46530a(charSequence);
            }
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40821a(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40820a(int i, SessionPlayer.C1352b c1352b) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40819a(int i, VideoSize videoSize) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40818a(int i, LibraryResult libraryResult) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40817a(int i, MediaController.PlaybackInfo playbackInfo) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40816a(int i, SessionResult sessionResult) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40815a(int i, List<MediaItem> list, MediaMetadata mediaMetadata, int i2, int i3, int i4) throws RemoteException {
            if (Build.VERSION.SDK_INT >= 21) {
                C2408o.this.f9287h.mo40977E().m46529a(C2481s.m40785d(list));
            } else if (list == null) {
                C2408o.this.f9287h.mo40977E().m46529a((List<MediaSessionCompat.QueueItem>) null);
            } else {
                List<MediaSessionCompat.QueueItem> m40784e = C2481s.m40784e(C2481s.m40785d(list));
                if (m40784e.size() != list.size()) {
                    StringBuilder sb = new StringBuilder("Sending ");
                    sb.append(m40784e.size());
                    sb.append(" items out of ");
                    sb.append(list.size());
                }
                C2408o.this.f9287h.mo40977E().m46529a(m40784e);
            }
            mo40822a(i, mediaMetadata);
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40814a(int i, List<SessionPlayer.TrackInfo> list, SessionPlayer.TrackInfo trackInfo, SessionPlayer.TrackInfo trackInfo2, SessionPlayer.TrackInfo trackInfo3, SessionPlayer.TrackInfo trackInfo4) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: b */
        public final void mo40813b(int i) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: b */
        public final void mo40812b(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            C2408o.this.f9287h.mo40977E().f105a.mo46497c(i2);
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: b */
        public final void mo40811b(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
        }
    }

    @FunctionalInterface
    /* renamed from: androidx.media2.session.o$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/o$d.class */
    public interface AbstractC2433d {
        /* renamed from: a */
        void mo40884a(MediaSession.C2209b c2209b) throws RemoteException;
    }

    static {
        for (SessionCommand sessionCommand : new SessionCommandGroup.C2213a().m41125b(2).m41121e(2).m41129a().m41131a()) {
            f9285f.append(sessionCommand.f8753f, sessionCommand);
        }
    }

    public C2408o(MediaSession.AbstractC2210c abstractC2210c, Handler handler) {
        this.f9287h = abstractC2210c;
        Context mo40976F = abstractC2210c.mo40976F();
        this.f9289j = mo40976F;
        this.f9288i = C1329b.m43217a(mo40976F);
        this.f9291l = new HandlerC2430a(handler.getLooper());
        this.f9286g = new C2217a<>(abstractC2210c);
    }

    /* renamed from: a */
    private void m40902a(final SessionCommand sessionCommand, final int i, final AbstractC2433d abstractC2433d) {
        if (this.f9287h.mo40974H()) {
            return;
        }
        final C1329b.C1331b m46528b = this.f9287h.mo40977E().m46528b();
        if (m46528b != null) {
            this.f9287h.mo40975G().execute(new Runnable() { // from class: androidx.media2.session.o.13
                @Override // java.lang.Runnable
                public final void run() {
                    if (C2408o.this.f9287h.mo40974H()) {
                        return;
                    }
                    MediaSession.C2209b m41090b = C2408o.this.f9286g.m41090b((C2217a<C1329b.C1331b>) m46528b);
                    MediaSession.C2209b c2209b = m41090b;
                    if (m41090b == null) {
                        c2209b = new MediaSession.C2209b(m46528b, -1, C2408o.this.f9288i.m43216a(m46528b), new C2431b(m46528b), null);
                        C2408o.this.f9287h.mo40925y();
                        C2408o.this.f9287h.mo40924z();
                        SessionCommandGroup m41133d = MediaSession.AbstractC2211d.m41133d();
                        if (m41133d == null) {
                            try {
                                c2209b.f8743c.mo40813b(0);
                                return;
                            } catch (RemoteException e) {
                                return;
                            }
                        }
                        C2408o.this.f9286g.m41092a(c2209b.f8741a, c2209b, m41133d);
                    }
                    HandlerC2430a handlerC2430a = C2408o.this.f9291l;
                    long j = C2408o.this.f9292m;
                    handlerC2430a.removeMessages(1001, c2209b);
                    handlerC2430a.sendMessageDelayed(handlerC2430a.obtainMessage(1001, c2209b), j);
                    C2408o.this.m40903a(c2209b, sessionCommand, i, abstractC2433d);
                }
            });
            return;
        }
        StringBuilder sb = new StringBuilder("RemoteUserInfo is null, ignoring command=");
        sb.append(sessionCommand);
        sb.append(", commandCode=");
        sb.append(i);
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: a */
    public final void mo40911a() {
        m40902a((SessionCommand) null, 10002, new AbstractC2433d() { // from class: androidx.media2.session.o.12
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                C2408o.this.f9287h.mo40970a();
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: a */
    public final void mo40910a(final float f) {
        m40902a((SessionCommand) null, 10004, new AbstractC2433d() { // from class: androidx.media2.session.o.3
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                C2408o.this.f9287h.mo40969a(f);
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: a */
    public final void mo40909a(final int i) {
        m40902a((SessionCommand) null, 10011, new AbstractC2433d() { // from class: androidx.media2.session.o.8
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                C2408o.this.f9287h.mo40945d(i);
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: a */
    public final void mo40908a(final long j) {
        m40902a((SessionCommand) null, 10007, new AbstractC2433d() { // from class: androidx.media2.session.o.4
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                if (C2408o.this.f9287h.mo40980B().mo41339n() == null) {
                    return;
                }
                C2408o.this.f9287h.mo40951b((int) j);
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: a */
    public final void mo40907a(final Uri uri, final Bundle bundle) {
        m40902a((SessionCommand) null, 40011, new AbstractC2433d() { // from class: androidx.media2.session.o.14
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                C2408o.this.f9287h.mo40925y();
                C2408o.this.f9287h.mo40924z();
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: a */
    public final void mo40906a(MediaDescriptionCompat mediaDescriptionCompat) {
        mo40905a(mediaDescriptionCompat, Integer.MAX_VALUE);
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: a */
    public final void mo40905a(final MediaDescriptionCompat mediaDescriptionCompat, final int i) {
        if (mediaDescriptionCompat == null) {
            return;
        }
        m40902a((SessionCommand) null, 10013, new AbstractC2433d() { // from class: androidx.media2.session.o.10
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                if (TextUtils.isEmpty(mediaDescriptionCompat.getMediaId())) {
                    Log.w("MediaSessionLegacyStub", "onAddQueueItem(): Media ID shouldn't be empty");
                    return;
                }
                C2408o.this.f9287h.mo40925y();
                C2408o.this.f9287h.mo40924z();
                C2408o.this.f9287h.mo40966a(i, (MediaItem) null);
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: a */
    public final void mo40904a(RatingCompat ratingCompat) {
        mo40894b(ratingCompat);
    }

    /* renamed from: a */
    final void m40903a(MediaSession.C2209b c2209b, SessionCommand sessionCommand, int i, AbstractC2433d abstractC2433d) {
        SessionCommand sessionCommand2;
        if (sessionCommand != null) {
            if (!this.f9286g.m41094a(c2209b, sessionCommand)) {
                return;
            }
            sessionCommand2 = f9285f.get(sessionCommand.f8753f);
        } else if (!this.f9286g.m41095a(c2209b, i)) {
            return;
        } else {
            sessionCommand2 = f9285f.get(i);
        }
        if (sessionCommand2 != null) {
            this.f9287h.mo40925y();
            this.f9287h.mo40924z();
        }
        try {
            abstractC2433d.mo40884a(c2209b);
        } catch (RemoteException e) {
            Log.w("MediaSessionLegacyStub", "Exception in ".concat(String.valueOf(c2209b)), e);
        }
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: a */
    public final void mo40901a(String str, Bundle bundle) {
        mo40907a(new Uri.Builder().scheme("androidx").authority("media2-session").path("prepareFromMediaId").appendQueryParameter("id", str).build(), bundle);
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: a */
    public final void mo40900a(String str, final Bundle bundle, final ResultReceiver resultReceiver) {
        if (str == null) {
            return;
        }
        final SessionCommand sessionCommand = new SessionCommand(str, null);
        m40902a(sessionCommand, 0, new AbstractC2433d() { // from class: androidx.media2.session.o.1
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                C2408o.this.f9287h.mo40925y();
                C2408o.this.f9287h.mo40924z();
                SessionResult m41132e = MediaSession.AbstractC2211d.m41132e();
                ResultReceiver resultReceiver2 = resultReceiver;
                if (resultReceiver2 != null) {
                    resultReceiver2.send(m41132e.mo41118a(), m41132e.f8760c);
                }
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: b */
    public final void mo40899b() {
        m40902a((SessionCommand) null, 10000, new AbstractC2433d() { // from class: androidx.media2.session.o.15
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                C2408o.this.f9287h.mo40952b();
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: b */
    public final void mo40898b(final int i) {
        m40902a((SessionCommand) null, 10010, new AbstractC2433d() { // from class: androidx.media2.session.o.9
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                C2408o.this.f9287h.mo40943e(i);
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: b */
    public final void mo40897b(final long j) {
        m40902a((SessionCommand) null, 10003, new AbstractC2433d() { // from class: androidx.media2.session.o.19
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                C2408o.this.f9287h.mo40965a(j);
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: b */
    public final void mo40896b(final Uri uri, final Bundle bundle) {
        m40902a((SessionCommand) null, 40011, new AbstractC2433d() { // from class: androidx.media2.session.o.16
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                C2408o.this.f9287h.mo40925y();
                C2408o.this.f9287h.mo40924z();
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: b */
    public final void mo40895b(final MediaDescriptionCompat mediaDescriptionCompat) {
        if (mediaDescriptionCompat == null) {
            return;
        }
        m40902a((SessionCommand) null, 10014, new AbstractC2433d() { // from class: androidx.media2.session.o.11
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                String mediaId = mediaDescriptionCompat.getMediaId();
                if (TextUtils.isEmpty(mediaId)) {
                    Log.w("MediaSessionLegacyStub", "onRemoveQueueItem(): Media ID shouldn't be null");
                    return;
                }
                List<MediaItem> k = C2408o.this.f9287h.mo40937k();
                for (int i = 0; i < k.size(); i++) {
                    if (TextUtils.equals(k.get(i).m43199f(), mediaId)) {
                        C2408o.this.f9287h.mo40947c(i);
                        return;
                    }
                }
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: b */
    public final void mo40894b(final RatingCompat ratingCompat) {
        if (ratingCompat == null) {
            return;
        }
        m40902a((SessionCommand) null, 40010, new AbstractC2433d() { // from class: androidx.media2.session.o.7
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                MediaItem m = C2408o.this.f9287h.mo40935m();
                if (m == null) {
                    return;
                }
                C2408o.this.f9287h.mo40925y();
                C2408o.this.f9287h.mo40924z();
                m.m43199f();
                C2481s.m40801a(ratingCompat);
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: b */
    public final void mo40893b(String str, Bundle bundle) {
        mo40907a(new Uri.Builder().scheme("androidx").authority("media2-session").path("prepareFromSearch").appendQueryParameter("query", str).build(), bundle);
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: c */
    public final void mo40892c() {
        m40902a((SessionCommand) null, 10001, new AbstractC2433d() { // from class: androidx.media2.session.o.17
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                C2408o.this.f9287h.mo40948c();
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: c */
    public final void mo40891c(String str, Bundle bundle) {
        mo40896b(new Uri.Builder().scheme("androidx").authority("media2-session").path("playFromMediaId").appendQueryParameter("id", str).build(), bundle);
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: d */
    public final void mo40890d() {
        m40902a((SessionCommand) null, 10009, new AbstractC2433d() { // from class: androidx.media2.session.o.20
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                C2408o.this.f9287h.mo40930r();
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: d */
    public final void mo40889d(String str, Bundle bundle) {
        mo40896b(new Uri.Builder().scheme("androidx").authority("media2-session").path("playFromSearch").appendQueryParameter("query", str).build(), bundle);
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: e */
    public final void mo40888e() {
        m40902a((SessionCommand) null, 10008, new AbstractC2433d() { // from class: androidx.media2.session.o.2
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                C2408o.this.f9287h.mo40931q();
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: f */
    public final void mo40887f() {
        m40902a((SessionCommand) null, PangleAdapterConfiguration.CONTENT_TYPE_ERROR, new AbstractC2433d() { // from class: androidx.media2.session.o.5
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                C2408o.this.f9287h.mo40925y();
                C2408o.this.f9287h.mo40924z();
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: g */
    public final void mo40886g() {
        m40902a((SessionCommand) null, 40001, new AbstractC2433d() { // from class: androidx.media2.session.o.6
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                C2408o.this.f9287h.mo40925y();
                C2408o.this.f9287h.mo40924z();
            }
        });
    }

    @Override // android.support.p008v4.media.session.MediaSessionCompat.AbstractC0064a
    /* renamed from: h */
    public final void mo40885h() {
        m40902a((SessionCommand) null, 10001, new AbstractC2433d() { // from class: androidx.media2.session.o.18
            @Override // androidx.media2.session.C2408o.AbstractC2433d
            /* renamed from: a */
            public final void mo40884a(MediaSession.C2209b c2209b) throws RemoteException {
                C2408o.this.m40903a(c2209b, null, 10003, new AbstractC2433d() { // from class: androidx.media2.session.o.18.1
                    @Override // androidx.media2.session.C2408o.AbstractC2433d
                    /* renamed from: a */
                    public final void mo40884a(MediaSession.C2209b c2209b2) throws RemoteException {
                        C2408o.this.f9287h.mo40948c();
                        C2408o.this.f9287h.mo40965a(0L);
                    }
                });
            }
        });
    }
}
