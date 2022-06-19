package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.p023b.C0430b;
import com.google.android.gms.common.C11937b;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AbstractC11823f;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11892d;
import com.google.android.gms.common.internal.AbstractC12049s;
import com.google.android.gms.common.internal.C11980af;
import com.google.android.gms.common.internal.C12046p;
import com.google.android.gms.common.internal.C12048r;
import com.google.android.gms.common.internal.C12052t;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.util.C12106j;
import com.google.android.gms.internal.base.HandlerC13160j;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14176ah;
import com.google.android.gms.tasks.C14186i;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* renamed from: com.google.android.gms.common.api.internal.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/f.class */
public final class C11896f implements Handler.Callback {

    /* renamed from: o */
    private static C11896f f39346o;
    @NotOnlyInitialized

    /* renamed from: g */
    public final Handler f39351g;

    /* renamed from: m */
    private TelemetryData f39356m;

    /* renamed from: n */
    private AbstractC12049s f39357n;

    /* renamed from: p */
    private final Context f39358p;

    /* renamed from: q */
    private final C11937b f39359q;

    /* renamed from: r */
    private final C11980af f39360r;

    /* renamed from: u */
    private volatile boolean f39363u;

    /* renamed from: a */
    public static final Status f39343a = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: h */
    private static final Status f39345h = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: b */
    static final Object f39344b = new Object();

    /* renamed from: i */
    private long f39352i = 5000;

    /* renamed from: j */
    private long f39353j = 120000;

    /* renamed from: k */
    private long f39354k = 10000;

    /* renamed from: l */
    private boolean f39355l = false;

    /* renamed from: c */
    public final AtomicInteger f39347c = new AtomicInteger(1);

    /* renamed from: d */
    public final AtomicInteger f39348d = new AtomicInteger(0);

    /* renamed from: s */
    private final Map<C11859b<?>, C11838af<?>> f39361s = new ConcurrentHashMap(5, 0.75f, 1);

    /* renamed from: e */
    C11917w f39349e = null;

    /* renamed from: f */
    final Set<C11859b<?>> f39350f = new C0430b();

    /* renamed from: t */
    private final Set<C11859b<?>> f39362t = new C0430b();

    private C11896f(Context context, Looper looper, C11937b c11937b) {
        this.f39363u = true;
        this.f39358p = context;
        HandlerC13160j handlerC13160j = new HandlerC13160j(looper, this);
        this.f39351g = handlerC13160j;
        this.f39359q = c11937b;
        this.f39360r = new C11980af(c11937b);
        if (C12106j.m19032b(context.getPackageManager())) {
            this.f39363u = false;
        }
        handlerC13160j.sendMessage(handlerC13160j.obtainMessage(6));
    }

    /* renamed from: a */
    public static C11896f m19355a(Context context) {
        C11896f c11896f;
        synchronized (f39344b) {
            if (f39346o == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                f39346o = new C11896f(context.getApplicationContext(), handlerThread.getLooper(), C11937b.m19287a());
            }
            c11896f = f39346o;
        }
        return c11896f;
    }

    /* renamed from: a */
    public static void m19356a() {
        synchronized (f39344b) {
            C11896f c11896f = f39346o;
            if (c11896f != null) {
                c11896f.f39348d.incrementAndGet();
                Handler handler = c11896f.f39351g;
                handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
            }
        }
    }

