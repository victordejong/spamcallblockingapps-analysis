package androidx.media2.exoplayer.external.drm;

import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media2.exoplayer.external.C1446c;
import androidx.media2.exoplayer.external.drm.AbstractC1471m;
import androidx.media2.exoplayer.external.drm.AbstractC1472n;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.upstream.AbstractC1986t;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2003f;
import androidx.media2.exoplayer.external.util.C2009j;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession.class */
public final class DefaultDrmSession<T extends AbstractC1471m> implements DrmSession<T> {

    /* renamed from: a */
    public final List<DrmInitData.SchemeData> f5533a;

    /* renamed from: b */
    final AbstractC1472n<T> f5534b;

    /* renamed from: c */
    final AbstractC1448a<T> f5535c;

    /* renamed from: d */
    final int f5536d;

    /* renamed from: e */
    final C2003f<AbstractC1464g> f5537e;

    /* renamed from: f */
    final AbstractC1986t f5538f;

    /* renamed from: g */
    final AbstractC1476p f5539g;

    /* renamed from: h */
    final UUID f5540h;

    /* renamed from: i */
    final DefaultDrmSession<T>.HandlerC1452e f5541i;

    /* renamed from: j */
    int f5542j;

    /* renamed from: k */
    byte[] f5543k;

    /* renamed from: l */
    byte[] f5544l;

    /* renamed from: m */
    AbstractC1472n.C1473a f5545m;

    /* renamed from: n */
    AbstractC1472n.C1474b f5546n;

    /* renamed from: o */
    private final AbstractC1449b<T> f5547o;

    /* renamed from: p */
    private final HashMap<String, String> f5548p;

    /* renamed from: q */
    private int f5549q;

    /* renamed from: r */
    private HandlerThread f5550r;

    /* renamed from: s */
    private DefaultDrmSession<T>.HandlerC1450c f5551s;

    /* renamed from: t */
    private T f5552t;

    /* renamed from: u */
    private DrmSession.DrmSessionException f5553u;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$UnexpectedDrmSessionException.class */
    public static final class UnexpectedDrmSessionException extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public UnexpectedDrmSessionException(java.lang.Throwable r6) {
            /*
                r5 = this;
                r0 = r6
                java.lang.Class r0 = r0.getClass()
                java.lang.String r0 = r0.getSimpleName()
                r7 = r0
                r0 = r6
                java.lang.String r0 = r0.getMessage()
                r8 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r7
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = 13
                int r2 = r2 + r3
                r3 = r8
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r3 = r3.length()
                int r2 = r2 + r3
                r1.<init>(r2)
                r9 = r0
                r0 = r9
                java.lang.String r1 = "Unexpected "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                java.lang.String r1 = ": "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r9
                java.lang.String r1 = r1.toString()
                r2 = r6
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.drm.DefaultDrmSession.UnexpectedDrmSessionException.<init>(java.lang.Throwable):void");
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.drm.DefaultDrmSession$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$a.class */
    public interface AbstractC1448a<T extends AbstractC1471m> {
        /* renamed from: a */
        void mo42881a();

        /* renamed from: a */
        void mo42880a(DefaultDrmSession<T> defaultDrmSession);

        /* renamed from: a */
        void mo42876a(Exception exc);
    }

    /* renamed from: androidx.media2.exoplayer.external.drm.DefaultDrmSession$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$b.class */
    public interface AbstractC1449b<T extends AbstractC1471m> {
        /* renamed from: a */
        void mo42870a(DefaultDrmSession<T> defaultDrmSession);
    }

    /* renamed from: androidx.media2.exoplayer.external.drm.DefaultDrmSession$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$c.class */
    public final class HandlerC1450c extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC1450c(Looper looper) {
            super(looper);
            DefaultDrmSession.this = r4;
        }

