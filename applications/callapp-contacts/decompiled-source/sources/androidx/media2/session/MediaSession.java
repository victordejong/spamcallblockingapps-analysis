package androidx.media2.session;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media.b;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.SessionCommandGroup;
import androidx.media2.session.k;
import java.io.Closeable;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession.class */
public class MediaSession implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f4523a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<String, MediaSession> f4524b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final c f4525c;

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$CommandButton.class */
    public static final class CommandButton implements androidx.versionedparcelable.c {

        /* renamed from: a  reason: collision with root package name */
        SessionCommand f4526a;

        /* renamed from: b  reason: collision with root package name */
        int f4527b;

        /* renamed from: c  reason: collision with root package name */
        CharSequence f4528c;

        /* renamed from: d  reason: collision with root package name */
        Bundle f4529d;
        boolean e;

        /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$CommandButton$a.class */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            SessionCommand f4530a;

            /* renamed from: b  reason: collision with root package name */
            int f4531b;

            /* renamed from: c  reason: collision with root package name */
            CharSequence f4532c;

            /* renamed from: d  reason: collision with root package name */
            Bundle f4533d;
            boolean e;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public CommandButton() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public CommandButton(SessionCommand sessionCommand, int i, CharSequence charSequence, Bundle bundle, boolean z) {
            this.f4526a = sessionCommand;
            this.f4527b = i;
            this.f4528c = charSequence;
            this.f4529d = bundle;
            this.e = z;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$a.class */
    static abstract class a {
        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a(int i) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a(int i, int i2, int i3, int i4, int i5) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a(int i, long j, long j2, float f) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a(int i, long j, long j2, int i2) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a(int i, long j, long j2, long j3) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a(int i, MediaItem mediaItem, int i2, int i3, int i4) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a(int i, MediaItem mediaItem, int i2, long j, long j2, long j3) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a(int i, MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a(int i, MediaMetadata mediaMetadata) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a(int i, SessionPlayer.b bVar) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a(int i, VideoSize videoSize) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a(int i, LibraryResult libraryResult) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a(int i, MediaController.PlaybackInfo playbackInfo) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a(int i, SessionResult sessionResult) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a(int i, List<MediaItem> list, MediaMetadata mediaMetadata, int i2, int i3, int i4) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a(int i, List<SessionPlayer.TrackInfo> list, SessionPlayer.TrackInfo trackInfo, SessionPlayer.TrackInfo trackInfo2, SessionPlayer.TrackInfo trackInfo3, SessionPlayer.TrackInfo trackInfo4) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void b(int i) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void b(int i, int i2, int i3, int i4, int i5) throws RemoteException;

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void b(int i, SessionPlayer.TrackInfo trackInfo) throws RemoteException;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final b.C0073b f4534a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f4535b;

        /* renamed from: c  reason: collision with root package name */
        final a f4536c;

        /* renamed from: d  reason: collision with root package name */
        private final int f4537d;
        private final Bundle e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(b.C0073b bVar, int i, boolean z, a aVar, Bundle bundle) {
            this.f4534a = bVar;
            this.f4537d = i;
            this.f4535b = z;
            this.f4536c = aVar;
            if (bundle == null || s.a(bundle)) {
                this.e = null;
            } else {
                this.e = bundle;
            }
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            b bVar = (b) obj;
            a aVar = this.f4536c;
            return (aVar == null && bVar.f4536c == null) ? this.f4534a.equals(bVar.f4534a) : androidx.core.e.a.a(aVar, bVar.f4536c);
        }

        public final int hashCode() {
            return androidx.core.e.a.a(this.f4536c, this.f4534a);
        }

        public final String toString() {
            return "ControllerInfo {pkg=" + this.f4534a.f2711a.a() + ", uid=" + this.f4534a.f2711a.c() + "})";
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$c.class */
    interface c extends k.b, Closeable {
        SessionPlayer B();

        String C();

        SessionToken D();

        MediaSessionCompat E();

        Context F();

        Executor G();

        boolean H();

        PlaybackStateCompat I();

        MediaController.PlaybackInfo J();

        PendingIntent K();

        d y();

        MediaSession z();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$d.class */
    public static abstract class d {
        public static SessionCommandGroup d() {
            return new SessionCommandGroup.a().a(2).a();
        }

        public static SessionResult e() {
            return new SessionResult(-6, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaSession(Context context, String str, SessionPlayer sessionPlayer, PendingIntent pendingIntent, Executor executor, d dVar, Bundle bundle) {
        synchronized (f4523a) {
            HashMap<String, MediaSession> hashMap = f4524b;
            if (!hashMap.containsKey(str)) {
                hashMap.put(str, this);
            } else {
                throw new IllegalStateException("Session ID must be unique. ID=".concat(String.valueOf(str)));
            }
        }
        this.f4525c = a(context, str, sessionPlayer, pendingIntent, executor, dVar, bundle);
    }

    c a(Context context, String str, SessionPlayer sessionPlayer, PendingIntent pendingIntent, Executor executor, d dVar, Bundle bundle) {
        return new n(this, context, str, sessionPlayer, pendingIntent, executor, dVar, bundle);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            synchronized (f4523a) {
                f4524b.remove(this.f4525c.C());
            }
            this.f4525c.close();
        } catch (Exception e) {
        }
    }
}