    /* renamed from: b */
    public static Status m19341b(C11859b<?> c11859b, ConnectionResult connectionResult) {
        String str = c11859b.f39267a.f39177c;
        String valueOf = String.valueOf(connectionResult);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(valueOf).length());
        sb.append("API: ");
        sb.append(str);
        sb.append(" is not available on this device. Connection failed with: ");
        sb.append(valueOf);
        return new Status(connectionResult, sb.toString());
    }

    /* renamed from: b */
    private final C11838af<?> m19342b(AbstractC11823f<?> abstractC11823f) {
        C11859b<?> c11859b = abstractC11823f.f39181c;
        C11838af<?> c11838af = this.f39361s.get(c11859b);
        C11838af<?> c11838af2 = c11838af;
        if (c11838af == null) {
            c11838af2 = new C11838af<>(this, abstractC11823f);
            this.f39361s.put(c11859b, c11838af2);
        }
        if (c11838af2.m19410g()) {
            this.f39362t.add(c11859b);
        }
        c11838af2.m19411f();
        return c11838af2;
    }

    /* renamed from: f */
    private final void m19333f() {
        TelemetryData telemetryData = this.f39356m;
        if (telemetryData != null) {
            if (telemetryData.zaa() > 0 || m19339c()) {
                m19331g().mo19147a(telemetryData);
            }
            this.f39356m = null;
        }
    }

    /* renamed from: g */
    private final AbstractC12049s m19331g() {
        if (this.f39357n == null) {
            this.f39357n = C12048r.m19148a(this.f39358p, C12052t.f39571a);
        }
        return this.f39357n;
    }

    /* renamed from: a */
    public final C11838af m19349a(C11859b<?> c11859b) {
        return this.f39361s.get(c11859b);
    }

    /* renamed from: a */
    public final <O extends C11808a.AbstractC11812d> AbstractC14185h<Void> m19350a(AbstractC11823f<O> abstractC11823f, AbstractC11906n<C11808a.AbstractC11810b, ?> abstractC11906n, AbstractC11915u<C11808a.AbstractC11810b, ?> abstractC11915u, Runnable runnable) {
        C14186i c14186i = new C14186i();
        m19345a(c14186i, abstractC11906n.f39387d, abstractC11823f);
        C11873bn c11873bn = new C11873bn(new C11851as(abstractC11906n, abstractC11915u, runnable), c14186i);
        Handler handler = this.f39351g;
        handler.sendMessage(handler.obtainMessage(8, new C11850ar(c11873bn, this.f39348d.get(), abstractC11823f)));
        return c14186i.f52142a;
    }

    /* renamed from: a */
    public final void m19353a(AbstractC11823f<?> abstractC11823f) {
        Handler handler = this.f39351g;
        handler.sendMessage(handler.obtainMessage(7, abstractC11823f));
    }

    /* renamed from: a */
    public final <O extends C11808a.AbstractC11812d> void m19352a(AbstractC11823f<O> abstractC11823f, int i, C11892d.AbstractC11893a<? extends AbstractC11925m, C11808a.AbstractC11810b> abstractC11893a) {
        C11872bm c11872bm = new C11872bm(i, abstractC11893a);
        Handler handler = this.f39351g;
        handler.sendMessage(handler.obtainMessage(4, new C11850ar(c11872bm, this.f39348d.get(), abstractC11823f)));
    }

    /* renamed from: a */
    public final <O extends C11808a.AbstractC11812d, ResultT> void m19351a(AbstractC11823f<O> abstractC11823f, int i, AbstractC11912s<C11808a.AbstractC11810b, ResultT> abstractC11912s, C14186i<ResultT> c14186i, AbstractC11910q abstractC11910q) {
        m19345a(c14186i, abstractC11912s.f39400c, abstractC11823f);
        C11874bo c11874bo = new C11874bo(i, abstractC11912s, c14186i, abstractC11910q);
        Handler handler = this.f39351g;
        handler.sendMessage(handler.obtainMessage(4, new C11850ar(c11874bo, this.f39348d.get(), abstractC11823f)));
    }

    /* renamed from: a */
    public final void m19346a(C11917w c11917w) {
        synchronized (f39344b) {
            if (this.f39349e != c11917w) {
                this.f39349e = c11917w;
                this.f39350f.clear();
            }
            this.f39350f.addAll(c11917w.f39408b);
        }
    }

    /* renamed from: a */
    public final <T> void m19345a(C14186i<T> c14186i, int i, AbstractC11823f abstractC11823f) {
        C11845am m19399a;
        if (i == 0 || (m19399a = C11845am.m19399a(this, i, (C11859b<?>) abstractC11823f.f39181c)) == null) {
            return;
        }
        C14176ah<T> c14176ah = c14186i.f52142a;
        Handler handler = this.f39351g;
        handler.getClass();
        c14176ah.mo11482a(ExecutorC11920z.m19301a(handler), m19399a);
    }

    /* renamed from: a */
    public final boolean m19354a(ConnectionResult connectionResult, int i) {
        return this.f39359q.m19281a(this.f39358p, connectionResult, i);
    }

    /* renamed from: b */
    public final void m19344b() {
        Handler handler = this.f39351g;
        handler.sendMessage(handler.obtainMessage(3));
    }

    /* renamed from: b */
    public final void m19343b(ConnectionResult connectionResult, int i) {
        if (!m19354a(connectionResult, i)) {
            Handler handler = this.f39351g;
            handler.sendMessage(handler.obtainMessage(5, i, 0, connectionResult));
        }
    }

    /* renamed from: c */
    public final boolean m19339c() {
        if (this.f39355l) {
            return false;
        }
        RootTelemetryConfiguration rootTelemetryConfiguration = C12046p.m19151a().f39568a;
        if (rootTelemetryConfiguration != null && !rootTelemetryConfiguration.getMethodInvocationTelemetryEnabled()) {
            return false;
        }
        int m19224a = this.f39360r.m19224a(203390000);
        return m19224a == -1 || m19224a == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:154:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0378  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0447  */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r9) {
        /*
            Method dump skipped, instructions count: 1585
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.C11896f.handleMessage(android.os.Message):boolean");
    }
}
