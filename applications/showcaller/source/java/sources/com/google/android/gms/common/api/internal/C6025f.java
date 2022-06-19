package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.C6084b;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AbstractC5996c;
import com.google.android.gms.common.api.AbstractC6007i;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.AbstractC6167s;
import com.google.android.gms.common.internal.C6126f0;
import com.google.android.gms.common.internal.C6158p;
import com.google.android.gms.common.internal.C6164r;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.util.C6231i;
import com.google.android.gms.internal.base.HandlerC7287f;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7968h;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
import p020b.p036e.C1491b;
/* renamed from: com.google.android.gms.common.api.internal.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/f.class */
public class C6025f implements Handler.Callback {
    @RecentlyNonNull

    /* renamed from: d */
    public static final Status f19258d = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: e */
    private static final Status f19259e = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: f */
    private static final Object f19260f = new Object();

    /* renamed from: g */
    private static C6025f f19261g;

    /* renamed from: l */
    private TelemetryData f19266l;

    /* renamed from: m */
    private AbstractC6167s f19267m;

    /* renamed from: n */
    private final Context f19268n;

    /* renamed from: o */
    private final C6084b f19269o;

    /* renamed from: p */
    private final C6126f0 f19270p;
    @NotOnlyInitialized

    /* renamed from: w */
    private final Handler f19277w;

    /* renamed from: x */
    private volatile boolean f19278x;

    /* renamed from: h */
    private long f19262h = 5000;

    /* renamed from: i */
    private long f19263i = 120000;

    /* renamed from: j */
    private long f19264j = OkHttpUtils.DEFAULT_MILLISECONDS;

    /* renamed from: k */
    private boolean f19265k = false;

    /* renamed from: q */
    private final AtomicInteger f19271q = new AtomicInteger(1);

    /* renamed from: r */
    private final AtomicInteger f19272r = new AtomicInteger(0);

    /* renamed from: s */
    private final Map<C6012b<?>, C6017c0<?>> f19273s = new ConcurrentHashMap(5, 0.75f, 1);

    /* renamed from: t */
    private C6063t f19274t = null;

    /* renamed from: u */
    private final Set<C6012b<?>> f19275u = new C1491b();

    /* renamed from: v */
    private final Set<C6012b<?>> f19276v = new C1491b();

    private C6025f(Context context, Looper looper, C6084b c6084b) {
        this.f19278x = true;
        this.f19268n = context;
        HandlerC7287f handlerC7287f = new HandlerC7287f(looper, this);
        this.f19277w = handlerC7287f;
        this.f19269o = c6084b;
        this.f19270p = new C6126f0(c6084b);
        if (C6231i.m16803a(context)) {
            this.f19278x = false;
        }
        handlerC7287f.sendMessage(handlerC7287f.obtainMessage(6));
    }

    /* renamed from: a */
    public static void m17369a() {
        synchronized (f19260f) {
            C6025f c6025f = f19261g;
            if (c6025f != null) {
                c6025f.f19272r.incrementAndGet();
                Handler handler = c6025f.f19277w;
                handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
            }
        }
    }

    /* renamed from: i */
    private final C6017c0<?> m17361i(AbstractC5996c<?> abstractC5996c) {
        C6012b<?> mo17455c = abstractC5996c.mo17455c();
        C6017c0<?> c6017c0 = this.f19273s.get(mo17455c);
        C6017c0<?> c6017c02 = c6017c0;
        if (c6017c0 == null) {
            c6017c02 = new C6017c0<>(this, abstractC5996c);
            this.f19273s.put(mo17455c, c6017c02);
        }
        if (c6017c02.m17425C()) {
            this.f19276v.add(mo17455c);
        }
        c6017c02.m17389z();
        return c6017c02;
    }

    /* renamed from: j */
    private final <T> void m17360j(C7968h<T> c7968h, int i, AbstractC5996c abstractC5996c) {
        C6035i0 m17322b;
        if (i == 0 || (m17322b = C6035i0.m17322b(this, i, abstractC5996c.mo17455c())) == null) {
            return;
        }
        AbstractC7966g<T> m5807a = c7968h.m5807a();
        Handler handler = this.f19277w;
        handler.getClass();
        m5807a.mo5824c(ExecutorC6069w.m17257b(handler), m17322b);
    }

    /* renamed from: k */
    public static Status m17359k(C6012b<?> c6012b, ConnectionResult connectionResult) {
        String m17435b = c6012b.m17435b();
        String valueOf = String.valueOf(connectionResult);
        StringBuilder sb = new StringBuilder(String.valueOf(m17435b).length() + 63 + valueOf.length());
        sb.append("API: ");
        sb.append(m17435b);
        sb.append(" is not available on this device. Connection failed with: ");
        sb.append(valueOf);
        return new Status(connectionResult, sb.toString());
    }

