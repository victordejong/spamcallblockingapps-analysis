package androidx.media2.session;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.p008v4.media.session.MediaSessionCompat;
import android.support.p008v4.media.session.PlaybackStateCompat;
import androidx.core.p036e.C0827a;
import androidx.media.C1329b;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.C2322k;
import androidx.media2.session.MediaController;
import androidx.media2.session.SessionCommandGroup;
import androidx.versionedparcelable.AbstractC2922c;
import java.io.Closeable;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession.class */
public class MediaSession implements Closeable {

    /* renamed from: a */
    private static final Object f8728a = new Object();

    /* renamed from: b */
    private static final HashMap<String, MediaSession> f8729b = new HashMap<>();

    /* renamed from: c */
    private final AbstractC2210c f8730c;

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$CommandButton.class */
    public static final class CommandButton implements AbstractC2922c {

        /* renamed from: a */
        SessionCommand f8731a;

        /* renamed from: b */
        int f8732b;

        /* renamed from: c */
        CharSequence f8733c;

        /* renamed from: d */
        Bundle f8734d;

        /* renamed from: e */
        boolean f8735e;

        /* renamed from: androidx.media2.session.MediaSession$CommandButton$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$CommandButton$a.class */
        public static final class C2207a {

            /* renamed from: a */
            SessionCommand f8736a;

            /* renamed from: b */
            int f8737b;

            /* renamed from: c */
            CharSequence f8738c;

            /* renamed from: d */
            Bundle f8739d;

            /* renamed from: e */
            boolean f8740e;
        }

        public CommandButton() {
        }

