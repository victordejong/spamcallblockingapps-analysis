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
import android.support.p008v4.media.MediaMetadataCompat;
import android.util.Log;
import android.util.SparseArray;
import android.view.Surface;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.MediaParcelUtils;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.VideoSize;
import androidx.media2.session.AbstractC2223c;
import androidx.media2.session.AbstractC2226d;
import androidx.media2.session.C2486v;
import androidx.media2.session.MediaController;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.common.util.concurrent.AbstractFutureC15579a;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import org.apache.commons.lang3.StringUtils;
/* renamed from: androidx.media2.session.h */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/h.class */
public class C2238h implements MediaController.AbstractC2202c {

    /* renamed from: F */
    private static final SessionResult f8826F = new SessionResult(1);

    /* renamed from: a */
    static final boolean f8827a = Log.isLoggable("MC2ImplBase", 3);

    /* renamed from: A */
    SessionCommandGroup f8828A;

    /* renamed from: E */
    volatile AbstractC2223c f8832E;

    /* renamed from: G */
    private ServiceConnectionC2271b f8833G;

    /* renamed from: b */
    final MediaController f8834b;

    /* renamed from: c */
    final Context f8835c;

    /* renamed from: e */
    final SessionToken f8837e;

    /* renamed from: g */
    final C2486v f8839g;

    /* renamed from: h */
    final BinderC2296j f8840h;

    /* renamed from: i */
    SessionToken f8841i;

    /* renamed from: j */
    boolean f8842j;

    /* renamed from: k */
    List<MediaItem> f8843k;

    /* renamed from: l */
    MediaMetadata f8844l;

    /* renamed from: m */
    int f8845m;

    /* renamed from: n */
    int f8846n;

    /* renamed from: o */
    int f8847o;

    /* renamed from: p */
    long f8848p;

    /* renamed from: q */
    long f8849q;

    /* renamed from: r */
    float f8850r;

    /* renamed from: s */
    MediaItem f8851s;

    /* renamed from: w */
    int f8855w;

    /* renamed from: x */
    long f8856x;

    /* renamed from: y */
    MediaController.PlaybackInfo f8857y;

    /* renamed from: z */
    PendingIntent f8858z;

    /* renamed from: d */
    final Object f8836d = new Object();

    /* renamed from: t */
    int f8852t = -1;

    /* renamed from: u */
    int f8853u = -1;

    /* renamed from: v */
    int f8854v = -1;

    /* renamed from: B */
    VideoSize f8829B = new VideoSize(0, 0);

    /* renamed from: C */
    List<SessionPlayer.TrackInfo> f8830C = Collections.emptyList();

    /* renamed from: D */
    SparseArray<SessionPlayer.TrackInfo> f8831D = new SparseArray<>();