    /* renamed from: l */
    private final void m17358l() {
        TelemetryData telemetryData = this.f19266l;
        if (telemetryData != null) {
            if (telemetryData.m17149k0() > 0 || m17347w()) {
                m17357m().mo16917b(telemetryData);
            }
            this.f19266l = null;
        }
    }

    /* renamed from: m */
    private final AbstractC6167s m17357m() {
        if (this.f19267m == null) {
            this.f19267m = C6164r.m16993a(this.f19268n);
        }
        return this.f19267m;
    }

    @RecentlyNonNull
    /* renamed from: n */
    public static C6025f m17356n(@RecentlyNonNull Context context) {
        C6025f c6025f;
        synchronized (f19260f) {
            if (f19261g == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                f19261g = new C6025f(context.getApplicationContext(), handlerThread.getLooper(), C6084b.m17237m());
            }
            c6025f = f19261g;
        }
        return c6025f;
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x03e0  */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(@androidx.annotation.RecentlyNonNull android.os.Message r9) {
        /*
            Method dump skipped, instructions count: 1444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.C6025f.handleMessage(android.os.Message):boolean");
    }

    /* renamed from: o */
    public final int m17355o() {
        return this.f19271q.getAndIncrement();
    }

    /* renamed from: p */
    public final void m17354p(@RecentlyNonNull AbstractC5996c<?> abstractC5996c) {
        Handler handler = this.f19277w;
        handler.sendMessage(handler.obtainMessage(7, abstractC5996c));
    }

    /* renamed from: q */
    public final void m17353q(C6063t c6063t) {
        synchronized (f19260f) {
            if (this.f19274t != c6063t) {
                this.f19274t = c6063t;
                this.f19275u.clear();
            }
            this.f19275u.addAll(c6063t.m17262u());
        }
    }

    /* renamed from: r */
    public final void m17352r(C6063t c6063t) {
        synchronized (f19260f) {
            if (this.f19274t == c6063t) {
                this.f19274t = null;
                this.f19275u.clear();
            }
        }
    }

    /* renamed from: s */
    public final C6017c0 m17351s(C6012b<?> c6012b) {
        return this.f19273s.get(c6012b);
    }

    /* renamed from: t */
    public final void m17350t() {
        Handler handler = this.f19277w;
        handler.sendMessage(handler.obtainMessage(3));
    }

    /* renamed from: u */
    public final <O extends C5984a.AbstractC5988d> void m17349u(@RecentlyNonNull AbstractC5996c<O> abstractC5996c, int i, @RecentlyNonNull AbstractC6019d<? extends AbstractC6007i, C5984a.AbstractC5986b> abstractC6019d) {
        C6074y0 c6074y0 = new C6074y0(i, abstractC6019d);
        Handler handler = this.f19277w;
        handler.sendMessage(handler.obtainMessage(4, new C6050n0(c6074y0, this.f19272r.get(), abstractC5996c)));
    }

    /* renamed from: v */
    public final <O extends C5984a.AbstractC5988d, ResultT> void m17348v(@RecentlyNonNull AbstractC5996c<O> abstractC5996c, int i, @RecentlyNonNull AbstractC6056q<C5984a.AbstractC5986b, ResultT> abstractC6056q, @RecentlyNonNull C7968h<ResultT> c7968h, @RecentlyNonNull AbstractC6052o abstractC6052o) {
        m17360j(c7968h, abstractC6056q.m17293e(), abstractC5996c);
        C6076z0 c6076z0 = new C6076z0(i, abstractC6056q, c7968h, abstractC6052o);
        Handler handler = this.f19277w;
        handler.sendMessage(handler.obtainMessage(4, new C6050n0(c6076z0, this.f19272r.get(), abstractC5996c)));
    }

    /* renamed from: w */
    public final boolean m17347w() {
        if (this.f19265k) {
            return false;
        }
        RootTelemetryConfiguration m17005a = C6158p.m17004b().m17005a();
        if (m17005a != null && !m17005a.m17152m0()) {
            return false;
        }
        int m17062b = this.f19270p.m17062b(this.f19268n, 203390000);
        return m17062b == -1 || m17062b == 0;
    }

    /* renamed from: x */
    public final boolean m17346x(ConnectionResult connectionResult, int i) {
        return this.f19269o.m17232r(this.f19268n, connectionResult, i);
    }

    /* renamed from: y */
    public final void m17345y(@RecentlyNonNull ConnectionResult connectionResult, int i) {
        if (!m17346x(connectionResult, i)) {
            Handler handler = this.f19277w;
            handler.sendMessage(handler.obtainMessage(5, i, 0, connectionResult));
        }
    }

    /* renamed from: z */
    public final void m17344z(MethodInvocation methodInvocation, int i, long j, int i2) {
        Handler handler = this.f19277w;
        handler.sendMessage(handler.obtainMessage(18, new C6038j0(methodInvocation, i, j, i2)));
    }
}
