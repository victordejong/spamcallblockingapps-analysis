package androidx.media2.session;

import android.content.Context;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.p008v4.media.MediaBrowserCompat;
import android.support.p008v4.media.MediaMetadataCompat;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.p036e.C0827a;
import androidx.media.C1329b;
import androidx.media.MediaBrowserServiceCompat;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.session.l */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/l.class */
public final class ServiceC2326l extends ServiceC2435q {

    /* renamed from: h */
    final MediaSession.AbstractC2208a f9083h = new C2335c(this);

    /* renamed from: i */
    final MediaLibraryService.C2204a.AbstractC2206b f9084i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.session.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/l$a.class */
    public static abstract class AbstractC2333a extends MediaSession.AbstractC2208a {
        private AbstractC2333a() {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40830a(int i) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40829a(int i, int i2, int i3, int i4, int i5) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40828a(int i, long j, long j2, float f) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40827a(int i, long j, long j2, int i2) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40826a(int i, long j, long j2, long j3) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40825a(int i, MediaItem mediaItem, int i2, int i3, int i4) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40824a(int i, MediaItem mediaItem, int i2, long j, long j2, long j3) throws RemoteException {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40823a(int i, MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40822a(int i, MediaMetadata mediaMetadata) throws RemoteException {
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
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: b */
        public final void mo40811b(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
        }
    }

    /* renamed from: androidx.media2.session.l$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/l$b.class */
    final class C2334b extends AbstractC2333a {

        /* renamed from: a */
        final Object f9111a = new Object();

        /* renamed from: b */
        final List<C2336d> f9112b = new ArrayList();

        /* renamed from: d */
        private final C1329b.C1331b f9114d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2334b(C1329b.C1331b c1331b) {
            super();
            ServiceC2326l.this = r5;
            this.f9114d = c1331b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C2334b) {
                return C0827a.m44414a(this.f9114d, ((C2334b) obj).f9114d);
            }
            return false;
        }

        public final int hashCode() {
            return C0827a.m44413a(this.f9114d);
        }
    }

    /* renamed from: androidx.media2.session.l$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/l$c.class */
    static final class C2335c extends AbstractC2333a {

        /* renamed from: a */
        private final MediaBrowserServiceCompat f9115a;

        C2335c(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
            super();
            this.f9115a = mediaBrowserServiceCompat;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.session.l$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/l$d.class */
    public static final class C2336d {

        /* renamed from: a */
        public final MediaSession.C2209b f9116a;

        /* renamed from: b */
        public final C1329b.C1331b f9117b;

        /* renamed from: c */
        public final String f9118c;

        /* renamed from: d */
        public final Bundle f9119d;

        /* renamed from: e */
        public final MediaBrowserServiceCompat.C1313i<List<MediaBrowserCompat.MediaItem>> f9120e;

        C2336d(MediaSession.C2209b c2209b, C1329b.C1331b c1331b, String str, Bundle bundle, MediaBrowserServiceCompat.C1313i<List<MediaBrowserCompat.MediaItem>> c1313i) {
            this.f9116a = c2209b;
            this.f9117b = c1331b;
            this.f9118c = str;
            this.f9119d = bundle;
            this.f9120e = c1313i;
        }
    }

    ServiceC2326l(Context context, MediaLibraryService.C2204a.AbstractC2206b abstractC2206b, MediaSessionCompat.Token token) {
        super(context, abstractC2206b, token);
        this.f9084i = abstractC2206b;
    }

    /* renamed from: b */
    private MediaSession.C2209b m40996b() {
        return this.f9341j.m41090b((C2217a<C1329b.C1331b>) m43243a());
    }

    @Override // androidx.media2.session.ServiceC2435q, androidx.media.MediaBrowserServiceCompat
    /* renamed from: a */
    public final MediaBrowserServiceCompat.C1296a mo40882a(String str, int i, Bundle bundle) {
        MediaSession.C2209b m40996b;
        if (super.mo40882a(str, i, bundle) == null || (m40996b = m40996b()) == null) {
            return null;
        }
        if (this.f9341j.m41095a(m40996b, (int) ApiErrorData.ErrorCodes.InternalServerError.InternalError)) {
            C2481s.m40804a(this.f9084i.mo40976F(), bundle);
            this.f9084i.mo40982x();
            this.f9084i.mo40983w();
            LibraryResult m41137a = MediaLibraryService.C2204a.C2205a.m41137a();
            if (m41137a.mo41118a() == 0 && m41137a.f8698c != null) {
                MediaMetadata m43200d = m41137a.f8698c.m43200d();
                return new MediaBrowserServiceCompat.C1296a(m43200d != null ? m43200d.m43195c(MediaMetadataCompat.METADATA_KEY_MEDIA_ID) : "", C2481s.m40793a(m41137a.f8700e));
            }
        }
        return C2481s.f9443a;
    }

    @Override // androidx.media2.session.ServiceC2435q
    /* renamed from: a */
    final MediaSession.C2209b mo40883a(C1329b.C1331b c1331b) {
        return new MediaSession.C2209b(c1331b, -1, this.f9342k.m43216a(c1331b), new C2334b(c1331b), null);
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    /* renamed from: a */
    public final void mo41000a(final String str) {
        final MediaSession.C2209b m40996b = m40996b();
        if (TextUtils.isEmpty(str)) {
            Log.w("MLS2LegacyStub", "onUnsubscribe(): Ignoring empty id from ".concat(String.valueOf(m40996b)));
        } else {
            this.f9084i.mo40975G().execute(new Runnable() { // from class: androidx.media2.session.l.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (!ServiceC2326l.this.f9341j.m41095a(m40996b, 50002)) {
                        return;
                    }
                    ServiceC2326l.this.f9084i.mo40982x();
                    ServiceC2326l.this.f9084i.mo40983w();
                }
            });
        }
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    /* renamed from: a */
    public final void mo40999a(final String str, final Bundle bundle) {
        final MediaSession.C2209b m40996b = m40996b();
        if (TextUtils.isEmpty(str)) {
            Log.w("MLS2LegacyStub", "onSubscribe(): Ignoring empty id from ".concat(String.valueOf(m40996b)));
        } else {
            this.f9084i.mo40975G().execute(new Runnable() { // from class: androidx.media2.session.l.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (!ServiceC2326l.this.f9341j.m41095a(m40996b, 50001)) {
                        return;
                    }
                    C2481s.m40804a(ServiceC2326l.this.f9084i.mo40976F(), bundle);
                    ServiceC2326l.this.f9084i.mo40982x();
                    ServiceC2326l.this.f9084i.mo40983w();
                }
            });
        }
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    /* renamed from: a */
    public final void mo40998a(final String str, final Bundle bundle, final MediaBrowserServiceCompat.C1313i<List<MediaBrowserCompat.MediaItem>> c1313i) {
        final MediaSession.C2209b m40996b = m40996b();
        if (TextUtils.isEmpty(str)) {
            Log.w("MLS2LegacyStub", "Ignoring empty query from ".concat(String.valueOf(m40996b)));
            c1313i.m43229b();
        } else if (!(m40996b.f8743c instanceof C2334b)) {
        } else {
            c1313i.mo43232a();
            this.f9084i.mo40975G().execute(new Runnable() { // from class: androidx.media2.session.l.5
                @Override // java.lang.Runnable
                public final void run() {
                    if (!ServiceC2326l.this.f9341j.m41095a(m40996b, 50005)) {
                        c1313i.m43229b();
                        return;
                    }
                    C2334b c2334b = (C2334b) m40996b.f8743c;
                    MediaSession.C2209b c2209b = m40996b;
                    String str2 = str;
                    Bundle bundle2 = bundle;
                    MediaBrowserServiceCompat.C1313i c1313i2 = c1313i;
                    synchronized (c2334b.f9111a) {
                        c2334b.f9112b.add(new C2336d(c2209b, c2209b.f8741a, str2, bundle2, c1313i2));
                    }
                    C2481s.m40804a(ServiceC2326l.this.f9084i.mo40976F(), bundle);
                    ServiceC2326l.this.f9084i.mo40982x();
                    ServiceC2326l.this.f9084i.mo40983w();
                }
            });
        }
    }

    @Override // androidx.media2.session.ServiceC2435q, androidx.media.MediaBrowserServiceCompat
    /* renamed from: a */
    public final void mo40881a(String str, MediaBrowserServiceCompat.C1313i<List<MediaBrowserCompat.MediaItem>> c1313i) {
        mo40997a(str, c1313i, (Bundle) null);
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    /* renamed from: a */
    public final void mo40997a(final String str, final MediaBrowserServiceCompat.C1313i<List<MediaBrowserCompat.MediaItem>> c1313i, final Bundle bundle) {
        final MediaSession.C2209b m40996b = m40996b();
        if (TextUtils.isEmpty(str)) {
            Log.w("MLS2LegacyStub", "onLoadChildren(): Ignoring empty parentId from ".concat(String.valueOf(m40996b)));
            c1313i.m43229b();
            return;
        }
        c1313i.mo43232a();
        this.f9084i.mo40975G().execute(new Runnable() { // from class: androidx.media2.session.l.3
            @Override // java.lang.Runnable
            public final void run() {
                if (!ServiceC2326l.this.f9341j.m41095a(m40996b, 50003)) {
                    c1313i.m43229b();
                    return;
                }
                Bundle bundle2 = bundle;
                if (bundle2 != null) {
                    bundle2.setClassLoader(ServiceC2326l.this.f9084i.mo40976F().getClassLoader());
                    try {
                        int i = bundle.getInt("android.media.browse.extra.PAGE");
                        int i2 = bundle.getInt("android.media.browse.extra.PAGE_SIZE");
                        if (i > 0 && i2 > 0) {
                            C2481s.m40804a(ServiceC2326l.this.f9084i.mo40976F(), bundle);
                            ServiceC2326l.this.f9084i.mo40982x();
                            ServiceC2326l.this.f9084i.mo40983w();
                            LibraryResult m41135c = MediaLibraryService.C2204a.C2205a.m41135c();
                            if (m41135c.mo41118a() != 0) {
                                c1313i.m43228b(null);
                                return;
                            } else {
                                c1313i.m43228b(C2481s.m40784e(C2481s.m40787b(m41135c.f8701f)));
                                return;
                            }
                        }
                    } catch (BadParcelableException e) {
                    }
                }
                ServiceC2326l.this.f9084i.mo40982x();
                ServiceC2326l.this.f9084i.mo40983w();
                LibraryResult m41135c2 = MediaLibraryService.C2204a.C2205a.m41135c();
                if (m41135c2.mo41118a() != 0) {
                    c1313i.m43228b(null);
                } else {
                    c1313i.m43228b(C2481s.m40784e(C2481s.m40787b(m41135c2.f8701f)));
                }
            }
        });
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    /* renamed from: b */
    public final void mo40995b(final String str, final Bundle bundle, final MediaBrowserServiceCompat.C1313i<Bundle> c1313i) {
        c1313i.mo43232a();
        final MediaSession.C2209b m40996b = m40996b();
        this.f9084i.mo40975G().execute(new Runnable() { // from class: androidx.media2.session.l.6
            @Override // java.lang.Runnable
            public final void run() {
                if (!ServiceC2326l.this.f9341j.m41094a(m40996b, new SessionCommand(str, null))) {
                    MediaBrowserServiceCompat.C1313i c1313i2 = c1313i;
                    if (c1313i2 == null) {
                        return;
                    }
                    c1313i2.m43229b();
                    return;
                }
                ServiceC2326l.this.f9084i.mo40982x();
                ServiceC2326l.this.f9084i.mo40983w();
                c1313i.m43228b(MediaLibraryService.C2204a.C2205a.m41132e().f8760c);
            }
        });
    }

    @Override // androidx.media.MediaBrowserServiceCompat
    /* renamed from: b */
    public final void mo40994b(final String str, final MediaBrowserServiceCompat.C1313i<MediaBrowserCompat.MediaItem> c1313i) {
        final MediaSession.C2209b m40996b = m40996b();
        if (TextUtils.isEmpty(str)) {
            Log.w("MLS2LegacyStub", "Ignoring empty itemId from ".concat(String.valueOf(m40996b)));
            c1313i.m43229b();
            return;
        }
        c1313i.mo43232a();
        this.f9084i.mo40975G().execute(new Runnable() { // from class: androidx.media2.session.l.4
            @Override // java.lang.Runnable
            public final void run() {
                if (!ServiceC2326l.this.f9341j.m41095a(m40996b, 50004)) {
                    c1313i.m43229b();
                    return;
                }
                ServiceC2326l.this.f9084i.mo40982x();
                ServiceC2326l.this.f9084i.mo40983w();
                LibraryResult m41136b = MediaLibraryService.C2204a.C2205a.m41136b();
                if (m41136b.mo41118a() != 0) {
                    c1313i.m43228b(null);
                } else {
                    c1313i.m43228b(C2481s.m40788b(m41136b.f8698c));
                }
            }
        });
    }
}
