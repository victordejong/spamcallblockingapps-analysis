package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.b;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.af;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.t;
import com.google.android.gms.internal.base.j;
import com.google.android.gms.tasks.ah;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.i;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/f.class */
public final class f implements Handler.Callback {
    private static f o;
    @NotOnlyInitialized
    public final Handler g;
    private TelemetryData m;
    private s n;
    private final Context p;
    private final b q;
    private final af r;
    private volatile boolean u;

    /* renamed from: a  reason: collision with root package name */
    public static final Status f22734a = new Status(4, "Sign-out occurred while this API call was in progress.");
    private static final Status h = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: b  reason: collision with root package name */
    static final Object f22735b = new Object();
    private long i = 5000;
    private long j = 120000;
    private long k = 10000;
    private boolean l = false;

    /* renamed from: c  reason: collision with root package name */
    public final AtomicInteger f22736c = new AtomicInteger(1);

    /* renamed from: d  reason: collision with root package name */
    public final AtomicInteger f22737d = new AtomicInteger(0);
    private final Map<b<?>, af<?>> s = new ConcurrentHashMap(5, 0.75f, 1);
    w e = null;
    final Set<b<?>> f = new androidx.b.b();
    private final Set<b<?>> t = new androidx.b.b();

    private f(Context context, Looper looper, b bVar) {
        this.u = true;
        this.p = context;
        j jVar = new j(looper, this);
        this.g = jVar;
        this.q = bVar;
        this.r = new af(bVar);
        if (com.google.android.gms.common.util.j.b(context.getPackageManager())) {
            this.u = false;
        }
        jVar.sendMessage(jVar.obtainMessage(6));
    }

    public static f a(Context context) {
        f fVar;
        synchronized (f22735b) {
            if (o == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                o = new f(context.getApplicationContext(), handlerThread.getLooper(), b.a());
            }
            fVar = o;
        }
        return fVar;
    }

    public static void a() {
        synchronized (f22735b) {
            f fVar = o;
            if (fVar != null) {
                fVar.f22737d.incrementAndGet();
                Handler handler = fVar.g;
                handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Status b(b<?> bVar, ConnectionResult connectionResult) {
        String str = bVar.f22670a.f22612c;
        String valueOf = String.valueOf(connectionResult);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(valueOf).length());
        sb.append("API: ");
        sb.append(str);
        sb.append(" is not available on this device. Connection failed with: ");
        sb.append(valueOf);
        return new Status(connectionResult, sb.toString());
    }

    private final af<?> b(com.google.android.gms.common.api.f<?> fVar) {
        b<?> bVar = fVar.f22615c;
        af<?> afVar = this.s.get(bVar);
        af<?> afVar2 = afVar;
        if (afVar == null) {
            afVar2 = new af<>(this, fVar);
            this.s.put(bVar, afVar2);
        }
        if (afVar2.g()) {
            this.t.add(bVar);
        }
        afVar2.f();
        return afVar2;
    }

    private final void f() {
        TelemetryData telemetryData = this.m;
        if (telemetryData != null) {
            if (telemetryData.zaa() > 0 || c()) {
                g().a(telemetryData);
            }
            this.m = null;
        }
    }

    private final s g() {
        if (this.n == null) {
            this.n = r.a(this.p, t.f22905a);
        }
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final af a(b<?> bVar) {
        return this.s.get(bVar);
    }

    public final <O extends a.d> h<Void> a(com.google.android.gms.common.api.f<O> fVar, n<a.b, ?> nVar, u<a.b, ?> uVar, Runnable runnable) {
        i iVar = new i();
        a(iVar, nVar.f22753d, fVar);
        bn bnVar = new bn(new as(nVar, uVar, runnable), iVar);
        Handler handler = this.g;
        handler.sendMessage(handler.obtainMessage(8, new ar(bnVar, this.f22737d.get(), fVar)));
        return iVar.f30014a;
    }

    public final void a(com.google.android.gms.common.api.f<?> fVar) {
        Handler handler = this.g;
        handler.sendMessage(handler.obtainMessage(7, fVar));
    }

    public final <O extends a.d> void a(com.google.android.gms.common.api.f<O> fVar, int i, d.a<? extends m, a.b> aVar) {
        bm bmVar = new bm(i, aVar);
        Handler handler = this.g;
        handler.sendMessage(handler.obtainMessage(4, new ar(bmVar, this.f22737d.get(), fVar)));
    }

    public final <O extends a.d, ResultT> void a(com.google.android.gms.common.api.f<O> fVar, int i, s<a.b, ResultT> sVar, i<ResultT> iVar, q qVar) {
        a(iVar, sVar.f22763c, fVar);
        bo boVar = new bo(i, sVar, iVar, qVar);
        Handler handler = this.g;
        handler.sendMessage(handler.obtainMessage(4, new ar(boVar, this.f22737d.get(), fVar)));
    }

    public final void a(w wVar) {
        synchronized (f22735b) {
            if (this.e != wVar) {
                this.e = wVar;
                this.f.clear();
            }
            this.f.addAll(wVar.f22771b);
        }
    }

    public final <T> void a(i<T> iVar, int i, com.google.android.gms.common.api.f fVar) {
        am a2;
        if (i != 0 && (a2 = am.a(this, i, (b<?>) fVar.f22615c)) != null) {
            ah<T> ahVar = iVar.f30014a;
            Handler handler = this.g;
            handler.getClass();
            ahVar.a(z.a(handler), a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(ConnectionResult connectionResult, int i) {
        return this.q.a(this.p, connectionResult, i);
    }

    public final void b() {
        Handler handler = this.g;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public final void b(ConnectionResult connectionResult, int i) {
        if (!a(connectionResult, i)) {
            Handler handler = this.g;
            handler.sendMessage(handler.obtainMessage(5, i, 0, connectionResult));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c() {
        if (this.l) {
            return false;
        }
        RootTelemetryConfiguration rootTelemetryConfiguration = p.a().f22902a;
        if (rootTelemetryConfiguration != null && !rootTelemetryConfiguration.getMethodInvocationTelemetryEnabled()) {
            return false;
        }
        int a2 = this.r.a(203390000);
        return a2 == -1 || a2 == 0;
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.f.handleMessage(android.os.Message):boolean");
    }
}
