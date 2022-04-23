package androidx.media2.session;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import android.view.Surface;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.SessionToken;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController.class */
public class MediaController implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final List<androidx.core.e.b<a, Executor>> f4502a;

    /* renamed from: b  reason: collision with root package name */
    final Object f4503b;

    /* renamed from: c  reason: collision with root package name */
    c f4504c;

    /* renamed from: d  reason: collision with root package name */
    boolean f4505d;
    final a e;
    final Executor f;
    Long g;

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$PlaybackInfo.class */
    public static final class PlaybackInfo implements androidx.versionedparcelable.c {

        /* renamed from: a  reason: collision with root package name */
        int f4511a;

        /* renamed from: b  reason: collision with root package name */
        int f4512b;

        /* renamed from: c  reason: collision with root package name */
        int f4513c;

        /* renamed from: d  reason: collision with root package name */
        int f4514d;
        AudioAttributesCompat e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public PlaybackInfo() {
        }

        PlaybackInfo(int i, AudioAttributesCompat audioAttributesCompat, int i2, int i3, int i4) {
            this.f4511a = i;
            this.e = audioAttributesCompat;
            this.f4512b = i2;
            this.f4513c = i3;
            this.f4514d = i4;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static PlaybackInfo a(int i, AudioAttributesCompat audioAttributesCompat, int i2, int i3, int i4) {
            return new PlaybackInfo(i, audioAttributesCompat, i2, i3, i4);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof PlaybackInfo)) {
                return false;
            }
            PlaybackInfo playbackInfo = (PlaybackInfo) obj;
            return this.f4511a == playbackInfo.f4511a && this.f4512b == playbackInfo.f4512b && this.f4513c == playbackInfo.f4513c && this.f4514d == playbackInfo.f4514d && androidx.core.e.a.a(this.e, playbackInfo.e);
        }

        public final int hashCode() {
            return androidx.core.e.a.a(Integer.valueOf(this.f4511a), Integer.valueOf(this.f4512b), Integer.valueOf(this.f4513c), Integer.valueOf(this.f4514d), this.e);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$a.class */
    public static abstract class a {
        public static SessionResult b() {
            return new SessionResult(-6);
        }

        public void a() {
        }

        public void a(float f) {
        }

        public void a(int i) {
        }

        public void a(long j) {
        }

        public void a(MediaItem mediaItem) {
        }

        public void a(SessionPlayer.TrackInfo trackInfo) {
        }

        public void a(SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
        }

        public void a(VideoSize videoSize) {
        }

        public void a(SessionCommandGroup sessionCommandGroup) {
        }

        public void a(List<SessionPlayer.TrackInfo> list) {
        }

        public void a(List<MediaItem> list, MediaMetadata mediaMetadata) {
        }

        public void b(SessionPlayer.TrackInfo trackInfo) {
        }

        public void c() {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$b.class */
    public interface b {
        void run(a aVar);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaController$c.class */
    public interface c extends Closeable {
        SessionPlayer.TrackInfo a(int i);

        com.google.common.util.concurrent.a<SessionResult> a(float f);

        com.google.common.util.concurrent.a<SessionResult> a(long j);

        com.google.common.util.concurrent.a<SessionResult> a(Surface surface);

        com.google.common.util.concurrent.a<SessionResult> a(SessionPlayer.TrackInfo trackInfo);

        boolean a();

        com.google.common.util.concurrent.a<SessionResult> b();

        com.google.common.util.concurrent.a<SessionResult> b(SessionPlayer.TrackInfo trackInfo);

        com.google.common.util.concurrent.a<SessionResult> c();

        int d();

        long e();

        long f();

        float g();

        long h();

        MediaItem i();

        int j();

        int k();

        com.google.common.util.concurrent.a<SessionResult> l();

        com.google.common.util.concurrent.a<SessionResult> m();

        VideoSize n();

        List<SessionPlayer.TrackInfo> o();

        SessionCommandGroup p();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaController(final Context context, MediaSessionCompat.Token token, final Bundle bundle, Executor executor, a aVar) {
        this.f4503b = new Object();
        this.f4502a = new ArrayList();
        Objects.requireNonNull(context, "context shouldn't be null");
        Objects.requireNonNull(token, "token shouldn't be null");
        this.e = aVar;
        this.f = executor;
        SessionToken.a(context, token, new SessionToken.a() { // from class: androidx.media2.session._$$Lambda$MediaController$v61gmz4WmEkdr6ZHTFodXPcO2L8
            @Override // androidx.media2.session.SessionToken.a
            public final void onSessionTokenCreated(MediaSessionCompat.Token token2, SessionToken sessionToken) {
                MediaController.this.a(context, bundle, token2, sessionToken);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaController(Context context, SessionToken sessionToken, Bundle bundle, Executor executor, a aVar) {
        Object obj = new Object();
        this.f4503b = obj;
        this.f4502a = new ArrayList();
        Objects.requireNonNull(context, "context shouldn't be null");
        Objects.requireNonNull(sessionToken, "token shouldn't be null");
        this.e = aVar;
        this.f = executor;
        synchronized (obj) {
            this.f4504c = a(context, sessionToken, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context, Bundle bundle, MediaSessionCompat.Token token, SessionToken sessionToken) {
        boolean z;
        synchronized (this.f4503b) {
            z = this.f4505d;
            if (!z) {
                this.f4504c = a(context, sessionToken, bundle);
            }
        }
        if (z) {
            b(new b() { // from class: androidx.media2.session._$$Lambda$MediaController$pmI3LxPWPMnxlQTUrm7yyqt9_Z0
                @Override // androidx.media2.session.MediaController.b
                public final void run(MediaController.a aVar) {
                    MediaController.this.b(aVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(a aVar) {
    }

    public static com.google.common.util.concurrent.a<SessionResult> n() {
        return SessionResult.a(-100);
    }

    private List<androidx.core.e.b<a, Executor>> o() {
        ArrayList arrayList;
        synchronized (this.f4503b) {
            arrayList = new ArrayList(this.f4502a);
        }
        return arrayList;
    }

    public final SessionPlayer.TrackInfo a(int i) {
        if (b()) {
            return a().a(i);
        }
        return null;
    }

    public c a() {
        c cVar;
        synchronized (this.f4503b) {
            cVar = this.f4504c;
        }
        return cVar;
    }

    c a(Context context, SessionToken sessionToken, Bundle bundle) {
        return sessionToken.d() ? new i(context, this, sessionToken) : new h(context, this, sessionToken, bundle);
    }

    public final com.google.common.util.concurrent.a<SessionResult> a(long j) {
        return b() ? a().a(j) : SessionResult.a(-100);
    }

    public final com.google.common.util.concurrent.a<SessionResult> a(SessionPlayer.TrackInfo trackInfo) {
        Objects.requireNonNull(trackInfo, "TrackInfo shouldn't be null");
        return b() ? a().a(trackInfo) : SessionResult.a(-100);
    }

    public final void a(a aVar) {
        Objects.requireNonNull(aVar, "callback shouldn't be null");
        boolean z = false;
        synchronized (this.f4503b) {
            int size = this.f4502a.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                } else if (this.f4502a.get(size).f1889a == aVar) {
                    this.f4502a.remove(size);
                    z = true;
                    break;
                } else {
                    size--;
                }
            }
        }
        if (!z) {
            Log.w("MediaController", "unregisterExtraCallback: no such callback found");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final b bVar) {
        Executor executor;
        if (this.e != null && (executor = this.f) != null) {
            executor.execute(new Runnable() { // from class: androidx.media2.session.MediaController.1
                @Override // java.lang.Runnable
                public final void run() {
                    bVar.run(MediaController.this.e);
                }
            });
        }
    }

    public final void a(Executor executor, a aVar) {
        Objects.requireNonNull(executor, "executor shouldn't be null");
        Objects.requireNonNull(aVar, "callback shouldn't be null");
        boolean z = false;
        synchronized (this.f4503b) {
            Iterator<androidx.core.e.b<a, Executor>> it2 = this.f4502a.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (it2.next().f1889a == aVar) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (!z) {
                this.f4502a.add(new androidx.core.e.b<>(aVar, executor));
            }
        }
        if (z) {
            Log.w("MediaController", "registerExtraCallback: the callback already exists");
        }
    }

    public final void b(final b bVar) {
        a(bVar);
        for (androidx.core.e.b<a, Executor> bVar2 : o()) {
            final a aVar = bVar2.f1889a;
            Executor executor = bVar2.f1890b;
            if (aVar == null) {
                Log.e("MediaController", "notifyAllControllerCallbacks: mExtraControllerCallbacks contains a null ControllerCallback! Ignoring.");
            } else if (executor == null) {
                Log.e("MediaController", "notifyAllControllerCallbacks: mExtraControllerCallbacks contains a null Executor! Ignoring.");
            } else {
                executor.execute(new Runnable() { // from class: androidx.media2.session.MediaController.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        bVar.run(aVar);
                    }
                });
            }
        }
    }

    public final boolean b() {
        c a2 = a();
        return a2 != null && a2.a();
    }

    public final com.google.common.util.concurrent.a<SessionResult> c() {
        return b() ? a().b() : SessionResult.a(-100);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            synchronized (this.f4503b) {
                if (!this.f4505d) {
                    this.f4505d = true;
                    c cVar = this.f4504c;
                    if (cVar != null) {
                        cVar.close();
                    }
                }
            }
        } catch (Exception e) {
        }
    }

    public final com.google.common.util.concurrent.a<SessionResult> d() {
        return b() ? a().c() : SessionResult.a(-100);
    }

    public final int e() {
        if (b()) {
            return a().d();
        }
        return 0;
    }

    public final long f() {
        if (b()) {
            return a().e();
        }
        return Long.MIN_VALUE;
    }

    public final long g() {
        if (b()) {
            return a().f();
        }
        return Long.MIN_VALUE;
    }

    public final long h() {
        if (b()) {
            return a().h();
        }
        return Long.MIN_VALUE;
    }

    public final MediaItem i() {
        if (b()) {
            return a().i();
        }
        return null;
    }

    public final int j() {
        if (b()) {
            return a().j();
        }
        return -1;
    }

    public final int k() {
        if (b()) {
            return a().k();
        }
        return -1;
    }

    public final VideoSize l() {
        return b() ? a().n() : new VideoSize(0, 0);
    }

    public final List<SessionPlayer.TrackInfo> m() {
        return b() ? a().o() : Collections.emptyList();
    }
}
