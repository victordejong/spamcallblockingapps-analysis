package androidx.media2.session;

import android.content.Context;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.p008v4.media.session.MediaControllerCompat;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.Surface;
import androidx.core.p036e.C0827a;
import androidx.media.C1329b;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.MediaParcelUtils;
import androidx.media2.common.Rating;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.AbstractC2223c;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaLibraryService;
import androidx.media2.session.MediaSession;
import androidx.media2.session.SessionCommandGroup;
import androidx.versionedparcelable.C2920a;
import androidx.versionedparcelable.ParcelImpl;
import com.google.common.util.concurrent.AbstractFutureC15579a;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.sinch.verification.core.internal.error.ApiErrorData;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.media2.session.r */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/r.class */
public final class BinderC2436r extends AbstractC2223c.AbstractBinderC2224a {

    /* renamed from: a */
    static final boolean f9343a = Log.isLoggable("MediaSessionStub", 3);

    /* renamed from: b */
    static final SparseArray<SessionCommand> f9344b = new SparseArray<>();

    /* renamed from: c */
    final C2217a<IBinder> f9345c;

    /* renamed from: d */
    final Object f9346d = new Object();

    /* renamed from: e */
    final MediaSession.AbstractC2210c f9347e;

    /* renamed from: f */
    final Context f9348f;

    /* renamed from: g */
    final C1329b f9349g;

    /* renamed from: androidx.media2.session.r$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/r$a.class */
    final class C2476a extends MediaSession.AbstractC2208a {

        /* renamed from: b */
        private final AbstractC2220b f9442b;

        C2476a(AbstractC2220b abstractC2220b) {
            BinderC2436r.this = r4;
            this.f9442b = abstractC2220b;
        }

