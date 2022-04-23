package androidx.media2.session;

import android.content.Context;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
import androidx.media.b;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaLibraryService;
import androidx.media2.session.MediaSession;
import com.sinch.verification.core.internal.error.ApiErrorData;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/l.class */
final class l extends q {
    final MediaSession.a h = new c(this);
    final MediaLibraryService.a.b i;

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/l$a.class */
    static abstract class a extends MediaSession.a {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, int i2, int i3, int i4, int i5) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, long j, long j2, float f) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, long j, long j2, int i2) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, long j, long j2, long j3) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaItem mediaItem, int i2, int i3, int i4) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaItem mediaItem, int i2, long j, long j2, long j3) throws RemoteException {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void a(int i, MediaMetadata mediaMetadata) throws RemoteException {
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
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.media2.session.MediaSession.a
        public final void b(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/l$b.class */
    final class b extends a {

        /* renamed from: a  reason: collision with root package name */
        final Object f4813a = new Object();

        /* renamed from: b  reason: collision with root package name */
        final List<d> f4814b = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        private final b.C0073b f4816d;

        b(b.C0073b bVar) {
            super();
            this.f4816d = bVar;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            return androidx.core.e.a.a(this.f4816d, ((b) obj).f4816d);
        }

        public final int hashCode() {
            return androidx.core.e.a.a(this.f4816d);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/l$c.class */
    static final class c extends a {

        /* renamed from: a  reason: collision with root package name */
        private final MediaBrowserServiceCompat f4817a;

        c(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
            super();
            this.f4817a = mediaBrowserServiceCompat;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/l$d.class */
    static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final MediaSession.b f4818a;

        /* renamed from: b  reason: collision with root package name */
        public final b.C0073b f4819b;

        /* renamed from: c  reason: collision with root package name */
        public final String f4820c;

        /* renamed from: d  reason: collision with root package name */
        public final Bundle f4821d;
        public final MediaBrowserServiceCompat.i<List<MediaBrowserCompat.MediaItem>> e;

        d(MediaSession.b bVar, b.C0073b bVar2, String str, Bundle bundle, MediaBrowserServiceCompat.i<List<MediaBrowserCompat.MediaItem>> iVar) {
            this.f4818a = bVar;
            this.f4819b = bVar2;
            this.f4820c = str;
            this.f4821d = bundle;
            this.e = iVar;
        }
    }

    l(Context context, MediaLibraryService.a.b bVar, MediaSessionCompat.Token token) {
        super(context, bVar, token);
        this.i = bVar;
    }

    private MediaSession.b b() {
        return this.j.b((androidx.media2.session.a<b.C0073b>) a());
    }

    @Override // androidx.media2.session.q, androidx.media.MediaBrowserServiceCompat
    public final MediaBrowserServiceCompat.a a(String str, int i, Bundle bundle) {
        MediaSession.b b2;
        if (super.a(str, i, bundle) == null || (b2 = b()) == null) {
            return null;
        }
        if (this.j.a(b2, (int) ApiErrorData.ErrorCodes.InternalServerError.InternalError)) {
            s.a(this.i.F(), bundle);
            this.i.x();
            this.i.w();
            LibraryResult a2 = MediaLibraryService.a.C0097a.a();
            if (a2.a() == 0 && a2.f4500c != null) {
                MediaMetadata d2 = a2.f4500c.d();
                return new MediaBrowserServiceCompat.a(d2 != null ? d2.c(MediaMetadataCompat.METADATA_KEY_MEDIA_ID) : "", s.a(a2.e));
            }
        }
        return s.f5097a;
    }

    @Override // androidx.media2.session.q
    final MediaSession.b a(b.C0073b bVar) {
        return new MediaSession.b(bVar, -1, this.k.a(bVar), new b(bVar), null);
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    public final void a(final String str) {
        final MediaSession.b b2 = b();
        if (TextUtils.isEmpty(str)) {
            Log.w("MLS2LegacyStub", "onUnsubscribe(): Ignoring empty id from ".concat(String.valueOf(b2)));
        } else {
            this.i.G().execute(new Runnable() { // from class: androidx.media2.session.l.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (l.this.j.a(b2, 50002)) {
                        l.this.i.x();
                        l.this.i.w();
                    }
                }
            });
        }
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    public final void a(final String str, final Bundle bundle) {
        final MediaSession.b b2 = b();
        if (TextUtils.isEmpty(str)) {
            Log.w("MLS2LegacyStub", "onSubscribe(): Ignoring empty id from ".concat(String.valueOf(b2)));
        } else {
            this.i.G().execute(new Runnable() { // from class: androidx.media2.session.l.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (l.this.j.a(b2, 50001)) {
                        s.a(l.this.i.F(), bundle);
                        l.this.i.x();
                        l.this.i.w();
                    }
                }
            });
        }
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    public final void a(final String str, final Bundle bundle, final MediaBrowserServiceCompat.i<List<MediaBrowserCompat.MediaItem>> iVar) {
        final MediaSession.b b2 = b();
        if (TextUtils.isEmpty(str)) {
            Log.w("MLS2LegacyStub", "Ignoring empty query from ".concat(String.valueOf(b2)));
            iVar.b();
        } else if (b2.f4536c instanceof b) {
            iVar.a();
            this.i.G().execute(new Runnable() { // from class: androidx.media2.session.l.5
                @Override // java.lang.Runnable
                public final void run() {
                    if (!l.this.j.a(b2, 50005)) {
                        iVar.b();
                        return;
                    }
                    b bVar = (b) b2.f4536c;
                    MediaSession.b bVar2 = b2;
                    String str2 = str;
                    Bundle bundle2 = bundle;
                    MediaBrowserServiceCompat.i iVar2 = iVar;
                    synchronized (bVar.f4813a) {
                        bVar.f4814b.add(new d(bVar2, bVar2.f4534a, str2, bundle2, iVar2));
                    }
                    s.a(l.this.i.F(), bundle);
                    l.this.i.x();
                    l.this.i.w();
                }
            });
        }
    }

    @Override // androidx.media2.session.q, androidx.media.MediaBrowserServiceCompat
    public final void a(String str, MediaBrowserServiceCompat.i<List<MediaBrowserCompat.MediaItem>> iVar) {
        a(str, iVar, (Bundle) null);
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    public final void a(final String str, final MediaBrowserServiceCompat.i<List<MediaBrowserCompat.MediaItem>> iVar, final Bundle bundle) {
        final MediaSession.b b2 = b();
        if (TextUtils.isEmpty(str)) {
            Log.w("MLS2LegacyStub", "onLoadChildren(): Ignoring empty parentId from ".concat(String.valueOf(b2)));
            iVar.b();
            return;
        }
        iVar.a();
        this.i.G().execute(new Runnable() { // from class: androidx.media2.session.l.3
            @Override // java.lang.Runnable
            public final void run() {
                if (!l.this.j.a(b2, 50003)) {
                    iVar.b();
                    return;
                }
                Bundle bundle2 = bundle;
                if (bundle2 != null) {
                    bundle2.setClassLoader(l.this.i.F().getClassLoader());
                    try {
                        int i = bundle.getInt("android.media.browse.extra.PAGE");
                        int i2 = bundle.getInt("android.media.browse.extra.PAGE_SIZE");
                        if (i > 0 && i2 > 0) {
                            s.a(l.this.i.F(), bundle);
                            l.this.i.x();
                            l.this.i.w();
                            LibraryResult c2 = MediaLibraryService.a.C0097a.c();
                            if (c2.a() != 0) {
                                iVar.b(null);
                                return;
                            } else {
                                iVar.b(s.e(s.b(c2.f)));
                                return;
                            }
                        }
                    } catch (BadParcelableException e) {
                    }
                }
                l.this.i.x();
                l.this.i.w();
                LibraryResult c3 = MediaLibraryService.a.C0097a.c();
                if (c3.a() != 0) {
                    iVar.b(null);
                } else {
                    iVar.b(s.e(s.b(c3.f)));
                }
            }
        });
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    public final void b(final String str, final Bundle bundle, final MediaBrowserServiceCompat.i<Bundle> iVar) {
        iVar.a();
        final MediaSession.b b2 = b();
        this.i.G().execute(new Runnable() { // from class: androidx.media2.session.l.6
            @Override // java.lang.Runnable
            public final void run() {
                if (!l.this.j.a(b2, new SessionCommand(str, null))) {
                    MediaBrowserServiceCompat.i iVar2 = iVar;
                    if (iVar2 != null) {
                        iVar2.b();
                        return;
                    }
                    return;
                }
                l.this.i.x();
                l.this.i.w();
                iVar.b(MediaLibraryService.a.C0097a.e().f4548c);
            }
        });
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    public final void b(final String str, final MediaBrowserServiceCompat.i<MediaBrowserCompat.MediaItem> iVar) {
        final MediaSession.b b2 = b();
        if (TextUtils.isEmpty(str)) {
            Log.w("MLS2LegacyStub", "Ignoring empty itemId from ".concat(String.valueOf(b2)));
            iVar.b();
            return;
        }
        iVar.a();
        this.i.G().execute(new Runnable() { // from class: androidx.media2.session.l.4
            @Override // java.lang.Runnable
            public final void run() {
                if (!l.this.j.a(b2, 50004)) {
                    iVar.b();
                    return;
                }
                l.this.i.x();
                l.this.i.w();
                LibraryResult b3 = MediaLibraryService.a.C0097a.b();
                if (b3.a() != 0) {
                    iVar.b(null);
                } else {
                    iVar.b(s.b(b3.f4500c));
                }
            }
        });
    }
}
