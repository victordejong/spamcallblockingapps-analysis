package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.C5543v;
import com.google.android.exoplayer2.drm.AbstractC5043m;
import com.google.android.exoplayer2.drm.AbstractC5044n;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.upstream.AbstractC5493u;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5519k;
import com.google.android.exoplayer2.util.C5526o;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
@TargetApi(18)
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession.class */
public class DefaultDrmSession<T extends AbstractC5043m> implements DrmSession<T> {

    /* renamed from: a */
    public final List<DrmInitData.SchemeData> f15651a;

    /* renamed from: b */
    private final AbstractC5044n<T> f15652b;

    /* renamed from: c */
    private final AbstractC5019a<T> f15653c;

    /* renamed from: d */
    private final AbstractC5020b<T> f15654d;

    /* renamed from: e */
    private final int f15655e;

    /* renamed from: f */
    private final boolean f15656f;

    /* renamed from: g */
    private final boolean f15657g;

    /* renamed from: h */
    private final HashMap<String, String> f15658h;

    /* renamed from: i */
    private final C5519k<AbstractC5037h> f15659i;

    /* renamed from: j */
    private final AbstractC5493u f15660j;

    /* renamed from: k */
    final AbstractC5050p f15661k;

    /* renamed from: l */
    final UUID f15662l;

    /* renamed from: m */
    final DefaultDrmSession<T>.HandlerC5023e f15663m;

    /* renamed from: n */
    private int f15664n;

    /* renamed from: o */
    private int f15665o;

    /* renamed from: p */
    private HandlerThread f15666p;

    /* renamed from: q */
    private DefaultDrmSession<T>.HandlerC5021c f15667q;

    /* renamed from: r */
    private T f15668r;

    /* renamed from: s */
    private DrmSession.DrmSessionException f15669s;

    /* renamed from: t */
    private byte[] f15670t;

    /* renamed from: u */
    private byte[] f15671u;

    /* renamed from: v */
    private AbstractC5044n.C5045a f15672v;