        /* renamed from: a */
        final IBinder m40831a() {
            return this.f9442b.asBinder();
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40830a(int i) throws RemoteException {
            this.f9442b.mo41029a(i);
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40829a(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            this.f9442b.mo41011b(i, i2, i3, i4, i5);
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40828a(int i, long j, long j2, float f) throws RemoteException {
            this.f9442b.mo41027a(i, j, j2, f);
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40827a(int i, long j, long j2, int i2) throws RemoteException {
            this.f9442b.mo41026a(i, j, j2, i2);
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40826a(int i, long j, long j2, long j3) throws RemoteException {
            this.f9442b.mo41025a(i, j, j2, j3);
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40825a(int i, MediaItem mediaItem, int i2, int i3, int i4) throws RemoteException {
            this.f9442b.mo41022a(i, MediaParcelUtils.m43186a(mediaItem), i2, i3, i4);
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40824a(int i, MediaItem mediaItem, int i2, long j, long j2, long j3) throws RemoteException {
            this.f9442b.mo41021a(i, MediaParcelUtils.m43186a(mediaItem), i2, j, j2, j3);
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40823a(int i, MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) throws RemoteException {
            this.f9442b.mo41018a(i, MediaParcelUtils.m43186a(mediaItem), MediaParcelUtils.m43186a(trackInfo), MediaParcelUtils.m43186a(subtitleData));
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40822a(int i, MediaMetadata mediaMetadata) throws RemoteException {
            if (BinderC2436r.this.f9345c.m41095a(BinderC2436r.this.f9345c.m41090b((C2217a<IBinder>) m40831a()), 10012)) {
                this.f9442b.mo41023a(i, MediaParcelUtils.m43186a(mediaMetadata));
            }
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40821a(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
            this.f9442b.mo41004g(i, MediaParcelUtils.m43186a(trackInfo));
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40820a(int i, SessionPlayer.C1352b c1352b) throws RemoteException {
            mo40816a(i, SessionResult.m41116a(c1352b));
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40819a(int i, VideoSize videoSize) throws RemoteException {
            this.f9442b.mo41019a(i, MediaParcelUtils.m43186a(new MediaItem.C1346a().mo43177a()), MediaParcelUtils.m43186a(videoSize));
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40818a(int i, LibraryResult libraryResult) throws RemoteException {
            LibraryResult libraryResult2 = libraryResult;
            if (libraryResult == null) {
                libraryResult2 = new LibraryResult(-1);
            }
            this.f9442b.mo41005f(i, MediaParcelUtils.m43186a(libraryResult2));
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40817a(int i, MediaController.PlaybackInfo playbackInfo) throws RemoteException {
            this.f9442b.mo41010b(i, MediaParcelUtils.m43186a(playbackInfo));
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40816a(int i, SessionResult sessionResult) throws RemoteException {
            SessionResult sessionResult2 = sessionResult;
            if (sessionResult == null) {
                sessionResult2 = new SessionResult(-1, null);
            }
            this.f9442b.mo41006e(i, MediaParcelUtils.m43186a(sessionResult2));
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40815a(int i, List<MediaItem> list, MediaMetadata mediaMetadata, int i2, int i3, int i4) throws RemoteException {
            MediaSession.C2209b m41090b = BinderC2436r.this.f9345c.m41090b((C2217a<IBinder>) m40831a());
            if (BinderC2436r.this.f9345c.m41095a(m41090b, 10005)) {
                this.f9442b.mo41024a(i, C2481s.m40783f(list), MediaParcelUtils.m43186a(mediaMetadata), i2, i3, i4);
            } else if (!BinderC2436r.this.f9345c.m41095a(m41090b, 10012)) {
            } else {
                this.f9442b.mo41023a(i, MediaParcelUtils.m43186a(mediaMetadata));
            }
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: a */
        public final void mo40814a(int i, List<SessionPlayer.TrackInfo> list, SessionPlayer.TrackInfo trackInfo, SessionPlayer.TrackInfo trackInfo2, SessionPlayer.TrackInfo trackInfo3, SessionPlayer.TrackInfo trackInfo4) throws RemoteException {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < list.size(); i2++) {
                arrayList.add(MediaParcelUtils.m43186a(list.get(i2)));
            }
            this.f9442b.mo41015a(i, arrayList, MediaParcelUtils.m43186a(trackInfo), MediaParcelUtils.m43186a(trackInfo2), MediaParcelUtils.m43186a(trackInfo3), MediaParcelUtils.m43186a(trackInfo4));
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: b */
        public final void mo40813b(int i) throws RemoteException {
            this.f9442b.mo41012b(i);
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: b */
        public final void mo40812b(int i, int i2, int i3, int i4, int i5) throws RemoteException {
            this.f9442b.mo41028a(i, i2, i3, i4, i5);
        }

        @Override // androidx.media2.session.MediaSession.AbstractC2208a
        /* renamed from: b */
        public final void mo40811b(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException {
            this.f9442b.mo41003h(i, MediaParcelUtils.m43186a(trackInfo));
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && obj.getClass() == C2476a.class) {
                return C0827a.m44414a(m40831a(), ((C2476a) obj).m40831a());
            }
            return false;
        }

        public final int hashCode() {
            return C0827a.m44413a(m40831a());
        }
    }

    /* renamed from: androidx.media2.session.r$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/r$b.class */
    interface AbstractC2477b<T> extends AbstractC2480e {
        /* renamed from: a */
        T mo40810a(MediaSession.C2209b c2209b) throws RemoteException;
    }

    /* renamed from: androidx.media2.session.r$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/r$c.class */
    interface AbstractC2478c<T> extends AbstractC2480e {
        /* renamed from: a */
        T mo40809a(MediaSession.C2209b c2209b) throws RemoteException;
    }

    /* renamed from: androidx.media2.session.r$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/r$d.class */
    interface AbstractC2479d extends AbstractC2480e {
        /* renamed from: a */
        AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) throws RemoteException;
    }

    /* renamed from: androidx.media2.session.r$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/r$e.class */
    public interface AbstractC2480e {
    }

    static {
        for (SessionCommand sessionCommand : new SessionCommandGroup.C2213a().m41125b(2).m41121e(2).m41129a().m41131a()) {
            f9344b.append(sessionCommand.f8753f, sessionCommand);
        }
    }

    public BinderC2436r(MediaSession.AbstractC2210c abstractC2210c) {
        this.f9347e = abstractC2210c;
        Context mo40976F = abstractC2210c.mo40976F();
        this.f9348f = mo40976F;
        this.f9349g = C1329b.m43217a(mo40976F);
        this.f9345c = new C2217a<>(abstractC2210c);
    }

    /* renamed from: a */
    static void m40880a(MediaSession.C2209b c2209b, int i, int i2) {
        m40877a(c2209b, i, new SessionResult(i2));
    }

    /* renamed from: a */
    static void m40879a(MediaSession.C2209b c2209b, int i, SessionPlayer.C1352b c1352b) {
        try {
            c2209b.f8743c.mo40820a(i, c1352b);
        } catch (RemoteException e) {
            Log.w("MediaSessionStub", "Exception in " + c2209b.toString(), e);
        }
    }

    /* renamed from: a */
    static void m40878a(MediaSession.C2209b c2209b, int i, LibraryResult libraryResult) {
        try {
            c2209b.f8743c.mo40818a(i, libraryResult);
        } catch (RemoteException e) {
            Log.w("MediaSessionStub", "Exception in " + c2209b.toString(), e);
        }
    }

    /* renamed from: a */
    static void m40877a(MediaSession.C2209b c2209b, int i, SessionResult sessionResult) {
        try {
            c2209b.f8743c.mo40816a(i, sessionResult);
        } catch (RemoteException e) {
            Log.w("MediaSessionStub", "Exception in " + c2209b.toString(), e);
        }
    }

    /* renamed from: a */
    private void m40872a(AbstractC2220b abstractC2220b, int i, int i2, AbstractC2477b<?> abstractC2477b) {
        if (this.f9347e instanceof MediaLibraryService.C2204a.AbstractC2206b) {
            m40866a(abstractC2220b, i, null, i2, abstractC2477b);
            return;
        }
        throw new RuntimeException("MediaSession cannot handle MediaLibrarySession command");
    }

    /* renamed from: a */
    private void m40871a(AbstractC2220b abstractC2220b, int i, int i2, AbstractC2480e abstractC2480e) {
        m40866a(abstractC2220b, i, null, i2, abstractC2480e);
    }

    /* renamed from: a */
    private void m40866a(AbstractC2220b abstractC2220b, final int i, final SessionCommand sessionCommand, final int i2, final AbstractC2480e abstractC2480e) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            final MediaSession.C2209b m41090b = this.f9345c.m41090b((C2217a<IBinder>) abstractC2220b.asBinder());
            if (this.f9347e.mo40974H() || m41090b == null) {
                return;
            }
            this.f9347e.mo40975G().execute(new Runnable() { // from class: androidx.media2.session.r.1
                @Override // java.lang.Runnable
                public final void run() {
                    SessionCommand sessionCommand2;
                    if (!BinderC2436r.this.f9345c.m41091b(m41090b)) {
                        return;
                    }
                    if (sessionCommand != null) {
                        if (!BinderC2436r.this.f9345c.m41094a(m41090b, sessionCommand)) {
                            if (BinderC2436r.f9343a) {
                                StringBuilder sb = new StringBuilder("Command (");
                                sb.append(sessionCommand);
                                sb.append(") from ");
                                sb.append(m41090b);
                                sb.append(" isn't allowed.");
                            }
                            BinderC2436r.m40880a(m41090b, i, -4);
                            return;
                        }
                        sessionCommand2 = BinderC2436r.f9344b.get(sessionCommand.f8753f);
                    } else if (!BinderC2436r.this.f9345c.m41095a(m41090b, i2)) {
                        if (BinderC2436r.f9343a) {
                            StringBuilder sb2 = new StringBuilder("Command (");
                            sb2.append(i2);
                            sb2.append(") from ");
                            sb2.append(m41090b);
                            sb2.append(" isn't allowed.");
                        }
                        BinderC2436r.m40880a(m41090b, i, -4);
                        return;
                    } else {
                        sessionCommand2 = BinderC2436r.f9344b.get(i2);
                    }
                    if (sessionCommand2 != null) {
                        try {
                            BinderC2436r.this.f9347e.mo40925y();
                            BinderC2436r.this.f9347e.mo40924z();
                        } catch (RemoteException e) {
                            Log.w("MediaSessionStub", "Exception in " + m41090b.toString(), e);
                            return;
                        } catch (Exception e2) {
                            throw e2;
                        }
                    }
                    AbstractC2480e abstractC2480e2 = abstractC2480e;
                    if (abstractC2480e2 instanceof AbstractC2479d) {
                        final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a = ((AbstractC2479d) abstractC2480e2).mo40808a(m41090b);
                        if (mo40808a != null) {
                            mo40808a.mo8638a(new Runnable() { // from class: androidx.media2.session.r.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    try {
                                        BinderC2436r.m40879a(m41090b, i, (SessionPlayer.C1352b) mo40808a.get(0L, TimeUnit.MILLISECONDS));
                                    } catch (Exception e3) {
                                        Log.w("MediaSessionStub", "Cannot obtain PlayerResult after the command is finished", e3);
                                        BinderC2436r.m40880a(m41090b, i, -2);
                                    }
                                }
                            }, C2481s.f9444b);
                            return;
                        }
                        throw new RuntimeException("SessionPlayer has returned null, commandCode=" + i2);
                    } else if (abstractC2480e2 instanceof AbstractC2478c) {
                        Object mo40809a = ((AbstractC2478c) abstractC2480e2).mo40809a(m41090b);
                        if (mo40809a == null) {
                            throw new RuntimeException("SessionCallback has returned null, commandCode=" + i2);
                        } else if (mo40809a instanceof Integer) {
                            BinderC2436r.m40880a(m41090b, i, ((Integer) mo40809a).intValue());
                        } else if (mo40809a instanceof SessionResult) {
                            BinderC2436r.m40877a(m41090b, i, (SessionResult) mo40809a);
                        } else if (!BinderC2436r.f9343a) {
                        } else {
                            throw new RuntimeException("Unexpected return type " + mo40809a + ". Fix bug");
                        }
                    } else if (!(abstractC2480e2 instanceof AbstractC2477b)) {
                        if (!BinderC2436r.f9343a) {
                            return;
                        }
                        throw new RuntimeException("Unknown task " + abstractC2480e + ". Fix bug");
                    } else {
                        Object mo40810a = ((AbstractC2477b) abstractC2480e2).mo40810a(m41090b);
                        if (mo40810a == null) {
                            throw new RuntimeException("LibrarySessionCallback has returned null, commandCode=" + i2);
                        } else if (mo40810a instanceof Integer) {
                            BinderC2436r.m40857b(m41090b, i, ((Integer) mo40810a).intValue());
                        } else if (mo40810a instanceof LibraryResult) {
                            BinderC2436r.m40878a(m41090b, i, (LibraryResult) mo40810a);
                        } else if (!BinderC2436r.f9343a) {
                        } else {
                            throw new RuntimeException("Unexpected return type " + mo40810a + ". Fix bug");
                        }
                    }
                }
            });
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    /* renamed from: b */
    static void m40857b(MediaSession.C2209b c2209b, int i, int i2) {
        m40878a(c2209b, i, new LibraryResult(i2));
    }

    /* renamed from: a */
    final MediaItem m40859a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        this.f9347e.mo40925y();
        this.f9347e.mo40924z();
        Log.w("MediaSessionStub", "onCreateMediaItem(mediaId=" + str + ") returned null. Ignoring");
        return null;
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: a */
    public final void mo40876a(AbstractC2220b abstractC2220b, int i) throws RemoteException {
        if (abstractC2220b == null) {
            return;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            C2217a<IBinder> c2217a = this.f9345c;
            IBinder asBinder = abstractC2220b.asBinder();
            if (asBinder != null) {
                c2217a.m41096a(c2217a.m41090b((C2217a<IBinder>) asBinder));
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: a */
    public final void mo40875a(AbstractC2220b abstractC2220b, int i, final float f) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 10004, new AbstractC2479d() { // from class: androidx.media2.session.r.7
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                return BinderC2436r.this.f9347e.mo40969a(f);
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: a */
    public final void mo40874a(AbstractC2220b abstractC2220b, int i, final int i2) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 10014, new AbstractC2479d() { // from class: androidx.media2.session.r.14
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                return BinderC2436r.this.f9347e.mo40947c(i2);
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: a */
    public final void mo40873a(AbstractC2220b abstractC2220b, int i, final int i2, final int i3) throws RuntimeException {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 30000, new AbstractC2478c<Integer>() { // from class: androidx.media2.session.r.23
            @Override // androidx.media2.session.BinderC2436r.AbstractC2478c
            /* renamed from: a */
            public final /* synthetic */ Integer mo40809a(MediaSession.C2209b c2209b) throws RemoteException {
                MediaSessionCompat mo40977E = BinderC2436r.this.f9347e.mo40977E();
                if (mo40977E != null) {
                    MediaControllerCompat mediaControllerCompat = mo40977E.f106b;
                    mediaControllerCompat.f78a.mo46559a(i2, i3);
                }
                return 0;
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: a */
    public final void mo40870a(AbstractC2220b abstractC2220b, int i, final int i2, final String str) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 10013, new AbstractC2479d() { // from class: androidx.media2.session.r.13
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                if (TextUtils.isEmpty(str)) {
                    Log.w("MediaSessionStub", "addPlaylistItem(): Ignoring empty mediaId from ".concat(String.valueOf(c2209b)));
                    return SessionPlayer.C1352b.m43178b();
                }
                BinderC2436r.this.m40859a(str);
                return SessionPlayer.C1352b.m43178b();
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: a */
    public final void mo40869a(AbstractC2220b abstractC2220b, int i, final long j) throws RuntimeException {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 10003, new AbstractC2479d() { // from class: androidx.media2.session.r.4
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                return BinderC2436r.this.f9347e.mo40965a(j);
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: a */
    public final void mo40868a(AbstractC2220b abstractC2220b, int i, final Uri uri, final Bundle bundle) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 40011, new AbstractC2478c<Integer>() { // from class: androidx.media2.session.r.10
            @Override // androidx.media2.session.BinderC2436r.AbstractC2478c
            /* renamed from: a */
            public final /* synthetic */ Integer mo40809a(MediaSession.C2209b c2209b) throws RemoteException {
                if (uri == null) {
                    Log.w("MediaSessionStub", "setMediaUri(): Ignoring null uri from ".concat(String.valueOf(c2209b)));
                    return -3;
                }
                BinderC2436r.this.f9347e.mo40925y();
                BinderC2436r.this.f9347e.mo40924z();
                return -6;
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: a */
    public final void mo40867a(AbstractC2220b abstractC2220b, int i, final Surface surface) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 11000, new AbstractC2479d() { // from class: androidx.media2.session.r.22
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                return BinderC2436r.this.f9347e.mo40964a(surface);
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: a */
    public final void mo40865a(final AbstractC2220b abstractC2220b, int i, ParcelImpl parcelImpl) throws RuntimeException {
        if (abstractC2220b == null || parcelImpl == null) {
            return;
        }
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        ConnectionRequest connectionRequest = (ConnectionRequest) C2920a.m39628a(parcelImpl);
        if (callingPid == 0) {
            callingPid = connectionRequest.f8664c;
        }
        try {
            int i2 = connectionRequest.f8662a;
            String str = connectionRequest.f8663b;
            Bundle bundle = connectionRequest.f8665d;
            C1329b.C1331b c1331b = new C1329b.C1331b(str, callingPid, callingUid);
            final MediaSession.C2209b c2209b = new MediaSession.C2209b(c1331b, i2, this.f9349g.m43216a(c1331b), new C2476a(abstractC2220b), bundle);
            this.f9347e.mo40975G().execute(new Runnable() { // from class: androidx.media2.session.r.12
                @Override // java.lang.Runnable
                public final void run() {
                    C2486v m41089c;
                    if (BinderC2436r.this.f9347e.mo40974H()) {
                        return;
                    }
                    IBinder m40831a = ((C2476a) c2209b.f8743c).m40831a();
                    BinderC2436r.this.f9347e.mo40925y();
                    BinderC2436r.this.f9347e.mo40924z();
                    SessionCommandGroup m41133d = MediaSession.AbstractC2211d.m41133d();
                    if (!(m41133d != null || c2209b.f8742b)) {
                        if (BinderC2436r.f9343a) {
                            new StringBuilder("Rejecting connection, controllerInfo=").append(c2209b);
                        }
                        try {
                            abstractC2220b.mo41012b(0);
                            return;
                        } catch (RemoteException e) {
                            return;
                        }
                    }
                    if (BinderC2436r.f9343a) {
                        StringBuilder sb = new StringBuilder("Accepting connection, controllerInfo=");
                        sb.append(c2209b);
                        sb.append(" allowedCommands=");
                        sb.append(m41133d);
                    }
                    SessionCommandGroup sessionCommandGroup = m41133d;
                    if (m41133d == null) {
                        sessionCommandGroup = new SessionCommandGroup();
                    }
                    synchronized (BinderC2436r.this.f9346d) {
                        if (BinderC2436r.this.f9345c.m41091b(c2209b)) {
                            Log.w("MediaSessionStub", "Controller " + c2209b + " has sent connection request multiple times");
                        }
                        BinderC2436r.this.f9345c.m41092a(m40831a, c2209b, sessionCommandGroup);
                        m41089c = BinderC2436r.this.f9345c.m41089c(c2209b);
                    }
                    BinderC2436r binderC2436r = BinderC2436r.this;
                    ConnectionResult connectionResult = new ConnectionResult(binderC2436r, binderC2436r.f9347e, sessionCommandGroup);
                    if (BinderC2436r.this.f9347e.mo40974H()) {
                        return;
                    }
                    try {
                        abstractC2220b.mo41008c(m41089c.m40778a(), MediaParcelUtils.m43186a(connectionResult));
                    } catch (RemoteException e2) {
                    }
                    BinderC2436r.this.f9347e.mo40925y();
                    BinderC2436r.this.f9347e.mo40924z();
                }
            });
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: a */
    public final void mo40864a(AbstractC2220b abstractC2220b, int i, ParcelImpl parcelImpl, final Bundle bundle) {
        if (abstractC2220b == null || parcelImpl == null) {
            return;
        }
        final SessionCommand sessionCommand = (SessionCommand) C2920a.m39628a(parcelImpl);
        m40866a(abstractC2220b, i, sessionCommand, 0, new AbstractC2478c<SessionResult>() { // from class: androidx.media2.session.r.5
            @Override // androidx.media2.session.BinderC2436r.AbstractC2478c
            /* renamed from: a */
            public final /* synthetic */ SessionResult mo40809a(MediaSession.C2209b c2209b) throws RemoteException {
                BinderC2436r.this.f9347e.mo40925y();
                BinderC2436r.this.f9347e.mo40924z();
                return MediaSession.AbstractC2211d.m41132e();
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: a */
    public final void mo40863a(AbstractC2220b abstractC2220b, int i, final String str) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 10018, new AbstractC2479d() { // from class: androidx.media2.session.r.9
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                if (TextUtils.isEmpty(str)) {
                    Log.w("MediaSessionStub", "setMediaItem(): Ignoring empty mediaId from ".concat(String.valueOf(c2209b)));
                    return SessionPlayer.C1352b.m43178b();
                }
                BinderC2436r.this.m40859a(str);
                return SessionPlayer.C1352b.m43178b();
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: a */
    public final void mo40862a(AbstractC2220b abstractC2220b, int i, final String str, final int i2, final int i3, final ParcelImpl parcelImpl) throws RuntimeException {
        if (abstractC2220b == null || parcelImpl == null) {
            return;
        }
        m40872a(abstractC2220b, i, 50003, (AbstractC2477b<?>) new AbstractC2477b<LibraryResult>() { // from class: androidx.media2.session.r.28
            @Override // androidx.media2.session.BinderC2436r.AbstractC2477b
            /* renamed from: a */
            public final /* synthetic */ LibraryResult mo40810a(MediaSession.C2209b c2209b) throws RemoteException {
                if (TextUtils.isEmpty(str)) {
                    Log.w("MediaSessionStub", "getChildren(): Ignoring empty parentId from ".concat(String.valueOf(c2209b)));
                    return new LibraryResult(-3);
                } else if (i2 < 0) {
                    Log.w("MediaSessionStub", "getChildren(): Ignoring negative page from ".concat(String.valueOf(c2209b)));
                    return new LibraryResult(-3);
                } else if (i3 <= 0) {
                    Log.w("MediaSessionStub", "getChildren(): Ignoring pageSize less than 1 from ".concat(String.valueOf(c2209b)));
                    return new LibraryResult(-3);
                } else {
                    MediaLibraryService.C2204a.AbstractC2206b m40858b = BinderC2436r.this.m40858b();
                    int i4 = i3;
                    C2920a.m39628a(parcelImpl);
                    return m40858b.mo40987f(i4);
                }
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: a */
    public final void mo40861a(AbstractC2220b abstractC2220b, int i, final String str, ParcelImpl parcelImpl) {
        if (abstractC2220b == null || parcelImpl == null) {
            return;
        }
        final Rating rating = (Rating) C2920a.m39628a(parcelImpl);
        m40871a(abstractC2220b, i, 40010, new AbstractC2478c<Integer>() { // from class: androidx.media2.session.r.6
            @Override // androidx.media2.session.BinderC2436r.AbstractC2478c
            /* renamed from: a */
            public final /* synthetic */ Integer mo40809a(MediaSession.C2209b c2209b) throws RemoteException {
                if (TextUtils.isEmpty(str)) {
                    Log.w("MediaSessionStub", "setRating(): Ignoring empty mediaId from ".concat(String.valueOf(c2209b)));
                    return -3;
                } else if (rating == null) {
                    Log.w("MediaSessionStub", "setRating(): Ignoring null rating from ".concat(String.valueOf(c2209b)));
                    return -3;
                } else {
                    BinderC2436r.this.f9347e.mo40925y();
                    BinderC2436r.this.f9347e.mo40924z();
                    return -6;
                }
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: a */
    public final void mo40860a(AbstractC2220b abstractC2220b, int i, final List<String> list, final ParcelImpl parcelImpl) {
        if (abstractC2220b == null || parcelImpl == null) {
            return;
        }
        m40871a(abstractC2220b, i, 10006, new AbstractC2479d() { // from class: androidx.media2.session.r.8
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                if (list == null) {
                    Log.w("MediaSessionStub", "setPlaylist(): Ignoring null playlist from ".concat(String.valueOf(c2209b)));
                    return SessionPlayer.C1352b.m43178b();
                }
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < list.size(); i2++) {
                    BinderC2436r.this.m40859a((String) list.get(i2));
                }
                return BinderC2436r.this.f9347e.mo40953a(arrayList, (MediaMetadata) C2920a.m39628a(parcelImpl));
            }
        });
    }

    /* renamed from: b */
    final MediaLibraryService.C2204a.AbstractC2206b m40858b() {
        MediaSession.AbstractC2210c abstractC2210c = this.f9347e;
        if (abstractC2210c instanceof MediaLibraryService.C2204a.AbstractC2206b) {
            return (MediaLibraryService.C2204a.AbstractC2206b) abstractC2210c;
        }
        throw new RuntimeException("Session cannot be casted to library session");
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: b */
    public final void mo40856b(AbstractC2220b abstractC2220b, int i) throws RuntimeException {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 10000, new AbstractC2479d() { // from class: androidx.media2.session.r.34
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                return BinderC2436r.this.f9347e.mo40952b();
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: b */
    public final void mo40855b(AbstractC2220b abstractC2220b, int i, final int i2) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 10007, new AbstractC2479d() { // from class: androidx.media2.session.r.17
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                if (i2 < 0) {
                    Log.w("MediaSessionStub", "skipToPlaylistItem(): Ignoring negative index from ".concat(String.valueOf(c2209b)));
                    return SessionPlayer.C1352b.m43178b();
                }
                return BinderC2436r.this.f9347e.mo40951b(i2);
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: b */
    public final void mo40854b(AbstractC2220b abstractC2220b, int i, final int i2, final int i3) throws RuntimeException {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 30001, new AbstractC2478c<Integer>() { // from class: androidx.media2.session.r.33
            @Override // androidx.media2.session.BinderC2436r.AbstractC2478c
            /* renamed from: a */
            public final /* synthetic */ Integer mo40809a(MediaSession.C2209b c2209b) throws RemoteException {
                MediaSessionCompat mo40977E = BinderC2436r.this.f9347e.mo40977E();
                if (mo40977E != null) {
                    MediaControllerCompat mediaControllerCompat = mo40977E.f106b;
                    mediaControllerCompat.f78a.mo46554b(i2, i3);
                }
                return 0;
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: b */
    public final void mo40853b(AbstractC2220b abstractC2220b, int i, final int i2, final String str) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 10015, new AbstractC2479d() { // from class: androidx.media2.session.r.15
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                if (TextUtils.isEmpty(str)) {
                    Log.w("MediaSessionStub", "replacePlaylistItem(): Ignoring empty mediaId from ".concat(String.valueOf(c2209b)));
                    return SessionPlayer.C1352b.m43178b();
                }
                BinderC2436r.this.m40859a(str);
                return SessionPlayer.C1352b.m43178b();
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: b */
    public final void mo40852b(AbstractC2220b abstractC2220b, int i, final ParcelImpl parcelImpl) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 10017, new AbstractC2479d() { // from class: androidx.media2.session.r.11
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                return BinderC2436r.this.f9347e.mo40962a((MediaMetadata) C2920a.m39628a(parcelImpl));
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: b */
    public final void mo40851b(AbstractC2220b abstractC2220b, int i, final String str) throws RuntimeException {
        m40872a(abstractC2220b, i, 50004, (AbstractC2477b<?>) new AbstractC2477b<LibraryResult>() { // from class: androidx.media2.session.r.27
            @Override // androidx.media2.session.BinderC2436r.AbstractC2477b
            /* renamed from: a */
            public final /* synthetic */ LibraryResult mo40810a(MediaSession.C2209b c2209b) throws RemoteException {
                if (TextUtils.isEmpty(str)) {
                    Log.w("MediaSessionStub", "getItem(): Ignoring empty mediaId from ".concat(String.valueOf(c2209b)));
                    return new LibraryResult(-3);
                }
                return BinderC2436r.this.m40858b().mo40984v();
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: b */
    public final void mo40850b(AbstractC2220b abstractC2220b, int i, final String str, final int i2, final int i3, final ParcelImpl parcelImpl) {
        if (abstractC2220b == null || parcelImpl == null) {
            return;
        }
        m40872a(abstractC2220b, i, 50006, (AbstractC2477b<?>) new AbstractC2477b<LibraryResult>() { // from class: androidx.media2.session.r.30
            @Override // androidx.media2.session.BinderC2436r.AbstractC2477b
            /* renamed from: a */
            public final /* synthetic */ LibraryResult mo40810a(MediaSession.C2209b c2209b) throws RemoteException {
                if (TextUtils.isEmpty(str)) {
                    Log.w("MediaSessionStub", "getSearchResult(): Ignoring empty query from ".concat(String.valueOf(c2209b)));
                    return new LibraryResult(-3);
                } else if (i2 < 0) {
                    Log.w("MediaSessionStub", "getSearchResult(): Ignoring negative page from ".concat(String.valueOf(c2209b)));
                    return new LibraryResult(-3);
                } else if (i3 <= 0) {
                    Log.w("MediaSessionStub", "getSearchResult(): Ignoring pageSize less than 1 from ".concat(String.valueOf(c2209b)));
                    return new LibraryResult(-3);
                } else {
                    MediaLibraryService.C2204a.AbstractC2206b m40858b = BinderC2436r.this.m40858b();
                    int i4 = i3;
                    C2920a.m39628a(parcelImpl);
                    return m40858b.mo40986g(i4);
                }
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: b */
    public final void mo40849b(AbstractC2220b abstractC2220b, int i, final String str, final ParcelImpl parcelImpl) {
        if (abstractC2220b == null || parcelImpl == null) {
            return;
        }
        m40872a(abstractC2220b, i, 50005, (AbstractC2477b<?>) new AbstractC2477b<Integer>() { // from class: androidx.media2.session.r.29
            @Override // androidx.media2.session.BinderC2436r.AbstractC2477b
            /* renamed from: a */
            public final /* synthetic */ Integer mo40810a(MediaSession.C2209b c2209b) throws RemoteException {
                if (TextUtils.isEmpty(str)) {
                    Log.w("MediaSessionStub", "search(): Ignoring empty query from ".concat(String.valueOf(c2209b)));
                    return -3;
                }
                BinderC2436r.this.m40858b();
                C2920a.m39628a(parcelImpl);
                return -6;
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: c */
    public final void mo40848c(AbstractC2220b abstractC2220b, int i) throws RuntimeException {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 10001, new AbstractC2479d() { // from class: androidx.media2.session.r.35
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                return BinderC2436r.this.f9347e.mo40948c();
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: c */
    public final void mo40847c(AbstractC2220b abstractC2220b, int i, final int i2) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 10011, new AbstractC2479d() { // from class: androidx.media2.session.r.20
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                return BinderC2436r.this.f9347e.mo40945d(i2);
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: c */
    public final void mo40846c(AbstractC2220b abstractC2220b, int i, final int i2, final int i3) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 10019, new AbstractC2479d() { // from class: androidx.media2.session.r.16
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                return BinderC2436r.this.f9347e.mo40967a(i2, i3);
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: c */
    public final void mo40845c(AbstractC2220b abstractC2220b, int i, final ParcelImpl parcelImpl) {
        if (abstractC2220b == null || parcelImpl == null) {
            return;
        }
        m40871a(abstractC2220b, i, 11001, new AbstractC2479d() { // from class: androidx.media2.session.r.24
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                SessionPlayer.TrackInfo trackInfo = (SessionPlayer.TrackInfo) C2920a.m39628a(parcelImpl);
                return trackInfo == null ? SessionPlayer.C1352b.m43178b() : BinderC2436r.this.f9347e.mo40961a(trackInfo);
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: c */
    public final void mo40844c(AbstractC2220b abstractC2220b, int i, final String str) {
        if (abstractC2220b == null) {
            return;
        }
        m40872a(abstractC2220b, i, 50002, (AbstractC2477b<?>) new AbstractC2477b<Integer>() { // from class: androidx.media2.session.r.32
            @Override // androidx.media2.session.BinderC2436r.AbstractC2477b
            /* renamed from: a */
            public final /* synthetic */ Integer mo40810a(MediaSession.C2209b c2209b) throws RemoteException {
                if (TextUtils.isEmpty(str)) {
                    Log.w("MediaSessionStub", "unsubscribe(): Ignoring empty parentId from ".concat(String.valueOf(c2209b)));
                    return -3;
                }
                return Integer.valueOf(BinderC2436r.this.m40858b().mo40990a(c2209b));
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: c */
    public final void mo40843c(AbstractC2220b abstractC2220b, int i, final String str, final ParcelImpl parcelImpl) {
        if (abstractC2220b == null || parcelImpl == null) {
            return;
        }
        m40872a(abstractC2220b, i, 50001, (AbstractC2477b<?>) new AbstractC2477b<Integer>() { // from class: androidx.media2.session.r.31
            @Override // androidx.media2.session.BinderC2436r.AbstractC2477b
            /* renamed from: a */
            public final /* synthetic */ Integer mo40810a(MediaSession.C2209b c2209b) throws RemoteException {
                if (TextUtils.isEmpty(str)) {
                    Log.w("MediaSessionStub", "subscribe(): Ignoring empty parentId from ".concat(String.valueOf(c2209b)));
                    return -3;
                }
                MediaLibraryService.C2204a.AbstractC2206b m40858b = BinderC2436r.this.m40858b();
                String str2 = str;
                C2920a.m39628a(parcelImpl);
                return Integer.valueOf(m40858b.mo40989a(c2209b, str2));
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: d */
    public final void mo40842d(AbstractC2220b abstractC2220b, int i) throws RuntimeException {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 10002, new AbstractC2479d() { // from class: androidx.media2.session.r.36
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                return BinderC2436r.this.f9347e.mo40970a();
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: d */
    public final void mo40841d(AbstractC2220b abstractC2220b, int i, final int i2) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 10010, new AbstractC2479d() { // from class: androidx.media2.session.r.21
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                return BinderC2436r.this.f9347e.mo40943e(i2);
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: d */
    public final void mo40840d(AbstractC2220b abstractC2220b, int i, final ParcelImpl parcelImpl) {
        if (abstractC2220b == null || parcelImpl == null) {
            return;
        }
        m40871a(abstractC2220b, i, 11002, new AbstractC2479d() { // from class: androidx.media2.session.r.25
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                SessionPlayer.TrackInfo trackInfo = (SessionPlayer.TrackInfo) C2920a.m39628a(parcelImpl);
                return trackInfo == null ? SessionPlayer.C1352b.m43178b() : BinderC2436r.this.f9347e.mo40950b(trackInfo);
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: e */
    public final void mo40839e(AbstractC2220b abstractC2220b, int i) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, PangleAdapterConfiguration.CONTENT_TYPE_ERROR, new AbstractC2478c<Integer>() { // from class: androidx.media2.session.r.37
            @Override // androidx.media2.session.BinderC2436r.AbstractC2478c
            /* renamed from: a */
            public final /* synthetic */ Integer mo40809a(MediaSession.C2209b c2209b) throws RemoteException {
                BinderC2436r.this.f9347e.mo40925y();
                BinderC2436r.this.f9347e.mo40924z();
                return -6;
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: e */
    public final void mo40838e(AbstractC2220b abstractC2220b, int i, ParcelImpl parcelImpl) {
        if (abstractC2220b == null || parcelImpl == null) {
            return;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            C2486v m41093a = this.f9345c.m41093a((C2217a<IBinder>) abstractC2220b.asBinder());
            if (m41093a == null) {
                return;
            }
            m41093a.m40777a(i, (SessionResult) C2920a.m39628a(parcelImpl));
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: f */
    public final void mo40837f(AbstractC2220b abstractC2220b, int i) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 40001, new AbstractC2478c<Integer>() { // from class: androidx.media2.session.r.38
            @Override // androidx.media2.session.BinderC2436r.AbstractC2478c
            /* renamed from: a */
            public final /* synthetic */ Integer mo40809a(MediaSession.C2209b c2209b) throws RemoteException {
                BinderC2436r.this.f9347e.mo40925y();
                BinderC2436r.this.f9347e.mo40924z();
                return -6;
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: f */
    public final void mo40836f(AbstractC2220b abstractC2220b, int i, final ParcelImpl parcelImpl) throws RuntimeException {
        if (abstractC2220b == null || parcelImpl == null) {
            return;
        }
        m40872a(abstractC2220b, i, ApiErrorData.ErrorCodes.InternalServerError.InternalError, (AbstractC2477b<?>) new AbstractC2477b<LibraryResult>() { // from class: androidx.media2.session.r.26
            @Override // androidx.media2.session.BinderC2436r.AbstractC2477b
            /* renamed from: a */
            public final /* synthetic */ LibraryResult mo40810a(MediaSession.C2209b c2209b) throws RemoteException {
                MediaLibraryService.C2204a.AbstractC2206b m40858b = BinderC2436r.this.m40858b();
                C2920a.m39628a(parcelImpl);
                return m40858b.mo40985u();
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: g */
    public final void mo40835g(AbstractC2220b abstractC2220b, int i) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 40002, new AbstractC2478c<Integer>() { // from class: androidx.media2.session.r.2
            @Override // androidx.media2.session.BinderC2436r.AbstractC2478c
            /* renamed from: a */
            public final /* synthetic */ Integer mo40809a(MediaSession.C2209b c2209b) throws RemoteException {
                BinderC2436r.this.f9347e.mo40925y();
                BinderC2436r.this.f9347e.mo40924z();
                return -6;
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: h */
    public final void mo40834h(AbstractC2220b abstractC2220b, int i) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, ApiErrorData.ErrorCodes.BadRequest.InvalidRequest, new AbstractC2478c<Integer>() { // from class: androidx.media2.session.r.3
            @Override // androidx.media2.session.BinderC2436r.AbstractC2478c
            /* renamed from: a */
            public final /* synthetic */ Integer mo40809a(MediaSession.C2209b c2209b) throws RemoteException {
                BinderC2436r.this.f9347e.mo40925y();
                BinderC2436r.this.f9347e.mo40924z();
                return -6;
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: i */
    public final void mo40833i(AbstractC2220b abstractC2220b, int i) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 10008, new AbstractC2479d() { // from class: androidx.media2.session.r.18
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                return BinderC2436r.this.f9347e.mo40931q();
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2223c
    /* renamed from: j */
    public final void mo40832j(AbstractC2220b abstractC2220b, int i) {
        if (abstractC2220b == null) {
            return;
        }
        m40871a(abstractC2220b, i, 10009, new AbstractC2479d() { // from class: androidx.media2.session.r.19
            @Override // androidx.media2.session.BinderC2436r.AbstractC2479d
            /* renamed from: a */
            public final AbstractFutureC15579a<SessionPlayer.C1352b> mo40808a(MediaSession.C2209b c2209b) {
                return BinderC2436r.this.f9347e.mo40930r();
            }
        });
    }
}