    /* renamed from: f */
    final IBinder.DeathRecipient f8838f = new IBinder.DeathRecipient() { // from class: androidx.media2.session.h.1
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            C2238h.this.f8834b.close();
        }
    };

    @FunctionalInterface
    /* renamed from: androidx.media2.session.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/h$a.class */
    public interface AbstractC2270a {
        /* renamed from: a */
        void mo41072a(AbstractC2223c abstractC2223c, int i) throws RemoteException;
    }

    /* renamed from: androidx.media2.session.h$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/h$b.class */
    public final class ServiceConnectionC2271b implements ServiceConnection {

        /* renamed from: b */
        private final Bundle f8923b;

        ServiceConnectionC2271b(Bundle bundle) {
            C2238h.this = r4;
            this.f8923b = bundle;
        }

        @Override // android.content.ServiceConnection
        public final void onBindingDied(ComponentName componentName) {
            C2238h.this.f8834b.close();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                try {
                    if (C2238h.f8827a) {
                        StringBuilder sb = new StringBuilder("onServiceConnected ");
                        sb.append(componentName);
                        sb.append(StringUtils.SPACE);
                        sb.append(this);
                    }
                    if (!C2238h.this.f8837e.m41115a().equals(componentName.getPackageName())) {
                        Log.wtf("MC2ImplBase", "Expected connection to " + C2238h.this.f8837e.m41115a() + " but is connected to " + componentName);
                    } else {
                        AbstractC2226d m41083a = AbstractC2226d.AbstractBinderC2227a.m41083a(iBinder);
                        if (m41083a != null) {
                            m41083a.mo41082a(C2238h.this.f8840h, MediaParcelUtils.m43186a(new ConnectionRequest(C2238h.this.f8835c.getPackageName(), Process.myPid(), this.f8923b)));
                            return;
                        }
                        Log.wtf("MC2ImplBase", "Service interface is missing.");
                    }
                } catch (RemoteException e) {
                    Log.w("MC2ImplBase", "Service " + componentName + " has died prematurely");
                }
            } finally {
                C2238h.this.f8834b.close();
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            if (C2238h.f8827a) {
                Log.w("MC2ImplBase", "Session service " + componentName + " is disconnected.");
            }
            C2238h.this.f8834b.close();
        }
    }

    public C2238h(Context context, MediaController mediaController, SessionToken sessionToken, Bundle bundle) {
        boolean z;
        this.f8834b = mediaController;
        Objects.requireNonNull(context, "context shouldn't be null");
        Objects.requireNonNull(sessionToken, "token shouldn't be null");
        this.f8835c = context;
        C2486v c2486v = new C2486v();
        this.f8839g = c2486v;
        this.f8840h = new BinderC2296j(this, c2486v);
        this.f8837e = sessionToken;
        if (sessionToken.m41110b() == 0) {
            this.f8833G = null;
            z = m41076a(bundle);
        } else {
            this.f8833G = new ServiceConnectionC2271b(bundle);
            z = m41073q();
        }
        if (!z) {
            mediaController.close();
        }
    }

    /* renamed from: a */
    private AbstractFutureC15579a<SessionResult> m41077a(int i, AbstractC2270a abstractC2270a) {
        AbstractC2223c m41074b = m41074b(i);
        if (m41074b != null) {
            C2486v.C2487a m40776a = this.f8839g.m40776a(f8826F);
            try {
                abstractC2270a.mo41072a(m41074b, m40776a.f9450f);
            } catch (RemoteException e) {
                Log.w("MC2ImplBase", "Cannot connect to the service or the session is gone", e);
                m40776a.mo40774a((C2486v.C2487a) new SessionResult(-100));
            }
            return m40776a;
        }
        return SessionResult.m41117a(-4);
    }

    /* renamed from: a */
    private boolean m41076a(Bundle bundle) {
        try {
            AbstractC2223c.AbstractBinderC2224a.m41085a((IBinder) this.f8837e.m41107e()).mo40865a(this.f8840h, this.f8839g.m40778a(), MediaParcelUtils.m43186a(new ConnectionRequest(this.f8835c.getPackageName(), Process.myPid(), bundle)));
            return true;
        } catch (RemoteException e) {
            Log.w("MC2ImplBase", "Failed to call connection request.", e);
            return false;
        }
    }

    /* renamed from: b */
    private AbstractC2223c m41074b(int i) {
        synchronized (this.f8836d) {
            if (!this.f8828A.m41130a(i)) {
                Log.w("MC2ImplBase", "Controller isn't allowed to call command, commandCode=".concat(String.valueOf(i)));
                return null;
            }
            return this.f8832E;
        }
    }

    /* renamed from: q */
    private boolean m41073q() {
        Intent intent = new Intent("androidx.media2.session.MediaSessionService");
        intent.setClassName(this.f8837e.m41115a(), this.f8837e.f8763a.mo41103d());
        synchronized (this.f8836d) {
            if (!this.f8835c.bindService(intent, this.f8833G, 4097)) {
                Log.w("MC2ImplBase", "bind to " + this.f8837e + " failed");
                return false;
            } else if (!f8827a) {
                return true;
            } else {
                StringBuilder sb = new StringBuilder("bind to ");
                sb.append(this.f8837e);
                sb.append(" succeeded");
                return true;
            }
        }
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: a */
    public final SessionPlayer.TrackInfo mo41069a(int i) {
        SessionPlayer.TrackInfo trackInfo;
        synchronized (this.f8836d) {
            trackInfo = this.f8831D.get(i);
        }
        return trackInfo;
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionResult> mo41070a(final float f) {
        return m41077a(10004, new AbstractC2270a() { // from class: androidx.media2.session.h.3
            @Override // androidx.media2.session.C2238h.AbstractC2270a
            /* renamed from: a */
            public final void mo41072a(AbstractC2223c abstractC2223c, int i) throws RemoteException {
                abstractC2223c.mo40875a((AbstractC2220b) C2238h.this.f8840h, i, f);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionResult> mo41068a(final long j) {
        if (j >= 0) {
            return m41077a(10003, new AbstractC2270a() { // from class: androidx.media2.session.h.2
                @Override // androidx.media2.session.C2238h.AbstractC2270a
                /* renamed from: a */
                public final void mo41072a(AbstractC2223c abstractC2223c, int i) throws RemoteException {
                    abstractC2223c.mo40869a(C2238h.this.f8840h, i, j);
                }
            });
        }
        throw new IllegalArgumentException("position shouldn't be negative");
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionResult> mo41065a(final Surface surface) {
        return m41077a(11000, new AbstractC2270a() { // from class: androidx.media2.session.h.10
            @Override // androidx.media2.session.C2238h.AbstractC2270a
            /* renamed from: a */
            public final void mo41072a(AbstractC2223c abstractC2223c, int i) throws RemoteException {
                abstractC2223c.mo40867a(C2238h.this.f8840h, i, surface);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: a */
    public final AbstractFutureC15579a<SessionResult> mo41064a(final SessionPlayer.TrackInfo trackInfo) {
        return m41077a(11001, new AbstractC2270a() { // from class: androidx.media2.session.h.7
            @Override // androidx.media2.session.C2238h.AbstractC2270a
            /* renamed from: a */
            public final void mo41072a(AbstractC2223c abstractC2223c, int i) throws RemoteException {
                abstractC2223c.mo40845c(C2238h.this.f8840h, i, MediaParcelUtils.m43186a(trackInfo));
            }
        });
    }

    /* renamed from: a */
    final void m41078a(int i, SessionResult sessionResult) {
        AbstractC2223c abstractC2223c;
        synchronized (this.f8836d) {
            abstractC2223c = this.f8832E;
        }
        if (abstractC2223c == null) {
            return;
        }
        try {
            abstractC2223c.mo40838e(this.f8840h, i, MediaParcelUtils.m43186a(sessionResult));
        } catch (RemoteException e) {
            Log.w("MC2ImplBase", "Error in sending");
        }
    }

    /* renamed from: a */
    public final void m41075a(final List<SessionPlayer.TrackInfo> list, SessionPlayer.TrackInfo trackInfo, SessionPlayer.TrackInfo trackInfo2, SessionPlayer.TrackInfo trackInfo3, SessionPlayer.TrackInfo trackInfo4) {
        synchronized (this.f8836d) {
            this.f8830C = list;
            this.f8831D.put(1, trackInfo);
            this.f8831D.put(2, trackInfo2);
            this.f8831D.put(4, trackInfo3);
            this.f8831D.put(5, trackInfo4);
        }
        this.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.24
            @Override // androidx.media2.session.MediaController.AbstractC2201b
            public final void run(MediaController.AbstractC2200a abstractC2200a) {
                if (!C2238h.this.f8834b.m41157b()) {
                    return;
                }
                abstractC2200a.mo40623a(list);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: a */
    public final boolean mo41071a() {
        boolean z;
        synchronized (this.f8836d) {
            z = this.f8832E != null;
        }
        return z;
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: b */
    public final AbstractFutureC15579a<SessionResult> mo41063b() {
        return m41077a(10000, new AbstractC2270a() { // from class: androidx.media2.session.h.8
            @Override // androidx.media2.session.C2238h.AbstractC2270a
            /* renamed from: a */
            public final void mo41072a(AbstractC2223c abstractC2223c, int i) throws RemoteException {
                abstractC2223c.mo40856b(C2238h.this.f8840h, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: b */
    public final AbstractFutureC15579a<SessionResult> mo41061b(final SessionPlayer.TrackInfo trackInfo) {
        return m41077a(11002, new AbstractC2270a() { // from class: androidx.media2.session.h.9
            @Override // androidx.media2.session.C2238h.AbstractC2270a
            /* renamed from: a */
            public final void mo41072a(AbstractC2223c abstractC2223c, int i) throws RemoteException {
                abstractC2223c.mo40840d(C2238h.this.f8840h, i, MediaParcelUtils.m43186a(trackInfo));
            }
        });
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: c */
    public final AbstractFutureC15579a<SessionResult> mo41060c() {
        return m41077a(10001, new AbstractC2270a() { // from class: androidx.media2.session.h.19
            @Override // androidx.media2.session.C2238h.AbstractC2270a
            /* renamed from: a */
            public final void mo41072a(AbstractC2223c abstractC2223c, int i) throws RemoteException {
                abstractC2223c.mo40848c(C2238h.this.f8840h, i);
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (f8827a) {
            new StringBuilder("release from ").append(this.f8837e);
        }
        synchronized (this.f8836d) {
            AbstractC2223c abstractC2223c = this.f8832E;
            if (this.f8842j) {
                return;
            }
            this.f8842j = true;
            ServiceConnectionC2271b serviceConnectionC2271b = this.f8833G;
            if (serviceConnectionC2271b != null) {
                this.f8835c.unbindService(serviceConnectionC2271b);
                this.f8833G = null;
            }
            this.f8832E = null;
            this.f8840h.f8995a.clear();
            if (abstractC2223c != null) {
                int m40778a = this.f8839g.m40778a();
                try {
                    abstractC2223c.asBinder().unlinkToDeath(this.f8838f, 0);
                    abstractC2223c.mo40876a(this.f8840h, m40778a);
                } catch (RemoteException e) {
                }
            }
            this.f8839g.close();
            this.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.4
                @Override // androidx.media2.session.MediaController.AbstractC2201b
                public final void run(MediaController.AbstractC2200a abstractC2200a) {
                }
            });
        }
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: d */
    public final int mo41059d() {
        int i;
        synchronized (this.f8836d) {
            i = this.f8847o;
        }
        return i;
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: e */
    public final long mo41058e() {
        synchronized (this.f8836d) {
            MediaItem mediaItem = this.f8851s;
            MediaMetadata m43200d = mediaItem == null ? null : mediaItem.m43200d();
            if (m43200d == null || !m43200d.m43197a(MediaMetadataCompat.METADATA_KEY_DURATION)) {
                return Long.MIN_VALUE;
            }
            return m43200d.m43194d(MediaMetadataCompat.METADATA_KEY_DURATION);
        }
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: f */
    public final long mo41057f() {
        synchronized (this.f8836d) {
            if (this.f8832E == null) {
                Log.w("MC2ImplBase", "Session isn't active", new IllegalStateException());
                return Long.MIN_VALUE;
            } else if (this.f8847o != 2 || this.f8855w == 2) {
                return this.f8849q;
            } else {
                return Math.max(0L, this.f8849q + (this.f8850r * (this.f8834b.f8709g != null ? this.f8834b.f8709g.longValue() : SystemClock.elapsedRealtime() - this.f8848p)));
            }
        }
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: g */
    public final float mo41056g() {
        synchronized (this.f8836d) {
            if (this.f8832E == null) {
                Log.w("MC2ImplBase", "Session isn't active", new IllegalStateException());
                return BitmapDescriptorFactory.HUE_RED;
            }
            return this.f8850r;
        }
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: h */
    public final long mo41055h() {
        synchronized (this.f8836d) {
            if (this.f8832E == null) {
                Log.w("MC2ImplBase", "Session isn't active", new IllegalStateException());
                return Long.MIN_VALUE;
            }
            return this.f8856x;
        }
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: i */
    public final MediaItem mo41054i() {
        MediaItem mediaItem;
        synchronized (this.f8836d) {
            mediaItem = this.f8851s;
        }
        return mediaItem;
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: j */
    public final int mo41053j() {
        int i;
        synchronized (this.f8836d) {
            i = this.f8853u;
        }
        return i;
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: k */
    public final int mo41052k() {
        int i;
        synchronized (this.f8836d) {
            i = this.f8854v;
        }
        return i;
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: l */
    public final AbstractFutureC15579a<SessionResult> mo41051l() {
        return m41077a(10008, new AbstractC2270a() { // from class: androidx.media2.session.h.5
            @Override // androidx.media2.session.C2238h.AbstractC2270a
            /* renamed from: a */
            public final void mo41072a(AbstractC2223c abstractC2223c, int i) throws RemoteException {
                abstractC2223c.mo40833i(C2238h.this.f8840h, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: m */
    public final AbstractFutureC15579a<SessionResult> mo41050m() {
        return m41077a(10009, new AbstractC2270a() { // from class: androidx.media2.session.h.6
            @Override // androidx.media2.session.C2238h.AbstractC2270a
            /* renamed from: a */
            public final void mo41072a(AbstractC2223c abstractC2223c, int i) throws RemoteException {
                abstractC2223c.mo40832j(C2238h.this.f8840h, i);
            }
        });
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: n */
    public final VideoSize mo41049n() {
        VideoSize videoSize;
        synchronized (this.f8836d) {
            videoSize = this.f8829B;
        }
        return videoSize;
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: o */
    public final List<SessionPlayer.TrackInfo> mo41048o() {
        List<SessionPlayer.TrackInfo> list;
        synchronized (this.f8836d) {
            list = this.f8830C;
        }
        return list;
    }

    @Override // androidx.media2.session.MediaController.AbstractC2202c
    /* renamed from: p */
    public final SessionCommandGroup mo41047p() {
        synchronized (this.f8836d) {
            if (this.f8832E == null) {
                Log.w("MC2ImplBase", "Session isn't active", new IllegalStateException());
                return null;
            }
            return this.f8828A;
        }
    }
}