    /* renamed from: w */
    private AbstractC5044n.C5048d f15673w;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$UnexpectedDrmSessionException.class */
    public static final class UnexpectedDrmSessionException extends IOException {
        public UnexpectedDrmSessionException(Throwable th) {
            super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSession$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$a.class */
    public interface AbstractC5019a<T extends AbstractC5043m> {
        /* renamed from: a */
        void m20814a(DefaultDrmSession<T> defaultDrmSession);

        /* renamed from: b */
        void m20813b(Exception exc);

        /* renamed from: c */
        void m20812c();
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSession$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$b.class */
    public interface AbstractC5020b<T extends AbstractC5043m> {
        /* renamed from: a */
        void mo20786a(DefaultDrmSession<T> defaultDrmSession);
    }

    @SuppressLint({"HandlerLeak"})
    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSession$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$c.class */
    public class HandlerC5021c extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC5021c(Looper looper) {
            super(looper);
            DefaultDrmSession.this = r4;
        }

        /* renamed from: a */
        private boolean m20811a(Message message, Exception exc) {
            C5022d c5022d = (C5022d) message.obj;
            if (!c5022d.f15675a) {
                return false;
            }
            int i = c5022d.f15678d + 1;
            c5022d.f15678d = i;
            if (i > DefaultDrmSession.this.f15660j.mo18958c(3)) {
                return false;
            }
            long mo18960a = DefaultDrmSession.this.f15660j.mo18960a(3, SystemClock.elapsedRealtime() - c5022d.f15676b, exc instanceof IOException ? (IOException) exc : new UnexpectedDrmSessionException(exc), c5022d.f15678d);
            if (mo18960a == -9223372036854775807L) {
                return false;
            }
            sendMessageDelayed(Message.obtain(message), mo18960a);
            return true;
        }

        /* renamed from: b */
        void m20810b(int i, Object obj, boolean z) {
            obtainMessage(i, new C5022d(z, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr;
            C5022d c5022d = (C5022d) message.obj;
            try {
                int i = message.what;
                if (i == 0) {
                    DefaultDrmSession defaultDrmSession = DefaultDrmSession.this;
                    bArr = defaultDrmSession.f15661k.m20749b(defaultDrmSession.f15662l, (AbstractC5044n.C5048d) c5022d.f15677c);
                } else if (i != 1) {
                    throw new RuntimeException();
                } else {
                    DefaultDrmSession defaultDrmSession2 = DefaultDrmSession.this;
                    bArr = defaultDrmSession2.f15661k.m20750a(defaultDrmSession2.f15662l, (AbstractC5044n.C5045a) c5022d.f15677c);
                }
            } catch (Exception e) {
                bArr = e;
                if (m20811a(message, e)) {
                    return;
                }
            }
            DefaultDrmSession.this.f15663m.obtainMessage(message.what, Pair.create(c5022d.f15677c, bArr)).sendToTarget();
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSession$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$d.class */
    public static final class C5022d {

        /* renamed from: a */
        public final boolean f15675a;

        /* renamed from: b */
        public final long f15676b;

        /* renamed from: c */
        public final Object f15677c;

        /* renamed from: d */
        public int f15678d;

        public C5022d(boolean z, long j, Object obj) {
            this.f15675a = z;
            this.f15676b = j;
            this.f15677c = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"HandlerLeak"})
    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSession$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$e.class */
    public class HandlerC5023e extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC5023e(Looper looper) {
            super(looper);
            DefaultDrmSession.this = r4;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i = message.what;
            if (i == 0) {
                DefaultDrmSession.this.m20819t(obj, obj2);
            } else if (i != 1) {
            } else {
                DefaultDrmSession.this.m20823p(obj, obj2);
            }
        }
    }

    public DefaultDrmSession(UUID uuid, AbstractC5044n<T> abstractC5044n, AbstractC5019a<T> abstractC5019a, AbstractC5020b<T> abstractC5020b, List<DrmInitData.SchemeData> list, int i, boolean z, boolean z2, byte[] bArr, HashMap<String, String> hashMap, AbstractC5050p abstractC5050p, Looper looper, C5519k<AbstractC5037h> c5519k, AbstractC5493u abstractC5493u) {
        if (i == 1 || i == 3) {
            C5508e.m18911e(bArr);
        }
        this.f15662l = uuid;
        this.f15653c = abstractC5019a;
        this.f15654d = abstractC5020b;
        this.f15652b = abstractC5044n;
        this.f15655e = i;
        this.f15656f = z;
        this.f15657g = z2;
        if (bArr != null) {
            this.f15671u = bArr;
            this.f15651a = null;
        } else {
            this.f15651a = Collections.unmodifiableList((List) C5508e.m18911e(list));
        }
        this.f15658h = hashMap;
        this.f15661k = abstractC5050p;
        this.f15659i = c5519k;
        this.f15660j = abstractC5493u;
        this.f15664n = 2;
        this.f15663m = new HandlerC5023e(looper);
    }

    @RequiresNonNull({"sessionId"})
    /* renamed from: j */
    private void m20829j(boolean z) {
        if (this.f15657g) {
            return;
        }
        byte[] bArr = (byte[]) C5515h0.m18833g(this.f15670t);
        int i = this.f15655e;
        if (i != 0 && i != 1) {
            if (i == 2) {
                if (this.f15671u != null && !m20815x()) {
                    return;
                }
                m20817v(bArr, 2, z);
            } else if (i != 3) {
            } else {
                C5508e.m18911e(this.f15671u);
                C5508e.m18911e(this.f15670t);
                if (!m20815x()) {
                    return;
                }
                m20817v(this.f15671u, 3, z);
            }
        } else if (this.f15671u == null) {
            m20817v(bArr, 1, z);
        } else if (this.f15664n != 4 && !m20815x()) {
        } else {
            long m20828k = m20828k();
            if (this.f15655e != 0 || m20828k > 60) {
                if (m20828k <= 0) {
                    m20824o(new KeysExpiredException());
                    return;
                }
                this.f15664n = 4;
                this.f15659i.m18784b(C5034e.f15715a);
                return;
            }
            C5526o.m18746b("DefaultDrmSession", "Offline license has expired or will expire soon. Remaining seconds: " + m20828k);
            m20817v(bArr, 2, z);
        }
    }

    /* renamed from: k */
    private long m20828k() {
        if (!C5543v.f17963d.equals(this.f15662l)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) C5508e.m18911e(C5051q.m20747b(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    /* renamed from: m */
    private boolean m20826m() {
        int i = this.f15664n;
        return i == 3 || i == 4;
    }

    /* renamed from: o */
    private void m20824o(final Exception exc) {
        this.f15669s = new DrmSession.DrmSessionException(exc);
        this.f15659i.m18784b(new C5519k.AbstractC5520a() { // from class: com.google.android.exoplayer2.drm.b
            @Override // com.google.android.exoplayer2.util.C5519k.AbstractC5520a
            /* renamed from: a */
            public final void mo18782a(Object obj) {
                ((AbstractC5037h) obj).mo20783j(exc);
            }
        });
        if (this.f15664n != 4) {
            this.f15664n = 1;
        }
    }

    /* renamed from: p */
    public void m20823p(Object obj, Object obj2) {
        if (obj != this.f15672v || !m20826m()) {
            return;
        }
        this.f15672v = null;
        if (obj2 instanceof Exception) {
            m20822q((Exception) obj2);
            return;
        }
        try {
            byte[] bArr = (byte[]) obj2;
            if (this.f15655e == 3) {
                this.f15652b.m20754j((byte[]) C5515h0.m18833g(this.f15671u), bArr);
                this.f15659i.m18784b(C5034e.f15715a);
                return;
            }
            byte[] m20754j = this.f15652b.m20754j(this.f15670t, bArr);
            int i = this.f15655e;
            if ((i == 2 || (i == 0 && this.f15671u != null)) && m20754j != null && m20754j.length != 0) {
                this.f15671u = m20754j;
            }
            this.f15664n = 4;
            this.f15659i.m18784b(C5035f.f15716a);
        } catch (Exception e) {
            m20822q(e);
        }
    }

    /* renamed from: q */
    private void m20822q(Exception exc) {
        if (exc instanceof NotProvisionedException) {
            this.f15653c.m20814a(this);
        } else {
            m20824o(exc);
        }
    }

    /* renamed from: r */
    private void m20821r() {
        if (this.f15655e == 0 && this.f15664n == 4) {
            C5515h0.m18833g(this.f15670t);
            m20829j(false);
        }
    }

    /* renamed from: t */
    public void m20819t(Object obj, Object obj2) {
        if (obj == this.f15673w) {
            if (this.f15664n != 2 && !m20826m()) {
                return;
            }
            this.f15673w = null;
            if (obj2 instanceof Exception) {
                this.f15653c.m20813b((Exception) obj2);
                return;
            }
            try {
                this.f15652b.m20753k((byte[]) obj2);
                this.f15653c.m20812c();
            } catch (Exception e) {
                this.f15653c.m20813b(e);
            }
        }
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    /* renamed from: u */
    private boolean m20818u(boolean z) {
        if (m20826m()) {
            return true;
        }
        try {
            byte[] m20758f = this.f15652b.m20758f();
            this.f15670t = m20758f;
            this.f15668r = this.f15652b.m20760d(m20758f);
            this.f15659i.m18784b(C5036g.f15717a);
            this.f15664n = 3;
            C5508e.m18911e(this.f15670t);
            return true;
        } catch (NotProvisionedException e) {
            if (z) {
                this.f15653c.m20814a(this);
                return false;
            }
            m20824o(e);
            return false;
        } catch (Exception e2) {
            m20824o(e2);
            return false;
        }
    }

    /* renamed from: v */
    private void m20817v(byte[] bArr, int i, boolean z) {
        try {
            this.f15672v = this.f15652b.m20752l(bArr, this.f15651a, i, this.f15658h);
            ((HandlerC5021c) C5515h0.m18833g(this.f15667q)).m20810b(1, C5508e.m18911e(this.f15672v), z);
        } catch (Exception e) {
            m20822q(e);
        }
    }

    @RequiresNonNull({"sessionId", "offlineLicenseKeySetId"})
    /* renamed from: x */
    private boolean m20815x() {
        try {
            this.f15652b.m20757g(this.f15670t, this.f15671u);
            return true;
        } catch (Exception e) {
            C5526o.m18744d("DefaultDrmSession", "Error trying to restore keys.", e);
            m20824o(e);
            return false;
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: a */
    public void mo20769a() {
        C5508e.m18910f(this.f15665o >= 0);
        int i = this.f15665o + 1;
        this.f15665o = i;
        if (i == 1) {
            boolean z = false;
            if (this.f15664n == 2) {
                z = true;
            }
            C5508e.m18910f(z);
            HandlerThread handlerThread = new HandlerThread("DrmRequestHandler");
            this.f15666p = handlerThread;
            handlerThread.start();
            this.f15667q = new HandlerC5021c(this.f15666p.getLooper());
            if (!m20818u(true)) {
                return;
            }
            m20829j(true);
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: b */
    public void mo20768b() {
        int i = this.f15665o - 1;
        this.f15665o = i;
        if (i == 0) {
            this.f15664n = 0;
            ((HandlerC5023e) C5515h0.m18833g(this.f15663m)).removeCallbacksAndMessages(null);
            ((HandlerC5021c) C5515h0.m18833g(this.f15667q)).removeCallbacksAndMessages(null);
            this.f15667q = null;
            ((HandlerThread) C5515h0.m18833g(this.f15666p)).quit();
            this.f15666p = null;
            this.f15668r = null;
            this.f15669s = null;
            this.f15672v = null;
            this.f15673w = null;
            byte[] bArr = this.f15670t;
            if (bArr != null) {
                this.f15652b.m20756h(bArr);
                this.f15670t = null;
                this.f15659i.m18784b(C5030a.f15711a);
            }
            this.f15654d.mo20786a(this);
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: c */
    public boolean mo20767c() {
        return this.f15656f;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: d */
    public Map<String, String> mo20766d() {
        byte[] bArr = this.f15670t;
        return bArr == null ? null : this.f15652b.m20761c(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: e */
    public final T mo20765e() {
        return this.f15668r;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: f */
    public final DrmSession.DrmSessionException mo20764f() {
        return this.f15664n == 1 ? this.f15669s : null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final int getState() {
        return this.f15664n;
    }

    /* renamed from: l */
    public boolean m20827l(byte[] bArr) {
        return Arrays.equals(this.f15670t, bArr);
    }

    /* renamed from: s */
    public void m20820s(int i) {
        if (i != 2) {
            return;
        }
        m20821r();
    }

    /* renamed from: w */
    public void m20816w() {
        this.f15673w = this.f15652b.m20759e();
        ((HandlerC5021c) C5515h0.m18833g(this.f15667q)).m20810b(0, C5508e.m18911e(this.f15673w), true);
    }
}