        public CommandButton(SessionCommand sessionCommand, int i, CharSequence charSequence, Bundle bundle, boolean z) {
            this.f8731a = sessionCommand;
            this.f8732b = i;
            this.f8733c = charSequence;
            this.f8734d = bundle;
            this.f8735e = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.session.MediaSession$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$a.class */
    public static abstract class AbstractC2208a {
        /* renamed from: a */
        public abstract void mo40830a(int i) throws RemoteException;

        /* renamed from: a */
        public abstract void mo40829a(int i, int i2, int i3, int i4, int i5) throws RemoteException;

        /* renamed from: a */
        public abstract void mo40828a(int i, long j, long j2, float f) throws RemoteException;

        /* renamed from: a */
        public abstract void mo40827a(int i, long j, long j2, int i2) throws RemoteException;

        /* renamed from: a */
        public abstract void mo40826a(int i, long j, long j2, long j3) throws RemoteException;

        /* renamed from: a */
        public abstract void mo40825a(int i, MediaItem mediaItem, int i2, int i3, int i4) throws RemoteException;

        /* renamed from: a */
        public abstract void mo40824a(int i, MediaItem mediaItem, int i2, long j, long j2, long j3) throws RemoteException;

        /* renamed from: a */
        public abstract void mo40823a(int i, MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) throws RemoteException;

        /* renamed from: a */
        public abstract void mo40822a(int i, MediaMetadata mediaMetadata) throws RemoteException;

        /* renamed from: a */
        public abstract void mo40821a(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException;

        /* renamed from: a */
        public abstract void mo40820a(int i, SessionPlayer.C1352b c1352b) throws RemoteException;

        /* renamed from: a */
        public abstract void mo40819a(int i, VideoSize videoSize) throws RemoteException;

        /* renamed from: a */
        public abstract void mo40818a(int i, LibraryResult libraryResult) throws RemoteException;

        /* renamed from: a */
        public abstract void mo40817a(int i, MediaController.PlaybackInfo playbackInfo) throws RemoteException;

        /* renamed from: a */
        public abstract void mo40816a(int i, SessionResult sessionResult) throws RemoteException;

        /* renamed from: a */
        public abstract void mo40815a(int i, List<MediaItem> list, MediaMetadata mediaMetadata, int i2, int i3, int i4) throws RemoteException;

        /* renamed from: a */
        public abstract void mo40814a(int i, List<SessionPlayer.TrackInfo> list, SessionPlayer.TrackInfo trackInfo, SessionPlayer.TrackInfo trackInfo2, SessionPlayer.TrackInfo trackInfo3, SessionPlayer.TrackInfo trackInfo4) throws RemoteException;

        /* renamed from: b */
        public abstract void mo40813b(int i) throws RemoteException;

        /* renamed from: b */
        public abstract void mo40812b(int i, int i2, int i3, int i4, int i5) throws RemoteException;

        /* renamed from: b */
        public abstract void mo40811b(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException;
    }

    /* renamed from: androidx.media2.session.MediaSession$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$b.class */
    public static final class C2209b {

        /* renamed from: a */
        final C1329b.C1331b f8741a;

        /* renamed from: b */
        final boolean f8742b;

        /* renamed from: c */
        final AbstractC2208a f8743c;

        /* renamed from: d */
        private final int f8744d;

        /* renamed from: e */
        private final Bundle f8745e;

        public C2209b(C1329b.C1331b c1331b, int i, boolean z, AbstractC2208a abstractC2208a, Bundle bundle) {
            this.f8741a = c1331b;
            this.f8744d = i;
            this.f8742b = z;
            this.f8743c = abstractC2208a;
            if (bundle == null || C2481s.m40803a(bundle)) {
                this.f8745e = null;
            } else {
                this.f8745e = bundle;
            }
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof C2209b)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            C2209b c2209b = (C2209b) obj;
            AbstractC2208a abstractC2208a = this.f8743c;
            return (abstractC2208a == null && c2209b.f8743c == null) ? this.f8741a.equals(c2209b.f8741a) : C0827a.m44414a(abstractC2208a, c2209b.f8743c);
        }

        public final int hashCode() {
            return C0827a.m44413a(this.f8743c, this.f8741a);
        }

        public final String toString() {
            return "ControllerInfo {pkg=" + this.f8741a.f4994a.mo43212a() + ", uid=" + this.f8741a.f4994a.mo43210c() + "})";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.session.MediaSession$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$c.class */
    public interface AbstractC2210c extends C2322k.AbstractC2324b, Closeable {
        /* renamed from: B */
        SessionPlayer mo40980B();

        /* renamed from: C */
        String mo40979C();

        /* renamed from: D */
        SessionToken mo40978D();

        /* renamed from: E */
        MediaSessionCompat mo40977E();

        /* renamed from: F */
        Context mo40976F();

        /* renamed from: G */
        Executor mo40975G();

        /* renamed from: H */
        boolean mo40974H();

        /* renamed from: I */
        PlaybackStateCompat mo40973I();

        /* renamed from: J */
        MediaController.PlaybackInfo mo40972J();

        /* renamed from: K */
        PendingIntent mo40971K();

        /* renamed from: y */
        AbstractC2211d mo40925y();

        /* renamed from: z */
        MediaSession mo40924z();
    }

    /* renamed from: androidx.media2.session.MediaSession$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$d.class */
    public static abstract class AbstractC2211d {
        /* renamed from: d */
        public static SessionCommandGroup m41133d() {
            return new SessionCommandGroup.C2213a().m41128a(2).m41129a();
        }

        /* renamed from: e */
        public static SessionResult m41132e() {
            return new SessionResult(-6, null);
        }
    }

    public MediaSession(Context context, String str, SessionPlayer sessionPlayer, PendingIntent pendingIntent, Executor executor, AbstractC2211d abstractC2211d, Bundle bundle) {
        synchronized (f8728a) {
            HashMap<String, MediaSession> hashMap = f8729b;
            if (hashMap.containsKey(str)) {
                throw new IllegalStateException("Session ID must be unique. ID=".concat(String.valueOf(str)));
            }
            hashMap.put(str, this);
        }
        this.f8730c = mo41134a(context, str, sessionPlayer, pendingIntent, executor, abstractC2211d, bundle);
    }

    /* renamed from: a */
    AbstractC2210c mo41134a(Context context, String str, SessionPlayer sessionPlayer, PendingIntent pendingIntent, Executor executor, AbstractC2211d abstractC2211d, Bundle bundle) {
        return new C2338n(this, context, str, sessionPlayer, pendingIntent, executor, abstractC2211d, bundle);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            synchronized (f8728a) {
                f8729b.remove(this.f8730c.mo40979C());
            }
            this.f8730c.close();
        } catch (Exception e) {
        }
    }
}
