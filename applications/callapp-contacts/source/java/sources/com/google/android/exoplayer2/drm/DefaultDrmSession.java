package com.google.android.exoplayer2.drm;

import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.C11158f;
import com.google.android.exoplayer2.drm.AbstractC10955c;
import com.google.android.exoplayer2.drm.AbstractC10964i;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.source.C11305l;
import com.google.android.exoplayer2.source.C11311o;
import com.google.android.exoplayer2.upstream.AbstractC11585r;
import com.google.android.exoplayer2.util.AbstractC11607g;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11608h;
import com.google.android.exoplayer2.util.C11617n;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession.class */
public final class DefaultDrmSession implements DrmSession {

    /* renamed from: a */
    public final List<DrmInitData.SchemeData> f35390a;

    /* renamed from: b */
    final AbstractC10964i f35391b;

    /* renamed from: c */
    final AbstractC10940a f35392c;

    /* renamed from: d */
    final AbstractC11585r f35393d;

    /* renamed from: e */
    final AbstractC10973m f35394e;

    /* renamed from: f */
    final UUID f35395f;

    /* renamed from: g */
    final HandlerC10944e f35396g;

    /* renamed from: h */
    int f35397h;

    /* renamed from: i */
    byte[] f35398i;

    /* renamed from: j */
    AbstractC10964i.C10969e f35399j;

    /* renamed from: k */
    private final AbstractC10941b f35400k;

    /* renamed from: l */
    private final int f35401l;

    /* renamed from: m */
    private final boolean f35402m;

    /* renamed from: n */
    private final boolean f35403n;

    /* renamed from: o */
    private final HashMap<String, String> f35404o;

    /* renamed from: p */
    private final C11608h<AbstractC10955c.C10956a> f35405p;

    /* renamed from: q */
    private int f35406q;

    /* renamed from: r */
    private HandlerThread f35407r;

    /* renamed from: s */
    private HandlerC10942c f35408s;

    /* renamed from: t */
    private AbstractC10963h f35409t;

    /* renamed from: u */
    private DrmSession.DrmSessionException f35410u;

    /* renamed from: v */
    private byte[] f35411v;

