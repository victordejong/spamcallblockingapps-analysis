package androidx.media2.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.support.v4.media.MediaMetadataCompat;
import android.util.Log;
import android.util.SparseArray;
import android.view.Surface;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.MediaParcelUtils;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.c;
import androidx.media2.session.d;
import androidx.media2.session.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import org.apache.commons.lang3.StringUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/h.class */
public class h implements MediaController.c {
    private static final SessionResult F = new SessionResult(1);

    /* renamed from: a  reason: collision with root package name */
    static final boolean f4596a = Log.isLoggable("MC2ImplBase", 3);
    SessionCommandGroup A;
    volatile c E;
    private b G;

    /* renamed from: b  reason: collision with root package name */
    final MediaController f4597b;

    /* renamed from: c  reason: collision with root package name */
    final Context f4598c;
    final SessionToken e;
    final v g;
    final j h;
    SessionToken i;
    boolean j;
    List<MediaItem> k;
    MediaMetadata l;
    int m;
    int n;
    int o;
    long p;
    long q;
    float r;
    MediaItem s;
    int w;
    long x;
    MediaController.PlaybackInfo y;
    PendingIntent z;

    /* renamed from: d  reason: collision with root package name */
    final Object f4599d = new Object();
    int t = -1;
    int u = -1;
    int v = -1;
    VideoSize B = new VideoSize(0, 0);
    List<SessionPlayer.TrackInfo> C = Collections.emptyList();
    SparseArray<SessionPlayer.TrackInfo> D = new SparseArray<>();
    final IBinder.DeathRecipient f = new IBinder.DeathRecipient() { // from class: androidx.media2.session.h.1
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            h.this.f4597b.close();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/h$a.class */
    public interface a {
        void a(c cVar, int i) throws RemoteException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/h$b.class */
    public final class b implements ServiceConnection {

        /* renamed from: b  reason: collision with root package name */
        private final Bundle f4664b;

        b(Bundle bundle) {
            this.f4664b = bundle;
        }

        @Override // android.content.ServiceConnection
        public final void onBindingDied(ComponentName componentName) {
            h.this.f4597b.close();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                try {
                    if (h.f4596a) {
                        StringBuilder sb = new StringBuilder("onServiceConnected ");
                        sb.append(componentName);
                        sb.append(StringUtils.SPACE);
                        sb.append(this);
                    }
                    if (!h.this.e.a().equals(componentName.getPackageName())) {
                        Log.wtf("MC2ImplBase", "Expected connection to " + h.this.e.a() + " but is connected to " + componentName);
                    } else {
                        d a2 = d.a.a(iBinder);
                        if (a2 == null) {
                            Log.wtf("MC2ImplBase", "Service interface is missing.");
                        } else {
                            a2.a(h.this.h, MediaParcelUtils.a(new ConnectionRequest(h.this.f4598c.getPackageName(), Process.myPid(), this.f4664b)));
                        }
                    }
                } catch (RemoteException e) {
                    Log.w("MC2ImplBase", "Service " + componentName + " has died prematurely");
                }
            } finally {
                h.this.f4597b.close();
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            if (h.f4596a) {
                Log.w("MC2ImplBase", "Session service " + componentName + " is disconnected.");
            }
            h.this.f4597b.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Context context, MediaController mediaController, SessionToken sessionToken, Bundle bundle) {
        boolean z;
        this.f4597b = mediaController;
        Objects.requireNonNull(context, "context shouldn't be null");
        Objects.requireNonNull(sessionToken, "token shouldn't be null");
        this.f4598c = context;
        v vVar = new v();
        this.g = vVar;
        this.h = new j(this, vVar);
        this.e = sessionToken;
        if (sessionToken.b() == 0) {
            this.G = null;
            z = a(bundle);
        } else {
            this.G = new b(bundle);
            z = q();
        }
        if (!z) {
            mediaController.close();
        }
    }

    private com.google.common.util.concurrent.a<SessionResult> a(int i, a aVar) {
        c b2 = b(i);
        if (b2 == null) {
            return SessionResult.a(-4);
        }
        v.a a2 = this.g.a(F);
        try {
            aVar.a(b2, a2.f);
        } catch (RemoteException e) {
            Log.w("MC2ImplBase", "Cannot connect to the service or the session is gone", e);
            a2.a((v.a) new SessionResult(-100));
        }
        return a2;
    }

    private boolean a(Bundle bundle) {
        try {
            c.a.a((IBinder) this.e.e()).a(this.h, this.g.a(), MediaParcelUtils.a(new ConnectionRequest(this.f4598c.getPackageName(), Process.myPid(), bundle)));
            return true;
        } catch (RemoteException e) {
            Log.w("MC2ImplBase", "Failed to call connection request.", e);
            return false;
        }
    }

    private c b(int i) {
        synchronized (this.f4599d) {
            if (!this.A.a(i)) {
                Log.w("MC2ImplBase", "Controller isn't allowed to call command, commandCode=".concat(String.valueOf(i)));
                return null;
            }
            return this.E;
        }
    }

    private boolean q() {
        Intent intent = new Intent("androidx.media2.session.MediaSessionService");
        intent.setClassName(this.e.a(), this.e.f4550a.d());
        synchronized (this.f4599d) {
            if (!this.f4598c.bindService(intent, this.G, 4097)) {
                Log.w("MC2ImplBase", "bind to " + this.e + " failed");
                return false;
            } else if (!f4596a) {
                return true;
            } else {
                StringBuilder sb = new StringBuilder("bind to ");
                sb.append(this.e);
                sb.append(" succeeded");
                return true;
            }
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final SessionPlayer.TrackInfo a(int i) {
        SessionPlayer.TrackInfo trackInfo;
        synchronized (this.f4599d) {
            trackInfo = this.D.get(i);
        }
        return trackInfo;
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> a(final float f) {
        return a(10004, new a() { // from class: androidx.media2.session.h.3
            @Override // androidx.media2.session.h.a
            public final void a(c cVar, int i) throws RemoteException {
                cVar.a((androidx.media2.session.b) h.this.h, i, f);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> a(final long j) {
        if (j >= 0) {
            return a(10003, new a() { // from class: androidx.media2.session.h.2
                @Override // androidx.media2.session.h.a
                public final void a(c cVar, int i) throws RemoteException {
                    cVar.a(h.this.h, i, j);
                }
            });
        }
        throw new IllegalArgumentException("position shouldn't be negative");
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> a(final Surface surface) {
        return a(11000, new a() { // from class: androidx.media2.session.h.10
            @Override // androidx.media2.session.h.a
            public final void a(c cVar, int i) throws RemoteException {
                cVar.a(h.this.h, i, surface);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> a(final SessionPlayer.TrackInfo trackInfo) {
        return a(11001, new a() { // from class: androidx.media2.session.h.7
            @Override // androidx.media2.session.h.a
            public final void a(c cVar, int i) throws RemoteException {
                cVar.c(h.this.h, i, MediaParcelUtils.a(trackInfo));
            }
        });
    }

    final void a(int i, SessionResult sessionResult) {
        c cVar;
        synchronized (this.f4599d) {
            cVar = this.E;
        }
        if (cVar != null) {
            try {
                cVar.e(this.h, i, MediaParcelUtils.a(sessionResult));
            } catch (RemoteException e) {
                Log.w("MC2ImplBase", "Error in sending");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final List<SessionPlayer.TrackInfo> list, SessionPlayer.TrackInfo trackInfo, SessionPlayer.TrackInfo trackInfo2, SessionPlayer.TrackInfo trackInfo3, SessionPlayer.TrackInfo trackInfo4) {
        synchronized (this.f4599d) {
            this.C = list;
            this.D.put(1, trackInfo);
            this.D.put(2, trackInfo2);
            this.D.put(4, trackInfo3);
            this.D.put(5, trackInfo4);
        }
        this.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.24
            @Override // androidx.media2.session.MediaController.b
            public final void run(MediaController.a aVar) {
                if (h.this.f4597b.b()) {
                    aVar.a(list);
                }
            }
        });
    }

    @Override // androidx.media2.session.MediaController.c
    public final boolean a() {
        boolean z;
        synchronized (this.f4599d) {
            z = this.E != null;
        }
        return z;
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> b() {
        return a(10000, new a() { // from class: androidx.media2.session.h.8
            @Override // androidx.media2.session.h.a
            public final void a(c cVar, int i) throws RemoteException {
                cVar.b(h.this.h, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> b(final SessionPlayer.TrackInfo trackInfo) {
        return a(11002, new a() { // from class: androidx.media2.session.h.9
            @Override // androidx.media2.session.h.a
            public final void a(c cVar, int i) throws RemoteException {
                cVar.d(h.this.h, i, MediaParcelUtils.a(trackInfo));
            }
        });
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> c() {
        return a(10001, new a() { // from class: androidx.media2.session.h.19
            @Override // androidx.media2.session.h.a
            public final void a(c cVar, int i) throws RemoteException {
                cVar.c(h.this.h, i);
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (f4596a) {
            new StringBuilder("release from ").append(this.e);
        }
        synchronized (this.f4599d) {
            c cVar = this.E;
            if (!this.j) {
                this.j = true;
                b bVar = this.G;
                if (bVar != null) {
                    this.f4598c.unbindService(bVar);
                    this.G = null;
                }
                this.E = null;
                this.h.f4712a.clear();
                if (cVar != null) {
                    int a2 = this.g.a();
                    try {
                        cVar.asBinder().unlinkToDeath(this.f, 0);
                        cVar.a(this.h, a2);
                    } catch (RemoteException e) {
                    }
                }
                this.g.close();
                this.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.4
                    @Override // androidx.media2.session.MediaController.b
                    public final void run(MediaController.a aVar) {
                    }
                });
            }
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final int d() {
        int i;
        synchronized (this.f4599d) {
            i = this.o;
        }
        return i;
    }

    @Override // androidx.media2.session.MediaController.c
    public final long e() {
        synchronized (this.f4599d) {
            MediaItem mediaItem = this.s;
            MediaMetadata d2 = mediaItem == null ? null : mediaItem.d();
            if (d2 == null || !d2.a(MediaMetadataCompat.METADATA_KEY_DURATION)) {
                return Long.MIN_VALUE;
            }
            return d2.d(MediaMetadataCompat.METADATA_KEY_DURATION);
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final long f() {
        synchronized (this.f4599d) {
            if (this.E == null) {
                Log.w("MC2ImplBase", "Session isn't active", new IllegalStateException());
                return Long.MIN_VALUE;
            } else if (this.o != 2 || this.w == 2) {
                return this.q;
            } else {
                return Math.max(0L, this.q + (this.r * ((float) (this.f4597b.g != null ? this.f4597b.g.longValue() : SystemClock.elapsedRealtime() - this.p))));
            }
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final float g() {
        synchronized (this.f4599d) {
            if (this.E == null) {
                Log.w("MC2ImplBase", "Session isn't active", new IllegalStateException());
                return BitmapDescriptorFactory.HUE_RED;
            }
            return this.r;
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final long h() {
        synchronized (this.f4599d) {
            if (this.E == null) {
                Log.w("MC2ImplBase", "Session isn't active", new IllegalStateException());
                return Long.MIN_VALUE;
            }
            return this.x;
        }
    }

    @Override // androidx.media2.session.MediaController.c
    public final MediaItem i() {
        MediaItem mediaItem;
        synchronized (this.f4599d) {
            mediaItem = this.s;
        }
        return mediaItem;
    }

    @Override // androidx.media2.session.MediaController.c
    public final int j() {
        int i;
        synchronized (this.f4599d) {
            i = this.u;
        }
        return i;
    }

    @Override // androidx.media2.session.MediaController.c
    public final int k() {
        int i;
        synchronized (this.f4599d) {
            i = this.v;
        }
        return i;
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> l() {
        return a(10008, new a() { // from class: androidx.media2.session.h.5
            @Override // androidx.media2.session.h.a
            public final void a(c cVar, int i) throws RemoteException {
                cVar.i(h.this.h, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.c
    public final com.google.common.util.concurrent.a<SessionResult> m() {
        return a(10009, new a() { // from class: androidx.media2.session.h.6
            @Override // androidx.media2.session.h.a
            public final void a(c cVar, int i) throws RemoteException {
                cVar.j(h.this.h, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.c
    public final VideoSize n() {
        VideoSize videoSize;
        synchronized (this.f4599d) {
            videoSize = this.B;
        }
        return videoSize;
    }

    @Override // androidx.media2.session.MediaController.c
    public final List<SessionPlayer.TrackInfo> o() {
        List<SessionPlayer.TrackInfo> list;
        synchronized (this.f4599d) {
            list = this.C;
        }
        return list;
    }

    @Override // androidx.media2.session.MediaController.c
    public final SessionCommandGroup p() {
        synchronized (this.f4599d) {
            if (this.E == null) {
                Log.w("MC2ImplBase", "Session isn't active", new IllegalStateException());
                return null;
            }
            return this.A;
        }
    }
}
