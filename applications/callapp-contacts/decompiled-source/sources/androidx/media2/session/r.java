package androidx.media2.session;

import android.content.Context;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.Surface;
import androidx.media.b;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.MediaParcelUtils;
import androidx.media2.common.Rating;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaLibraryService;
import androidx.media2.session.MediaSession;
import androidx.media2.session.SessionCommandGroup;
import androidx.media2.session.c;
import androidx.versionedparcelable.ParcelImpl;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.sinch.verification.core.internal.error.ApiErrorData;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/r.class */
public final class r extends c.a {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f5004a = Log.isLoggable("MediaSessionStub", 3);

    /* renamed from: b  reason: collision with root package name */
    static final SparseArray<SessionCommand> f5005b = new SparseArray<>();

    /* renamed from: c  reason: collision with root package name */
    final androidx.media2.session.a<IBinder> f5006c;

    /* renamed from: d  reason: collision with root package name */
    final Object f5007d = new Object();
    final MediaSession.c e;
    final Context f;
    final androidx.media.b g;

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/r$a.class */
    final class a extends MediaSession.a {

        /* renamed from: b  reason: collision with root package name */
        private final androidx.media2.session.b f5096b;

        a(androidx.media2.session.b bVar) {
            this.f5096b = bVar;
        }

        final IBinder a() {
            return this.f5096b.asBinder();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i) throws RemoteException {
            this.f5096b.a(i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            this.f5096b.b(i, i2, i3, i4, i5);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, long j, long j2, float f) throws RemoteException {
            this.f5096b.a(i, j, j2, f);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, long j, long j2, int i2) throws RemoteException {
            this.f5096b.a(i, j, j2, i2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, long j, long j2, long j3) throws RemoteException {
            this.f5096b.a(i, j, j2, j3);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaItem mediaItem, int i2, int i3, int i4) throws RemoteException {
            this.f5096b.a(i, MediaParcelUtils.a(mediaItem), i2, i3, i4);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaItem mediaItem, int i2, long j, long j2, long j3) throws RemoteException {
            this.f5096b.a(i, MediaParcelUtils.a(mediaItem), i2, j, j2, j3);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) throws RemoteException {
            this.f5096b.a(i, MediaParcelUtils.a(mediaItem), MediaParcelUtils.a(trackInfo), MediaParcelUtils.a(subtitleData));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaMetadata mediaMetadata) throws RemoteException {
            if (r.this.f5006c.a(r.this.f5006c.b((androidx.media2.session.a<IBinder>) a()), 10012)) {
                this.f5096b.a(i, MediaParcelUtils.a(mediaMetadata));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
            this.f5096b.g(i, MediaParcelUtils.a(trackInfo));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, SessionPlayer.b bVar) throws RemoteException {
            a(i, SessionResult.a(bVar));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, VideoSize videoSize) throws RemoteException {
            this.f5096b.a(i, MediaParcelUtils.a(new MediaItem.a().a()), MediaParcelUtils.a(videoSize));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, LibraryResult libraryResult) throws RemoteException {
            LibraryResult libraryResult2 = libraryResult;
            if (libraryResult == null) {
                libraryResult2 = new LibraryResult(-1);
            }
            this.f5096b.f(i, MediaParcelUtils.a(libraryResult2));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaController.PlaybackInfo playbackInfo) throws RemoteException {
            this.f5096b.b(i, MediaParcelUtils.a(playbackInfo));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, SessionResult sessionResult) throws RemoteException {
            SessionResult sessionResult2 = sessionResult;
            if (sessionResult == null) {
                sessionResult2 = new SessionResult(-1, null);
            }
            this.f5096b.e(i, MediaParcelUtils.a(sessionResult2));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, List<MediaItem> list, MediaMetadata mediaMetadata, int i2, int i3, int i4) throws RemoteException {
            MediaSession.b b2 = r.this.f5006c.b((androidx.media2.session.a<IBinder>) a());
            if (r.this.f5006c.a(b2, 10005)) {
                this.f5096b.a(i, s.f(list), MediaParcelUtils.a(mediaMetadata), i2, i3, i4);
            } else if (r.this.f5006c.a(b2, 10012)) {
                this.f5096b.a(i, MediaParcelUtils.a(mediaMetadata));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, List<SessionPlayer.TrackInfo> list, SessionPlayer.TrackInfo trackInfo, SessionPlayer.TrackInfo trackInfo2, SessionPlayer.TrackInfo trackInfo3, SessionPlayer.TrackInfo trackInfo4) throws RemoteException {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < list.size(); i2++) {
                arrayList.add(MediaParcelUtils.a(list.get(i2)));
            }
            this.f5096b.a(i, arrayList, MediaParcelUtils.a(trackInfo), MediaParcelUtils.a(trackInfo2), MediaParcelUtils.a(trackInfo3), MediaParcelUtils.a(trackInfo4));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void b(int i) throws RemoteException {
            this.f5096b.b(i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void b(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            this.f5096b.a(i, i2, i3, i4, i5);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void b(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
            this.f5096b.h(i, MediaParcelUtils.a(trackInfo));
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != a.class) {
                return false;
            }
            return androidx.core.e.a.a(a(), ((a) obj).a());
        }

        public final int hashCode() {
            return androidx.core.e.a.a(a());
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/r$b.class */
    interface b<T> extends e {
        T a(MediaSession.b bVar) throws RemoteException;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/r$c.class */
    interface c<T> extends e {
        T a(MediaSession.b bVar) throws RemoteException;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/r$d.class */
    interface d extends e {
        com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar) throws RemoteException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/r$e.class */
    public interface e {
    }

    static {
        for (SessionCommand sessionCommand : new SessionCommandGroup.a().b(2).e(2).a().a()) {
            f5005b.append(sessionCommand.f, sessionCommand);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(MediaSession.c cVar) {
        this.e = cVar;
        Context F = cVar.F();
        this.f = F;
        this.g = androidx.media.b.a(F);
        this.f5006c = new androidx.media2.session.a<>(cVar);
    }

    static void a(MediaSession.b bVar, int i, int i2) {
        a(bVar, i, new SessionResult(i2));
    }

    static void a(MediaSession.b bVar, int i, SessionPlayer.b bVar2) {
        try {
            bVar.f4536c.a(i, bVar2);
        } catch (RemoteException e2) {
            Log.w("MediaSessionStub", "Exception in " + bVar.toString(), e2);
        }
    }

    static void a(MediaSession.b bVar, int i, LibraryResult libraryResult) {
        try {
            bVar.f4536c.a(i, libraryResult);
        } catch (RemoteException e2) {
            Log.w("MediaSessionStub", "Exception in " + bVar.toString(), e2);
        }
    }

    static void a(MediaSession.b bVar, int i, SessionResult sessionResult) {
        try {
            bVar.f4536c.a(i, sessionResult);
        } catch (RemoteException e2) {
            Log.w("MediaSessionStub", "Exception in " + bVar.toString(), e2);
        }
    }

    private void a(androidx.media2.session.b bVar, int i, int i2, b<?> bVar2) {
        if (this.e instanceof MediaLibraryService.a.b) {
            a(bVar, i, null, i2, bVar2);
            return;
        }
        throw new RuntimeException("MediaSession cannot handle MediaLibrarySession command");
    }

    private void a(androidx.media2.session.b bVar, int i, int i2, e eVar) {
        a(bVar, i, null, i2, eVar);
    }

    private void a(androidx.media2.session.b bVar, final int i, final SessionCommand sessionCommand, final int i2, final e eVar) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            final MediaSession.b b2 = this.f5006c.b((androidx.media2.session.a<IBinder>) bVar.asBinder());
            if (!this.e.H() && b2 != null) {
                this.e.G().execute(new Runnable() { // from class: androidx.media2.session.r.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SessionCommand sessionCommand2;
                        if (r.this.f5006c.b(b2)) {
                            if (sessionCommand != null) {
                                if (!r.this.f5006c.a(b2, sessionCommand)) {
                                    if (r.f5004a) {
                                        StringBuilder sb = new StringBuilder("Command (");
                                        sb.append(sessionCommand);
                                        sb.append(") from ");
                                        sb.append(b2);
                                        sb.append(" isn't allowed.");
                                    }
                                    r.a(b2, i, -4);
                                    return;
                                }
                                sessionCommand2 = r.f5005b.get(sessionCommand.f);
                            } else if (!r.this.f5006c.a(b2, i2)) {
                                if (r.f5004a) {
                                    StringBuilder sb2 = new StringBuilder("Command (");
                                    sb2.append(i2);
                                    sb2.append(") from ");
                                    sb2.append(b2);
                                    sb2.append(" isn't allowed.");
                                }
                                r.a(b2, i, -4);
                                return;
                            } else {
                                sessionCommand2 = r.f5005b.get(i2);
                            }
                            if (sessionCommand2 != null) {
                                try {
                                    r.this.e.y();
                                    r.this.e.z();
                                } catch (RemoteException e2) {
                                    Log.w("MediaSessionStub", "Exception in " + b2.toString(), e2);
                                    return;
                                } catch (Exception e3) {
                                    throw e3;
                                }
                            }
                            e eVar2 = eVar;
                            if (eVar2 instanceof d) {
                                final com.google.common.util.concurrent.a<SessionPlayer.b> a2 = ((d) eVar2).a(b2);
                                if (a2 != null) {
                                    a2.a(new Runnable() { // from class: androidx.media2.session.r.1.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            try {
                                                r.a(b2, i, (SessionPlayer.b) a2.get(0L, TimeUnit.MILLISECONDS));
                                            } catch (Exception e4) {
                                                Log.w("MediaSessionStub", "Cannot obtain PlayerResult after the command is finished", e4);
                                                r.a(b2, i, -2);
                                            }
                                        }
                                    }, s.f5098b);
                                    return;
                                }
                                throw new RuntimeException("SessionPlayer has returned null, commandCode=" + i2);
                            } else if (eVar2 instanceof c) {
                                Object a3 = ((c) eVar2).a(b2);
                                if (a3 == null) {
                                    throw new RuntimeException("SessionCallback has returned null, commandCode=" + i2);
                                } else if (a3 instanceof Integer) {
                                    r.a(b2, i, ((Integer) a3).intValue());
                                } else if (a3 instanceof SessionResult) {
                                    r.a(b2, i, (SessionResult) a3);
                                } else if (r.f5004a) {
                                    throw new RuntimeException("Unexpected return type " + a3 + ". Fix bug");
                                }
                            } else if (eVar2 instanceof b) {
                                Object a4 = ((b) eVar2).a(b2);
                                if (a4 == null) {
                                    throw new RuntimeException("LibrarySessionCallback has returned null, commandCode=" + i2);
                                } else if (a4 instanceof Integer) {
                                    r.b(b2, i, ((Integer) a4).intValue());
                                } else if (a4 instanceof LibraryResult) {
                                    r.a(b2, i, (LibraryResult) a4);
                                } else if (r.f5004a) {
                                    throw new RuntimeException("Unexpected return type " + a4 + ". Fix bug");
                                }
                            } else if (r.f5004a) {
                                throw new RuntimeException("Unknown task " + eVar + ". Fix bug");
                            }
                        }
                    }
                });
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    static void b(MediaSession.b bVar, int i, int i2) {
        a(bVar, i, new LibraryResult(i2));
    }

    final MediaItem a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        this.e.y();
        this.e.z();
        Log.w("MediaSessionStub", "onCreateMediaItem(mediaId=" + str + ") returned null. Ignoring");
        return null;
    }

    @Override // androidx.media2.session.c
    public final void a(androidx.media2.session.b bVar, int i) throws RemoteException {
        if (bVar != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                androidx.media2.session.a<IBinder> aVar = this.f5006c;
                IBinder asBinder = bVar.asBinder();
                if (asBinder != null) {
                    aVar.a(aVar.b((androidx.media2.session.a<IBinder>) asBinder));
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    @Override // androidx.media2.session.c
    public final void a(androidx.media2.session.b bVar, int i, final float f) {
        if (bVar != null) {
            a(bVar, i, 10004, new d() { // from class: androidx.media2.session.r.7
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    return r.this.e.a(f);
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void a(androidx.media2.session.b bVar, int i, final int i2) {
        if (bVar != null) {
            a(bVar, i, 10014, new d() { // from class: androidx.media2.session.r.14
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    return r.this.e.c(i2);
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void a(androidx.media2.session.b bVar, int i, final int i2, final int i3) throws RuntimeException {
        if (bVar != null) {
            a(bVar, i, 30000, new c<Integer>() { // from class: androidx.media2.session.r.23
                @Override // androidx.media2.session.r.c
                public final /* synthetic */ Integer a(MediaSession.b bVar2) throws RemoteException {
                    MediaSessionCompat E = r.this.e.E();
                    if (E != null) {
                        MediaControllerCompat mediaControllerCompat = E.f448b;
                        mediaControllerCompat.f423a.a(i2, i3);
                    }
                    return 0;
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void a(androidx.media2.session.b bVar, int i, final int i2, final String str) {
        if (bVar != null) {
            a(bVar, i, 10013, new d() { // from class: androidx.media2.session.r.13
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    if (TextUtils.isEmpty(str)) {
                        Log.w("MediaSessionStub", "addPlaylistItem(): Ignoring empty mediaId from ".concat(String.valueOf(bVar2)));
                        return SessionPlayer.b.b();
                    }
                    r.this.a(str);
                    return SessionPlayer.b.b();
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void a(androidx.media2.session.b bVar, int i, final long j) throws RuntimeException {
        if (bVar != null) {
            a(bVar, i, 10003, new d() { // from class: androidx.media2.session.r.4
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    return r.this.e.a(j);
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void a(androidx.media2.session.b bVar, int i, final Uri uri, final Bundle bundle) {
        if (bVar != null) {
            a(bVar, i, 40011, new c<Integer>() { // from class: androidx.media2.session.r.10
                @Override // androidx.media2.session.r.c
                public final /* synthetic */ Integer a(MediaSession.b bVar2) throws RemoteException {
                    if (uri == null) {
                        Log.w("MediaSessionStub", "setMediaUri(): Ignoring null uri from ".concat(String.valueOf(bVar2)));
                        return -3;
                    }
                    r.this.e.y();
                    r.this.e.z();
                    return -6;
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void a(androidx.media2.session.b bVar, int i, final Surface surface) {
        if (bVar != null) {
            a(bVar, i, 11000, new d() { // from class: androidx.media2.session.r.22
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    return r.this.e.a(surface);
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void a(final androidx.media2.session.b bVar, int i, ParcelImpl parcelImpl) throws RuntimeException {
        if (bVar != null && parcelImpl != null) {
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            ConnectionRequest connectionRequest = (ConnectionRequest) androidx.versionedparcelable.a.a(parcelImpl);
            if (callingPid == 0) {
                callingPid = connectionRequest.f4490c;
            }
            try {
                int i2 = connectionRequest.f4488a;
                String str = connectionRequest.f4489b;
                Bundle bundle = connectionRequest.f4491d;
                b.C0073b bVar2 = new b.C0073b(str, callingPid, callingUid);
                final MediaSession.b bVar3 = new MediaSession.b(bVar2, i2, this.g.a(bVar2), new a(bVar), bundle);
                this.e.G().execute(new Runnable() { // from class: androidx.media2.session.r.12
                    @Override // java.lang.Runnable
                    public final void run() {
                        v c2;
                        if (!r.this.e.H()) {
                            IBinder a2 = ((a) bVar3.f4536c).a();
                            r.this.e.y();
                            r.this.e.z();
                            SessionCommandGroup d2 = MediaSession.d.d();
                            if (d2 != null || bVar3.f4535b) {
                                if (r.f5004a) {
                                    StringBuilder sb = new StringBuilder("Accepting connection, controllerInfo=");
                                    sb.append(bVar3);
                                    sb.append(" allowedCommands=");
                                    sb.append(d2);
                                }
                                SessionCommandGroup sessionCommandGroup = d2;
                                if (d2 == null) {
                                    sessionCommandGroup = new SessionCommandGroup();
                                }
                                synchronized (r.this.f5007d) {
                                    if (r.this.f5006c.b(bVar3)) {
                                        Log.w("MediaSessionStub", "Controller " + bVar3 + " has sent connection request multiple times");
                                    }
                                    r.this.f5006c.a(a2, bVar3, sessionCommandGroup);
                                    c2 = r.this.f5006c.c(bVar3);
                                }
                                r rVar = r.this;
                                ConnectionResult connectionResult = new ConnectionResult(rVar, rVar.e, sessionCommandGroup);
                                if (!r.this.e.H()) {
                                    try {
                                        bVar.c(c2.a(), MediaParcelUtils.a(connectionResult));
                                    } catch (RemoteException e2) {
                                    }
                                    r.this.e.y();
                                    r.this.e.z();
                                    return;
                                }
                                return;
                            }
                            if (r.f5004a) {
                                new StringBuilder("Rejecting connection, controllerInfo=").append(bVar3);
                            }
                            try {
                                bVar.b(0);
                            } catch (RemoteException e3) {
                            }
                        }
                    }
                });
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    @Override // androidx.media2.session.c
    public final void a(androidx.media2.session.b bVar, int i, ParcelImpl parcelImpl, final Bundle bundle) {
        if (bVar != null && parcelImpl != null) {
            final SessionCommand sessionCommand = (SessionCommand) androidx.versionedparcelable.a.a(parcelImpl);
            a(bVar, i, sessionCommand, 0, new c<SessionResult>() { // from class: androidx.media2.session.r.5
                @Override // androidx.media2.session.r.c
                public final /* synthetic */ SessionResult a(MediaSession.b bVar2) throws RemoteException {
                    r.this.e.y();
                    r.this.e.z();
                    return MediaSession.d.e();
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void a(androidx.media2.session.b bVar, int i, final String str) {
        if (bVar != null) {
            a(bVar, i, 10018, new d() { // from class: androidx.media2.session.r.9
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    if (TextUtils.isEmpty(str)) {
                        Log.w("MediaSessionStub", "setMediaItem(): Ignoring empty mediaId from ".concat(String.valueOf(bVar2)));
                        return SessionPlayer.b.b();
                    }
                    r.this.a(str);
                    return SessionPlayer.b.b();
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void a(androidx.media2.session.b bVar, int i, final String str, final int i2, final int i3, final ParcelImpl parcelImpl) throws RuntimeException {
        if (bVar != null && parcelImpl != null) {
            a(bVar, i, 50003, (b<?>) new b<LibraryResult>() { // from class: androidx.media2.session.r.28
                @Override // androidx.media2.session.r.b
                public final /* synthetic */ LibraryResult a(MediaSession.b bVar2) throws RemoteException {
                    if (TextUtils.isEmpty(str)) {
                        Log.w("MediaSessionStub", "getChildren(): Ignoring empty parentId from ".concat(String.valueOf(bVar2)));
                        return new LibraryResult(-3);
                    } else if (i2 < 0) {
                        Log.w("MediaSessionStub", "getChildren(): Ignoring negative page from ".concat(String.valueOf(bVar2)));
                        return new LibraryResult(-3);
                    } else if (i3 <= 0) {
                        Log.w("MediaSessionStub", "getChildren(): Ignoring pageSize less than 1 from ".concat(String.valueOf(bVar2)));
                        return new LibraryResult(-3);
                    } else {
                        MediaLibraryService.a.b b2 = r.this.b();
                        int i4 = i3;
                        androidx.versionedparcelable.a.a(parcelImpl);
                        return b2.f(i4);
                    }
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void a(androidx.media2.session.b bVar, int i, final String str, ParcelImpl parcelImpl) {
        if (bVar != null && parcelImpl != null) {
            final Rating rating = (Rating) androidx.versionedparcelable.a.a(parcelImpl);
            a(bVar, i, 40010, new c<Integer>() { // from class: androidx.media2.session.r.6
                @Override // androidx.media2.session.r.c
                public final /* synthetic */ Integer a(MediaSession.b bVar2) throws RemoteException {
                    if (TextUtils.isEmpty(str)) {
                        Log.w("MediaSessionStub", "setRating(): Ignoring empty mediaId from ".concat(String.valueOf(bVar2)));
                        return -3;
                    } else if (rating == null) {
                        Log.w("MediaSessionStub", "setRating(): Ignoring null rating from ".concat(String.valueOf(bVar2)));
                        return -3;
                    } else {
                        r.this.e.y();
                        r.this.e.z();
                        return -6;
                    }
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void a(androidx.media2.session.b bVar, int i, final List<String> list, final ParcelImpl parcelImpl) {
        if (bVar != null && parcelImpl != null) {
            a(bVar, i, 10006, new d() { // from class: androidx.media2.session.r.8
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    if (list == null) {
                        Log.w("MediaSessionStub", "setPlaylist(): Ignoring null playlist from ".concat(String.valueOf(bVar2)));
                        return SessionPlayer.b.b();
                    }
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        r.this.a((String) list.get(i2));
                    }
                    return r.this.e.a(arrayList, (MediaMetadata) androidx.versionedparcelable.a.a(parcelImpl));
                }
            });
        }
    }

    final MediaLibraryService.a.b b() {
        MediaSession.c cVar = this.e;
        if (cVar instanceof MediaLibraryService.a.b) {
            return (MediaLibraryService.a.b) cVar;
        }
        throw new RuntimeException("Session cannot be casted to library session");
    }

    @Override // androidx.media2.session.c
    public final void b(androidx.media2.session.b bVar, int i) throws RuntimeException {
        if (bVar != null) {
            a(bVar, i, 10000, new d() { // from class: androidx.media2.session.r.34
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    return r.this.e.b();
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void b(androidx.media2.session.b bVar, int i, final int i2) {
        if (bVar != null) {
            a(bVar, i, 10007, new d() { // from class: androidx.media2.session.r.17
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    if (i2 >= 0) {
                        return r.this.e.b(i2);
                    }
                    Log.w("MediaSessionStub", "skipToPlaylistItem(): Ignoring negative index from ".concat(String.valueOf(bVar2)));
                    return SessionPlayer.b.b();
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void b(androidx.media2.session.b bVar, int i, final int i2, final int i3) throws RuntimeException {
        if (bVar != null) {
            a(bVar, i, 30001, new c<Integer>() { // from class: androidx.media2.session.r.33
                @Override // androidx.media2.session.r.c
                public final /* synthetic */ Integer a(MediaSession.b bVar2) throws RemoteException {
                    MediaSessionCompat E = r.this.e.E();
                    if (E != null) {
                        MediaControllerCompat mediaControllerCompat = E.f448b;
                        mediaControllerCompat.f423a.b(i2, i3);
                    }
                    return 0;
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void b(androidx.media2.session.b bVar, int i, final int i2, final String str) {
        if (bVar != null) {
            a(bVar, i, 10015, new d() { // from class: androidx.media2.session.r.15
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    if (TextUtils.isEmpty(str)) {
                        Log.w("MediaSessionStub", "replacePlaylistItem(): Ignoring empty mediaId from ".concat(String.valueOf(bVar2)));
                        return SessionPlayer.b.b();
                    }
                    r.this.a(str);
                    return SessionPlayer.b.b();
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void b(androidx.media2.session.b bVar, int i, final ParcelImpl parcelImpl) {
        if (bVar != null) {
            a(bVar, i, 10017, new d() { // from class: androidx.media2.session.r.11
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    return r.this.e.a((MediaMetadata) androidx.versionedparcelable.a.a(parcelImpl));
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void b(androidx.media2.session.b bVar, int i, final String str) throws RuntimeException {
        a(bVar, i, 50004, (b<?>) new b<LibraryResult>() { // from class: androidx.media2.session.r.27
            @Override // androidx.media2.session.r.b
            public final /* synthetic */ LibraryResult a(MediaSession.b bVar2) throws RemoteException {
                if (!TextUtils.isEmpty(str)) {
                    return r.this.b().v();
                }
                Log.w("MediaSessionStub", "getItem(): Ignoring empty mediaId from ".concat(String.valueOf(bVar2)));
                return new LibraryResult(-3);
            }
        });
    }

    @Override // androidx.media2.session.c
    public final void b(androidx.media2.session.b bVar, int i, final String str, final int i2, final int i3, final ParcelImpl parcelImpl) {
        if (bVar != null && parcelImpl != null) {
            a(bVar, i, 50006, (b<?>) new b<LibraryResult>() { // from class: androidx.media2.session.r.30
                @Override // androidx.media2.session.r.b
                public final /* synthetic */ LibraryResult a(MediaSession.b bVar2) throws RemoteException {
                    if (TextUtils.isEmpty(str)) {
                        Log.w("MediaSessionStub", "getSearchResult(): Ignoring empty query from ".concat(String.valueOf(bVar2)));
                        return new LibraryResult(-3);
                    } else if (i2 < 0) {
                        Log.w("MediaSessionStub", "getSearchResult(): Ignoring negative page from ".concat(String.valueOf(bVar2)));
                        return new LibraryResult(-3);
                    } else if (i3 <= 0) {
                        Log.w("MediaSessionStub", "getSearchResult(): Ignoring pageSize less than 1 from ".concat(String.valueOf(bVar2)));
                        return new LibraryResult(-3);
                    } else {
                        MediaLibraryService.a.b b2 = r.this.b();
                        int i4 = i3;
                        androidx.versionedparcelable.a.a(parcelImpl);
                        return b2.g(i4);
                    }
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void b(androidx.media2.session.b bVar, int i, final String str, final ParcelImpl parcelImpl) {
        if (bVar != null && parcelImpl != null) {
            a(bVar, i, 50005, (b<?>) new b<Integer>() { // from class: androidx.media2.session.r.29
                @Override // androidx.media2.session.r.b
                public final /* synthetic */ Integer a(MediaSession.b bVar2) throws RemoteException {
                    if (TextUtils.isEmpty(str)) {
                        Log.w("MediaSessionStub", "search(): Ignoring empty query from ".concat(String.valueOf(bVar2)));
                        return -3;
                    }
                    r.this.b();
                    androidx.versionedparcelable.a.a(parcelImpl);
                    return -6;
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void c(androidx.media2.session.b bVar, int i) throws RuntimeException {
        if (bVar != null) {
            a(bVar, i, 10001, new d() { // from class: androidx.media2.session.r.35
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    return r.this.e.c();
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void c(androidx.media2.session.b bVar, int i, final int i2) {
        if (bVar != null) {
            a(bVar, i, 10011, new d() { // from class: androidx.media2.session.r.20
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    return r.this.e.d(i2);
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void c(androidx.media2.session.b bVar, int i, final int i2, final int i3) {
        if (bVar != null) {
            a(bVar, i, 10019, new d() { // from class: androidx.media2.session.r.16
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    return r.this.e.a(i2, i3);
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void c(androidx.media2.session.b bVar, int i, final ParcelImpl parcelImpl) {
        if (bVar != null && parcelImpl != null) {
            a(bVar, i, 11001, new d() { // from class: androidx.media2.session.r.24
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    SessionPlayer.TrackInfo trackInfo = (SessionPlayer.TrackInfo) androidx.versionedparcelable.a.a(parcelImpl);
                    return trackInfo == null ? SessionPlayer.b.b() : r.this.e.a(trackInfo);
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void c(androidx.media2.session.b bVar, int i, final String str) {
        if (bVar != null) {
            a(bVar, i, 50002, (b<?>) new b<Integer>() { // from class: androidx.media2.session.r.32
                @Override // androidx.media2.session.r.b
                public final /* synthetic */ Integer a(MediaSession.b bVar2) throws RemoteException {
                    if (!TextUtils.isEmpty(str)) {
                        return Integer.valueOf(r.this.b().a(bVar2));
                    }
                    Log.w("MediaSessionStub", "unsubscribe(): Ignoring empty parentId from ".concat(String.valueOf(bVar2)));
                    return -3;
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void c(androidx.media2.session.b bVar, int i, final String str, final ParcelImpl parcelImpl) {
        if (bVar != null && parcelImpl != null) {
            a(bVar, i, 50001, (b<?>) new b<Integer>() { // from class: androidx.media2.session.r.31
                @Override // androidx.media2.session.r.b
                public final /* synthetic */ Integer a(MediaSession.b bVar2) throws RemoteException {
                    if (TextUtils.isEmpty(str)) {
                        Log.w("MediaSessionStub", "subscribe(): Ignoring empty parentId from ".concat(String.valueOf(bVar2)));
                        return -3;
                    }
                    MediaLibraryService.a.b b2 = r.this.b();
                    String str2 = str;
                    androidx.versionedparcelable.a.a(parcelImpl);
                    return Integer.valueOf(b2.a(bVar2, str2));
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void d(androidx.media2.session.b bVar, int i) throws RuntimeException {
        if (bVar != null) {
            a(bVar, i, 10002, new d() { // from class: androidx.media2.session.r.36
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    return r.this.e.a();
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void d(androidx.media2.session.b bVar, int i, final int i2) {
        if (bVar != null) {
            a(bVar, i, 10010, new d() { // from class: androidx.media2.session.r.21
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    return r.this.e.e(i2);
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void d(androidx.media2.session.b bVar, int i, final ParcelImpl parcelImpl) {
        if (bVar != null && parcelImpl != null) {
            a(bVar, i, 11002, new d() { // from class: androidx.media2.session.r.25
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    SessionPlayer.TrackInfo trackInfo = (SessionPlayer.TrackInfo) androidx.versionedparcelable.a.a(parcelImpl);
                    return trackInfo == null ? SessionPlayer.b.b() : r.this.e.b(trackInfo);
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void e(androidx.media2.session.b bVar, int i) {
        if (bVar != null) {
            a(bVar, i, PangleAdapterConfiguration.CONTENT_TYPE_ERROR, new c<Integer>() { // from class: androidx.media2.session.r.37
                @Override // androidx.media2.session.r.c
                public final /* synthetic */ Integer a(MediaSession.b bVar2) throws RemoteException {
                    r.this.e.y();
                    r.this.e.z();
                    return -6;
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void e(androidx.media2.session.b bVar, int i, ParcelImpl parcelImpl) {
        if (bVar != null && parcelImpl != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                v a2 = this.f5006c.a((androidx.media2.session.a<IBinder>) bVar.asBinder());
                if (a2 != null) {
                    a2.a(i, (SessionResult) androidx.versionedparcelable.a.a(parcelImpl));
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    @Override // androidx.media2.session.c
    public final void f(androidx.media2.session.b bVar, int i) {
        if (bVar != null) {
            a(bVar, i, 40001, new c<Integer>() { // from class: androidx.media2.session.r.38
                @Override // androidx.media2.session.r.c
                public final /* synthetic */ Integer a(MediaSession.b bVar2) throws RemoteException {
                    r.this.e.y();
                    r.this.e.z();
                    return -6;
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void f(androidx.media2.session.b bVar, int i, final ParcelImpl parcelImpl) throws RuntimeException {
        if (bVar != null && parcelImpl != null) {
            a(bVar, i, ApiErrorData.ErrorCodes.InternalServerError.InternalError, (b<?>) new b<LibraryResult>() { // from class: androidx.media2.session.r.26
                @Override // androidx.media2.session.r.b
                public final /* synthetic */ LibraryResult a(MediaSession.b bVar2) throws RemoteException {
                    MediaLibraryService.a.b b2 = r.this.b();
                    androidx.versionedparcelable.a.a(parcelImpl);
                    return b2.u();
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void g(androidx.media2.session.b bVar, int i) {
        if (bVar != null) {
            a(bVar, i, 40002, new c<Integer>() { // from class: androidx.media2.session.r.2
                @Override // androidx.media2.session.r.c
                public final /* synthetic */ Integer a(MediaSession.b bVar2) throws RemoteException {
                    r.this.e.y();
                    r.this.e.z();
                    return -6;
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void h(androidx.media2.session.b bVar, int i) {
        if (bVar != null) {
            a(bVar, i, ApiErrorData.ErrorCodes.BadRequest.InvalidRequest, new c<Integer>() { // from class: androidx.media2.session.r.3
                @Override // androidx.media2.session.r.c
                public final /* synthetic */ Integer a(MediaSession.b bVar2) throws RemoteException {
                    r.this.e.y();
                    r.this.e.z();
                    return -6;
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void i(androidx.media2.session.b bVar, int i) {
        if (bVar != null) {
            a(bVar, i, 10008, new d() { // from class: androidx.media2.session.r.18
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    return r.this.e.q();
                }
            });
        }
    }

    @Override // androidx.media2.session.c
    public final void j(androidx.media2.session.b bVar, int i) {
        if (bVar != null) {
            a(bVar, i, 10009, new d() { // from class: androidx.media2.session.r.19
                @Override // androidx.media2.session.r.d
                public final com.google.common.util.concurrent.a<SessionPlayer.b> a(MediaSession.b bVar2) {
                    return r.this.e.r();
                }
            });
        }
    }
}