    /* renamed from: w */
    private AbstractC10964i.C10966b f35412w;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$UnexpectedDrmSessionException.class */
    public static final class UnexpectedDrmSessionException extends IOException {
        public UnexpectedDrmSessionException(Throwable th) {
            super(th);
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSession$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$a.class */
    public interface AbstractC10940a {
        /* renamed from: a */
        void mo21873a();

        /* renamed from: a */
        void mo21872a(DefaultDrmSession defaultDrmSession);

        /* renamed from: a */
        void mo21871a(Exception exc);
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSession$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$b.class */
    public interface AbstractC10941b {
        /* renamed from: a */
        void mo21870a(DefaultDrmSession defaultDrmSession);

        /* renamed from: a */
        void mo21869a(DefaultDrmSession defaultDrmSession, int i);
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSession$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$c.class */
    public final class HandlerC10942c extends Handler {

        /* renamed from: b */
        private boolean f35414b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC10942c(Looper looper) {
            super(looper);
            DefaultDrmSession.this = r4;
        }

        /* renamed from: a */
        private boolean m21887a(Message message, MediaDrmCallbackException mediaDrmCallbackException) {
            C10943d c10943d = (C10943d) message.obj;
            if (!c10943d.f35416b) {
                return false;
            }
            c10943d.f35419e++;
            if (c10943d.f35419e > DefaultDrmSession.this.f35393d.mo20038a(3)) {
                return false;
            }
            long mo20037a = DefaultDrmSession.this.f35393d.mo20037a(new AbstractC11585r.C11586a(new C11305l(c10943d.f35415a, mediaDrmCallbackException.f35456a, mediaDrmCallbackException.f35457b, mediaDrmCallbackException.f35458c, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - c10943d.f35417c, mediaDrmCallbackException.f35459d), new C11311o(3), mediaDrmCallbackException.getCause() instanceof IOException ? (IOException) mediaDrmCallbackException.getCause() : new UnexpectedDrmSessionException(mediaDrmCallbackException.getCause()), c10943d.f35419e));
            if (mo20037a == -9223372036854775807L) {
                return false;
            }
            synchronized (this) {
                if (this.f35414b) {
                    return false;
                }
                sendMessageDelayed(Message.obtain(message), mo20037a);
                return true;
            }
        }

        /* renamed from: a */
        public final void m21889a() {
            synchronized (this) {
                removeCallbacksAndMessages(null);
                this.f35414b = true;
            }
        }

        /* renamed from: a */
        final void m21888a(int i, Object obj, boolean z) {
            obtainMessage(i, new C10943d(C11305l.m20965a(), z, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Exception e;
            C10943d c10943d = (C10943d) message.obj;
            try {
                int i = message.what;
                if (i == 0) {
                    e = DefaultDrmSession.this.f35394e.mo21817a((AbstractC10964i.C10969e) c10943d.f35418d);
                } else if (i != 1) {
                    throw new RuntimeException();
                } else {
                    e = DefaultDrmSession.this.f35394e.mo21816a(DefaultDrmSession.this.f35395f, (AbstractC10964i.C10966b) c10943d.f35418d);
                }
            } catch (MediaDrmCallbackException e2) {
                e = e2;
                if (m21887a(message, e2)) {
                    return;
                }
            } catch (Exception e3) {
                e = e3;
                C11617n.m19862a("DefaultDrmSession", "Key/provisioning request produced an unexpected exception. Not retrying.", e);
            }
            synchronized (this) {
                if (!this.f35414b) {
                    DefaultDrmSession.this.f35396g.obtainMessage(message.what, Pair.create(c10943d.f35418d, e)).sendToTarget();
                }
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSession$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$d.class */
    public static final class C10943d {

        /* renamed from: a */
        public final long f35415a;

        /* renamed from: b */
        public final boolean f35416b;

        /* renamed from: c */
        public final long f35417c;

        /* renamed from: d */
        public final Object f35418d;

        /* renamed from: e */
        public int f35419e;

        public C10943d(long j, boolean z, long j2, Object obj) {
            this.f35415a = j;
            this.f35416b = z;
            this.f35417c = j2;
            this.f35418d = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSession$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$e.class */
    public final class HandlerC10944e extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC10944e(Looper looper) {
            super(looper);
            DefaultDrmSession.this = r4;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i = message.what;
            if (i != 0) {
                if (i != 1) {
                    return;
                }
                DefaultDrmSession.m21902a(DefaultDrmSession.this, obj, obj2);
                return;
            }
            DefaultDrmSession defaultDrmSession = DefaultDrmSession.this;
            if (obj != defaultDrmSession.f35399j) {
                return;
            }
            if (defaultDrmSession.f35397h != 2 && !defaultDrmSession.m21892i()) {
                return;
            }
            defaultDrmSession.f35399j = null;
            if (obj2 instanceof Exception) {
                defaultDrmSession.f35392c.mo21871a((Exception) obj2);
                return;
            }
            try {
                defaultDrmSession.f35391b.mo21827b((byte[]) obj2);
                defaultDrmSession.f35392c.mo21873a();
            } catch (Exception e) {
                defaultDrmSession.f35392c.mo21871a(e);
            }
        }
    }

    public DefaultDrmSession(UUID uuid, AbstractC10964i abstractC10964i, AbstractC10940a abstractC10940a, AbstractC10941b abstractC10941b, List<DrmInitData.SchemeData> list, int i, boolean z, boolean z2, byte[] bArr, HashMap<String, String> hashMap, AbstractC10973m abstractC10973m, Looper looper, AbstractC11585r abstractC11585r) {
        if (i == 1 || i == 3) {
            C11593a.m20020b(bArr);
        }
        this.f35395f = uuid;
        this.f35392c = abstractC10940a;
        this.f35400k = abstractC10941b;
        this.f35391b = abstractC10964i;
        this.f35401l = i;
        this.f35402m = z;
        this.f35403n = z2;
        if (bArr != null) {
            this.f35411v = bArr;
            this.f35390a = null;
        } else {
            this.f35390a = Collections.unmodifiableList((List) C11593a.m20020b(list));
        }
        this.f35404o = hashMap;
        this.f35394e = abstractC10973m;
        this.f35405p = new C11608h<>();
        this.f35393d = abstractC11585r;
        this.f35397h = 2;
        this.f35396g = new HandlerC10944e(looper);
    }

    /* renamed from: a */
    static /* synthetic */ void m21902a(DefaultDrmSession defaultDrmSession, Object obj, Object obj2) {
        if (obj != defaultDrmSession.f35412w || !defaultDrmSession.m21892i()) {
            return;
        }
        defaultDrmSession.f35412w = null;
        if (obj2 instanceof Exception) {
            defaultDrmSession.m21895b((Exception) obj2);
            return;
        }
        try {
            byte[] bArr = (byte[]) obj2;
            if (defaultDrmSession.f35401l == 3) {
                defaultDrmSession.f35391b.mo21830a((byte[]) C11599af.m19974a(defaultDrmSession.f35411v), bArr);
                defaultDrmSession.m21901a((AbstractC11607g<AbstractC10955c.C10956a>) _$$Lambda$VZ6A8KvuSL1_iB_UH1zS4FgEQRQ.INSTANCE);
                return;
            }
            byte[] mo21830a = defaultDrmSession.f35391b.mo21830a(defaultDrmSession.f35398i, bArr);
            int i = defaultDrmSession.f35401l;
            if ((i == 2 || (i == 0 && defaultDrmSession.f35411v != null)) && mo21830a != null && mo21830a.length != 0) {
                defaultDrmSession.f35411v = mo21830a;
            }
            defaultDrmSession.f35397h = 4;
            defaultDrmSession.m21901a((AbstractC11607g<AbstractC10955c.C10956a>) _$$Lambda$iT40BaC8R1C1PudyXRQOrznapKo.INSTANCE);
        } catch (Exception e) {
            defaultDrmSession.m21895b(e);
        }
    }

    /* renamed from: a */
    private void m21901a(AbstractC11607g<AbstractC10955c.C10956a> abstractC11607g) {
        for (AbstractC10955c.C10956a c10956a : this.f35405p.m19894a()) {
            abstractC11607g.accept(c10956a);
        }
    }

    /* renamed from: a */
    private void m21897a(byte[] bArr, int i, boolean z) {
        try {
            this.f35412w = this.f35391b.mo21831a(bArr, this.f35390a, i, this.f35404o);
            ((HandlerC10942c) C11599af.m19974a(this.f35408s)).m21888a(1, C11593a.m20020b(this.f35412w), z);
        } catch (Exception e) {
            m21895b(e);
        }
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    /* renamed from: a */
    private boolean m21898a(boolean z) {
        if (m21892i()) {
            return true;
        }
        try {
            byte[] mo21836a = this.f35391b.mo21836a();
            this.f35398i = mo21836a;
            this.f35409t = this.f35391b.mo21821d(mo21836a);
            m21901a((AbstractC11607g<AbstractC10955c.C10956a>) _$$Lambda$AgZw6lXSM3NelSMijejozKdVtsY.INSTANCE);
            this.f35397h = 3;
            C11593a.m20020b(this.f35398i);
            return true;
        } catch (NotProvisionedException e) {
            if (z) {
                this.f35392c.mo21872a(this);
                return false;
            }
            m21893c(e);
            return false;
        } catch (Exception e2) {
            m21893c(e2);
            return false;
        }
    }

    /* renamed from: b */
    private void m21895b(Exception exc) {
        if (exc instanceof NotProvisionedException) {
            this.f35392c.mo21872a(this);
        } else {
            m21893c(exc);
        }
    }

    @RequiresNonNull({"sessionId"})
    /* renamed from: b */
    private void m21894b(boolean z) {
        if (this.f35403n) {
            return;
        }
        byte[] bArr = (byte[]) C11599af.m19974a(this.f35398i);
        int i = this.f35401l;
        if (i != 0 && i != 1) {
            if (i == 2) {
                if (this.f35411v != null && !m21891j()) {
                    return;
                }
                m21897a(bArr, 2, z);
            } else if (i != 3) {
            } else {
                C11593a.m20020b(this.f35411v);
                C11593a.m20020b(this.f35398i);
                if (!m21891j()) {
                    return;
                }
                m21897a(this.f35411v, 3, z);
            }
        } else if (this.f35411v == null) {
            m21897a(bArr, 1, z);
        } else if (this.f35397h != 4 && !m21891j()) {
        } else {
            long m21890k = m21890k();
            if (this.f35401l == 0 && m21890k <= 60) {
                "Offline license has expired or will expire soon. Remaining seconds: ".concat(String.valueOf(m21890k));
                C11617n.m19864a();
                m21897a(bArr, 2, z);
            } else if (m21890k <= 0) {
                m21893c(new KeysExpiredException());
            } else {
                this.f35397h = 4;
                m21901a((AbstractC11607g<AbstractC10955c.C10956a>) _$$Lambda$U8qeknleCxFbK_h3oaMhp6RiXnU.INSTANCE);
            }
        }
    }

    /* renamed from: c */
    private void m21893c(final Exception exc) {
        this.f35410u = new DrmSession.DrmSessionException(exc);
        m21901a(new AbstractC11607g() { // from class: com.google.android.exoplayer2.drm._$$Lambda$DefaultDrmSession$RctFRSBQW9Uk48uBibAqq4BGsyk
            @Override // com.google.android.exoplayer2.util.AbstractC11607g
            public final void accept(Object obj) {
                ((AbstractC10955c.C10956a) obj).m21859a(exc);
            }
        });
        if (this.f35397h != 4) {
            this.f35397h = 1;
        }
    }

    @RequiresNonNull({"sessionId", "offlineLicenseKeySetId"})
    /* renamed from: j */
    private boolean m21891j() {
        try {
            this.f35391b.mo21826b(this.f35398i, this.f35411v);
            return true;
        } catch (Exception e) {
            C11617n.m19857b("DefaultDrmSession", "Error trying to restore keys.", e);
            m21893c(e);
            return false;
        }
    }

    /* renamed from: k */
    private long m21890k() {
        if (!C11158f.f36542d.equals(this.f35395f)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) C11593a.m20020b(C10975o.m21815a(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    /* renamed from: a */
    public final void m21904a() {
        this.f35399j = this.f35391b.mo21829b();
        ((HandlerC10942c) C11599af.m19974a(this.f35408s)).m21888a(0, C11593a.m20020b(this.f35399j), true);
    }

    /* renamed from: a */
    public final void m21903a(int i) {
        if (i == 2 && this.f35401l == 0 && this.f35397h == 4) {
            C11599af.m19974a(this.f35398i);
            m21894b(false);
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: a */
    public final void mo21845a(AbstractC10955c.C10956a c10956a) {
        C11593a.m20019b(this.f35406q >= 0);
        if (c10956a != null) {
            C11608h<AbstractC10955c.C10956a> c11608h = this.f35405p;
            synchronized (c11608h.f38676a) {
                ArrayList arrayList = new ArrayList(c11608h.f38679d);
                arrayList.add(c10956a);
                c11608h.f38679d = Collections.unmodifiableList(arrayList);
                Integer num = c11608h.f38677b.get(c10956a);
                if (num == null) {
                    HashSet hashSet = new HashSet(c11608h.f38678c);
                    hashSet.add(c10956a);
                    c11608h.f38678c = Collections.unmodifiableSet(hashSet);
                }
                c11608h.f38677b.put(c10956a, Integer.valueOf(num != null ? num.intValue() + 1 : 1));
            }
        }
        int i = this.f35406q + 1;
        this.f35406q = i;
        if (i == 1) {
            boolean z = false;
            if (this.f35397h == 2) {
                z = true;
            }
            C11593a.m20019b(z);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.f35407r = handlerThread;
            handlerThread.start();
            this.f35408s = new HandlerC10942c(this.f35407r.getLooper());
            if (m21898a(true)) {
                m21894b(true);
            }
        } else if (c10956a != null && m21892i()) {
            c10956a.m21864a();
        }
        this.f35400k.mo21870a(this);
    }

    /* renamed from: a */
    public final void m21900a(Exception exc) {
        m21893c(exc);
    }

    /* renamed from: b */
    public final void m21896b() {
        if (m21898a(false)) {
            m21894b(true);
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: b */
    public final void mo21844b(AbstractC10955c.C10956a c10956a) {
        C11593a.m20019b(this.f35406q > 0);
        int i = this.f35406q - 1;
        this.f35406q = i;
        if (i == 0) {
            this.f35397h = 0;
            ((HandlerC10944e) C11599af.m19974a(this.f35396g)).removeCallbacksAndMessages(null);
            ((HandlerC10942c) C11599af.m19974a(this.f35408s)).m21889a();
            this.f35408s = null;
            ((HandlerThread) C11599af.m19974a(this.f35407r)).quit();
            this.f35407r = null;
            this.f35409t = null;
            this.f35410u = null;
            this.f35412w = null;
            this.f35399j = null;
            byte[] bArr = this.f35398i;
            if (bArr != null) {
                this.f35391b.mo21832a(bArr);
                this.f35398i = null;
            }
            m21901a((AbstractC11607g<AbstractC10955c.C10956a>) _$$Lambda$S7cFD2HB3LdrN5vmqtj_IkU8VZ0.INSTANCE);
        }
        if (c10956a != null) {
            if (m21892i()) {
                c10956a.m21852e();
            }
            C11608h<AbstractC10955c.C10956a> c11608h = this.f35405p;
            synchronized (c11608h.f38676a) {
                Integer num = c11608h.f38677b.get(c10956a);
                if (num != null) {
                    ArrayList arrayList = new ArrayList(c11608h.f38679d);
                    arrayList.remove(c10956a);
                    c11608h.f38679d = Collections.unmodifiableList(arrayList);
                    if (num.intValue() == 1) {
                        c11608h.f38677b.remove(c10956a);
                        HashSet hashSet = new HashSet(c11608h.f38678c);
                        hashSet.remove(c10956a);
                        c11608h.f38678c = Collections.unmodifiableSet(hashSet);
                    } else {
                        c11608h.f38677b.put(c10956a, Integer.valueOf(num.intValue() - 1));
                    }
                }
            }
        }
        this.f35400k.mo21869a(this, this.f35406q);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: c */
    public final int mo21843c() {
        return this.f35397h;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: d */
    public final boolean mo21842d() {
        return this.f35402m;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: e */
    public final DrmSession.DrmSessionException mo21841e() {
        if (this.f35397h == 1) {
            return this.f35410u;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: f */
    public final UUID mo21840f() {
        return this.f35395f;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: g */
    public final AbstractC10963h mo21839g() {
        return this.f35409t;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    /* renamed from: h */
    public final Map<String, String> mo21838h() {
        byte[] bArr = this.f35398i;
        if (bArr == null) {
            return null;
        }
        return this.f35391b.mo21823c(bArr);
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    /* renamed from: i */
    final boolean m21892i() {
        int i = this.f35397h;
        return i == 3 || i == 4;
    }
}