        /* renamed from: a */
        final void m42882a(int i, Object obj, boolean z) {
            obtainMessage(i, new C1451d(z, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x00cf A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00d0  */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void handleMessage(android.os.Message r7) {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.drm.DefaultDrmSession.HandlerC1450c.handleMessage(android.os.Message):void");
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.drm.DefaultDrmSession$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$d.class */
    public static final class C1451d {

        /* renamed from: a */
        public final boolean f5555a;

        /* renamed from: b */
        public final long f5556b;

        /* renamed from: c */
        public final Object f5557c;

        /* renamed from: d */
        public int f5558d;

        public C1451d(boolean z, long j, Object obj) {
            this.f5555a = z;
            this.f5556b = j;
            this.f5557c = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.drm.DefaultDrmSession$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$e.class */
    public final class HandlerC1452e extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC1452e(Looper looper) {
            super(looper);
            DefaultDrmSession.this = r4;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i = message.what;
            if (i == 0) {
                DefaultDrmSession defaultDrmSession = DefaultDrmSession.this;
                if (obj != defaultDrmSession.f5546n) {
                    return;
                }
                if (defaultDrmSession.f5542j != 2 && !defaultDrmSession.m42884h()) {
                    return;
                }
                defaultDrmSession.f5546n = null;
                if (obj2 instanceof Exception) {
                    defaultDrmSession.f5535c.mo42876a((Exception) obj2);
                } else {
                    defaultDrmSession.f5535c.mo42881a();
                }
            } else if (i != 1) {
            } else {
                DefaultDrmSession defaultDrmSession2 = DefaultDrmSession.this;
                if (obj != defaultDrmSession2.f5545m || !defaultDrmSession2.m42884h()) {
                    return;
                }
                defaultDrmSession2.f5545m = null;
                if (obj2 instanceof Exception) {
                    defaultDrmSession2.m42889a((Exception) obj2);
                    return;
                }
                try {
                    if (defaultDrmSession2.f5536d == 3) {
                        C1996ac.m41659a(defaultDrmSession2.f5544l);
                        defaultDrmSession2.f5537e.m41590a(C1461d.f5579a);
                        return;
                    }
                    byte[] m42857c = defaultDrmSession2.f5534b.m42857c();
                    if ((defaultDrmSession2.f5536d == 2 || (defaultDrmSession2.f5536d == 0 && defaultDrmSession2.f5544l != null)) && m42857c != null && m42857c.length != 0) {
                        defaultDrmSession2.f5544l = m42857c;
                    }
                    defaultDrmSession2.f5542j = 4;
                    defaultDrmSession2.f5537e.m41590a(C1462e.f5580a);
                } catch (Exception e) {
                    defaultDrmSession2.m42889a(e);
                }
            }
        }
    }

    public DefaultDrmSession(UUID uuid, AbstractC1472n<T> abstractC1472n, AbstractC1448a<T> abstractC1448a, AbstractC1449b<T> abstractC1449b, List<DrmInitData.SchemeData> list, int i, byte[] bArr, HashMap<String, String> hashMap, AbstractC1476p abstractC1476p, Looper looper, C2003f<AbstractC1464g> c2003f, AbstractC1986t abstractC1986t) {
        if (i == 1 || i == 3) {
            C1993a.m41690a(bArr);
        }
        this.f5540h = uuid;
        this.f5535c = abstractC1448a;
        this.f5547o = abstractC1449b;
        this.f5534b = abstractC1472n;
        this.f5536d = i;
        if (bArr != null) {
            this.f5544l = bArr;
            this.f5533a = null;
        } else {
            this.f5533a = Collections.unmodifiableList((List) C1993a.m41690a(list));
        }
        this.f5548p = hashMap;
        this.f5539g = abstractC1476p;
        this.f5537e = c2003f;
        this.f5538f = abstractC1986t;
        this.f5542j = 2;
        this.f5541i = new HandlerC1452e(looper);
    }

    /* renamed from: c */
    private void m42885c(boolean z) {
        try {
            this.f5545m = this.f5534b.m42858b();
            ((HandlerC1450c) C1996ac.m41659a(this.f5551s)).m42882a(1, C1993a.m41690a(this.f5545m), z);
        } catch (Exception e) {
            m42889a(e);
        }
    }

    /* renamed from: i */
    private long m42883i() {
        if (!C1446c.f5517d.equals(this.f5540h)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) C1993a.m41690a(C1477q.m42850a(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    /* renamed from: a */
    public final void m42890a() {
        this.f5546n = this.f5534b.m42856d();
        ((HandlerC1450c) C1996ac.m41659a(this.f5551s)).m42882a(0, C1993a.m41690a(this.f5546n), true);
    }

    /* renamed from: a */
    final void m42889a(Exception exc) {
        if (exc instanceof NotProvisionedException) {
            this.f5535c.mo42880a(this);
        } else {
            m42887b(exc);
        }
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    /* renamed from: a */
    public final boolean m42888a(boolean z) {
        if (m42884h()) {
            return true;
        }
        try {
            this.f5543k = this.f5534b.m42859a();
            this.f5552t = this.f5534b.m42854f();
            this.f5537e.m41590a(C1459b.f5577a);
            this.f5542j = 3;
            C1993a.m41690a(this.f5543k);
            return true;
        } catch (NotProvisionedException e) {
            if (z) {
                this.f5535c.mo42880a(this);
                return false;
            }
            m42887b(e);
            return false;
        } catch (Exception e2) {
            m42887b(e2);
            return false;
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: b */
    public final int mo42865b() {
        return this.f5542j;
    }

    /* renamed from: b */
    public final void m42887b(Exception exc) {
        this.f5553u = new DrmSession.DrmSessionException(exc);
        this.f5537e.m41590a(new C2003f.AbstractC2004a(exc) { // from class: androidx.media2.exoplayer.external.drm.f

            /* renamed from: a */
            private final Exception f5581a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5581a = exc;
            }

            @Override // androidx.media2.exoplayer.external.util.C2003f.AbstractC2004a
            /* renamed from: a */
            public final void mo41588a(Object obj) {
                ((AbstractC1464g) obj).mo42873i();
            }
        });
        if (this.f5542j != 4) {
            this.f5542j = 1;
        }
    }

    @RequiresNonNull({"sessionId"})
    /* renamed from: b */
    public final void m42886b(boolean z) {
        C1996ac.m41659a(this.f5543k);
        int i = this.f5536d;
        if (i != 0 && i != 1) {
            if (i == 2) {
                if (this.f5544l == null) {
                    m42885c(z);
                } else {
                    m42885c(z);
                }
            } else if (i != 3) {
            } else {
                C1993a.m41690a(this.f5544l);
                C1993a.m41690a(this.f5543k);
                m42885c(z);
            }
        } else if (this.f5544l == null) {
            m42885c(z);
        } else {
            long m42883i = m42883i();
            if (this.f5536d != 0 || m42883i > 60) {
                if (m42883i <= 0) {
                    m42887b(new KeysExpiredException());
                    return;
                }
                this.f5542j = 4;
                this.f5537e.m41590a(C1460c.f5578a);
                return;
            }
            StringBuilder sb = new StringBuilder(88);
            sb.append("Offline license has expired or will expire soon. Remaining seconds: ");
            sb.append(m42883i);
            C2009j.m41585a();
            m42885c(z);
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: c */
    public final DrmSession.DrmSessionException mo42864c() {
        if (this.f5542j == 1) {
            return this.f5553u;
        }
        return null;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: d */
    public final T mo42863d() {
        return this.f5552t;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: e */
    public final Map<String, String> mo42862e() {
        if (this.f5543k == null) {
            return null;
        }
        return this.f5534b.m42855e();
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: f */
    public final void mo42861f() {
        int i = this.f5549q + 1;
        this.f5549q = i;
        if (i == 1) {
            C1993a.m41686b(this.f5542j == 2);
            HandlerThread handlerThread = new HandlerThread("DrmRequestHandler");
            this.f5550r = handlerThread;
            handlerThread.start();
            this.f5551s = new HandlerC1450c(this.f5550r.getLooper());
            if (!m42888a(true)) {
                return;
            }
            m42886b(true);
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: g */
    public final void mo42860g() {
        int i = this.f5549q - 1;
        this.f5549q = i;
        if (i == 0) {
            this.f5542j = 0;
            ((HandlerC1452e) C1996ac.m41659a(this.f5541i)).removeCallbacksAndMessages(null);
            ((HandlerC1450c) C1996ac.m41659a(this.f5551s)).removeCallbacksAndMessages(null);
            this.f5551s = null;
            ((HandlerThread) C1996ac.m41659a(this.f5550r)).quit();
            this.f5550r = null;
            this.f5552t = null;
            this.f5553u = null;
            this.f5545m = null;
            this.f5546n = null;
            if (this.f5543k != null) {
                this.f5543k = null;
                this.f5537e.m41590a(C1458a.f5576a);
            }
            this.f5547o.mo42870a(this);
        }
    }

    @EnsuresNonNullIf(expression = {"sessionId"}, result = true)
    /* renamed from: h */
    final boolean m42884h() {
        int i = this.f5542j;
        return i == 3 || i == 4;
    }
}
