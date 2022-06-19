package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.C1554b;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.common.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/b.class */
public abstract class AbstractC1566b<T extends IInterface> {

    /* renamed from: w */
    private static final Feature[] f5826w = new Feature[0];

    /* renamed from: a */
    C1586k0 f5827a;

    /* renamed from: b */
    private final Context f5828b;

    /* renamed from: c */
    private final AbstractC1571c f5829c;

    /* renamed from: d */
    private final C1554b f5830d;

    /* renamed from: e */
    final Handler f5831e;

    /* renamed from: f */
    private final Object f5832f;

    /* renamed from: g */
    private final Object f5833g;
    @GuardedBy("mServiceBrokerLock")

    /* renamed from: h */
    private AbstractC1577f f5834h;
    @RecentlyNonNull

    /* renamed from: i */
    protected AbstractC1569c f5835i;
    @GuardedBy("mLock")

    /* renamed from: j */
    private T f5836j;

    /* renamed from: k */
    private final ArrayList<AbstractC1594v<?>> f5837k;
    @GuardedBy("mLock")

    /* renamed from: l */
    private ServiceConnectionC1595x f5838l;
    @GuardedBy("mLock")

    /* renamed from: m */
    private int f5839m;

    /* renamed from: n */
    private final AbstractC1567a f5840n;

    /* renamed from: o */
    private final AbstractC1568b f5841o;

    /* renamed from: p */
    private final int f5842p;

    /* renamed from: q */
    private final String f5843q;

    /* renamed from: r */
    private volatile String f5844r;

    /* renamed from: s */
    private ConnectionResult f5845s;

    /* renamed from: t */
    private boolean f5846t;

    /* renamed from: u */
    private volatile zzi f5847u;
    @RecentlyNonNull

    /* renamed from: v */
    protected AtomicInteger f5848v;

    /* renamed from: com.google.android.gms.common.internal.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/b$a.class */
    public interface AbstractC1567a {
        /* renamed from: a */
        void m8377a(int i);

        /* renamed from: c */
        void m8376c(Bundle bundle);
    }

    /* renamed from: com.google.android.gms.common.internal.b$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/b$b.class */
    public interface AbstractC1568b {
        /* renamed from: b */
        void m8375b(@RecentlyNonNull ConnectionResult connectionResult);
    }

    /* renamed from: com.google.android.gms.common.internal.b$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/b$c.class */
    public interface AbstractC1569c {
        /* renamed from: a */
        void m8374a(@RecentlyNonNull ConnectionResult connectionResult);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected AbstractC1566b(@androidx.annotation.RecentlyNonNull android.content.Context r11, @androidx.annotation.RecentlyNonNull android.os.Looper r12, int r13, com.google.android.gms.common.internal.AbstractC1566b.AbstractC1567a r14, com.google.android.gms.common.internal.AbstractC1566b.AbstractC1568b r15, java.lang.String r16) {
        /*
            r10 = this;
            r0 = r11
            com.google.android.gms.common.internal.c r0 = com.google.android.gms.common.internal.AbstractC1571c.m8372b(r0)
            r17 = r0
            com.google.android.gms.common.b r0 = com.google.android.gms.common.C1554b.m8455b()
            r18 = r0
            r0 = r14
            java.lang.Object r0 = com.google.android.gms.common.internal.C1581h.m8347h(r0)
            r0 = r15
            java.lang.Object r0 = com.google.android.gms.common.internal.C1581h.m8347h(r0)
            r0 = r10
            r1 = r11
            r2 = r12
            r3 = r17
            r4 = r18
            r5 = r13
            r6 = r14
            r7 = r15
            r8 = r16
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.AbstractC1566b.<init>(android.content.Context, android.os.Looper, int, com.google.android.gms.common.internal.b$a, com.google.android.gms.common.internal.b$b, java.lang.String):void");
    }

    protected AbstractC1566b(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, @RecentlyNonNull AbstractC1571c abstractC1571c, @RecentlyNonNull C1554b c1554b, int i, AbstractC1567a abstractC1567a, AbstractC1568b abstractC1568b, String str) {
        this.f5832f = new Object();
        this.f5833g = new Object();
        this.f5837k = new ArrayList<>();
        this.f5839m = 1;
        this.f5845s = null;
        this.f5846t = false;
        this.f5847u = null;
        this.f5848v = new AtomicInteger(0);
        C1581h.m8346i(context, "Context must not be null");
        this.f5828b = context;
        C1581h.m8346i(looper, "Looper must not be null");
        C1581h.m8346i(abstractC1571c, "Supervisor must not be null");
        this.f5829c = abstractC1571c;
        C1581h.m8346i(c1554b, "API availability must not be null");
        this.f5830d = c1554b;
        this.f5831e = new u(this, looper);
        this.f5842p = i;
        this.f5840n = abstractC1567a;
        this.f5841o = abstractC1568b;
        this.f5843q = str;
    }

    /* renamed from: I */
    public static /* synthetic */ void m8417I(AbstractC1566b abstractC1566b, int i) {
        int i2;
        int i3;
        synchronized (abstractC1566b.f5832f) {
            i2 = abstractC1566b.f5839m;
        }
        if (i2 == 3) {
            abstractC1566b.f5846t = true;
            i3 = 5;
        } else {
            i3 = 4;
        }
        Handler handler = abstractC1566b.f5831e;
        handler.sendMessage(handler.obtainMessage(i3, abstractC1566b.f5848v.get(), 16));
    }

    /* renamed from: M */
    static /* synthetic */ boolean m8413M(AbstractC1566b abstractC1566b) {
        boolean z = false;
        if (!abstractC1566b.f5846t && !TextUtils.isEmpty(abstractC1566b.m8386r()) && !TextUtils.isEmpty(abstractC1566b.m8391m())) {
            try {
                Class.forName(abstractC1566b.m8386r());
                z = true;
            } catch (ClassNotFoundException e) {
            }
        }
        return z;
    }

    /* renamed from: R */
    static /* synthetic */ boolean m8408R(AbstractC1566b abstractC1566b, int i, int i2, IInterface iInterface) {
        boolean z;
        synchronized (abstractC1566b.f5832f) {
            if (abstractC1566b.f5839m != i) {
                z = false;
            } else {
                abstractC1566b.m8404V(i2, iInterface);
                z = true;
            }
        }
        return z;
    }

    /* renamed from: U */
    static /* synthetic */ void m8405U(AbstractC1566b abstractC1566b, zzi zziVar) {
        abstractC1566b.f5847u = zziVar;
        if (abstractC1566b.m8420F()) {
            ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zziVar.e;
            C1583i.m8342a().m8341b(connectionTelemetryConfiguration == null ? null : connectionTelemetryConfiguration.F());
        }
    }

    /* renamed from: V */
    public final void m8404V(int i, T t) {
        C1586k0 c1586k0;
        boolean z = false;
        if ((i == 4) == (t != null)) {
            z = true;
        }
        C1581h.m8354a(z);
        synchronized (this.f5832f) {
            this.f5839m = i;
            this.f5836j = t;
            if (i == 1) {
                ServiceConnectionC1595x serviceConnectionC1595x = this.f5838l;
                if (serviceConnectionC1595x != null) {
                    AbstractC1571c abstractC1571c = this.f5829c;
                    String m8339a = this.f5827a.m8339a();
                    C1581h.m8347h(m8339a);
                    abstractC1571c.m8371c(m8339a, this.f5827a.m8338b(), this.f5827a.m8337c(), serviceConnectionC1595x, m8419G(), this.f5827a.m8336d());
                    this.f5838l = null;
                }
            } else if (i == 2 || i == 3) {
                ServiceConnectionC1595x serviceConnectionC1595x2 = this.f5838l;
                if (serviceConnectionC1595x2 != null && (c1586k0 = this.f5827a) != null) {
                    String m8339a2 = c1586k0.m8339a();
                    String m8338b = this.f5827a.m8338b();
                    StringBuilder sb = new StringBuilder(String.valueOf(m8339a2).length() + 70 + String.valueOf(m8338b).length());
                    sb.append("Calling connect() while still connected, missing disconnect() for ");
                    sb.append(m8339a2);
                    sb.append(" on ");
                    sb.append(m8338b);
                    Log.e("GmsClient", sb.toString());
                    AbstractC1571c abstractC1571c2 = this.f5829c;
                    String m8339a3 = this.f5827a.m8339a();
                    C1581h.m8347h(m8339a3);
                    abstractC1571c2.m8371c(m8339a3, this.f5827a.m8338b(), this.f5827a.m8337c(), serviceConnectionC1595x2, m8419G(), this.f5827a.m8336d());
                    this.f5848v.incrementAndGet();
                }
                ServiceConnectionC1595x serviceConnectionC1595x3 = new ServiceConnectionC1595x(this, this.f5848v.get());
                this.f5838l = serviceConnectionC1595x3;
                C1586k0 c1586k02 = (this.f5839m != 3 || m8391m() == null) ? new C1586k0(m8384t(), m8385s(), false, AbstractC1571c.m8373a(), m8383u()) : new C1586k0(m8393k().getPackageName(), m8391m(), true, AbstractC1571c.m8373a(), false);
                this.f5827a = c1586k02;
                if (c1586k02.m8336d() && m8390n() < 17895000) {
                    String valueOf = String.valueOf(this.f5827a.m8339a());
                    throw new IllegalStateException(valueOf.length() != 0 ? "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(valueOf) : new String("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "));
                }
                AbstractC1571c abstractC1571c3 = this.f5829c;
                String m8339a4 = this.f5827a.m8339a();
                C1581h.m8347h(m8339a4);
                if (!abstractC1571c3.m8370d(new C1576e0(m8339a4, this.f5827a.m8338b(), this.f5827a.m8337c(), this.f5827a.m8336d()), serviceConnectionC1595x3, m8419G())) {
                    String m8339a5 = this.f5827a.m8339a();
                    String m8338b2 = this.f5827a.m8338b();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(m8339a5).length() + 34 + String.valueOf(m8338b2).length());
                    sb2.append("unable to connect to service: ");
                    sb2.append(m8339a5);
                    sb2.append(" on ");
                    sb2.append(m8338b2);
                    Log.e("GmsClient", sb2.toString());
                    m8418H(16, null, this.f5848v.get());
                }
            } else if (i == 4) {
                C1581h.m8347h(t);
                m8380x(t);
            }
        }
    }

    /* renamed from: A */
    protected void m8425A(int i, IBinder iBinder, Bundle bundle, int i2) {
        Handler handler = this.f5831e;
        handler.sendMessage(handler.obtainMessage(1, i2, -1, new y(this, i, iBinder, bundle)));
    }

    /* renamed from: B */
    public boolean m8424B() {
        return false;
    }

    /* renamed from: C */
    public boolean m8423C() {
        return false;
    }

    /* renamed from: D */
    public void m8422D(int i) {
        Handler handler = this.f5831e;
        handler.sendMessage(handler.obtainMessage(6, this.f5848v.get(), i));
    }

    /* renamed from: E */
    protected void m8421E(@RecentlyNonNull AbstractC1569c abstractC1569c, int i, PendingIntent pendingIntent) {
        C1581h.m8346i(abstractC1569c, "Connection progress callbacks cannot be null.");
        this.f5835i = abstractC1569c;
        Handler handler = this.f5831e;
        handler.sendMessage(handler.obtainMessage(3, this.f5848v.get(), i, pendingIntent));
    }

    /* renamed from: F */
    public boolean m8420F() {
        return false;
    }

    @RecentlyNonNull
    /* renamed from: G */
    protected final String m8419G() {
        String str = this.f5843q;
        String str2 = str;
        if (str == null) {
            str2 = this.f5828b.getClass().getName();
        }
        return str2;
    }

    /* renamed from: H */
    public final void m8418H(int i, Bundle bundle, int i2) {
        Handler handler = this.f5831e;
        handler.sendMessage(handler.obtainMessage(7, i2, -1, new z(this, i, (Bundle) null)));
    }

    /* renamed from: a */
    public void m8403a() {
        int m8453d = this.f5830d.m8453d(this.f5828b, m8390n());
        if (m8453d == 0) {
            m8401c(new d(this));
            return;
        }
        m8404V(1, null);
        m8421E(new d(this), m8453d, null);
    }

    /* renamed from: b */
    protected final void m8402b() {
        if (m8382v()) {
            return;
        }
        throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }

    /* renamed from: c */
    public void m8401c(@RecentlyNonNull AbstractC1569c abstractC1569c) {
        C1581h.m8346i(abstractC1569c, "Connection progress callbacks cannot be null.");
        this.f5835i = abstractC1569c;
        m8404V(2, null);
    }

    @RecentlyNullable
    /* renamed from: d */
    protected abstract T m8400d(@RecentlyNonNull IBinder iBinder);

    /* renamed from: e */
    public void m8399e() {
        this.f5848v.incrementAndGet();
        synchronized (this.f5837k) {
            try {
                int size = this.f5837k.size();
                for (int i = 0; i < size; i++) {
                    this.f5837k.get(i).m8274e();
                }
                this.f5837k.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.f5833g) {
            this.f5834h = null;
        }
        m8404V(1, null);
    }

    /* renamed from: f */
    protected boolean m8398f() {
        return false;
    }

    @RecentlyNullable
    /* renamed from: g */
    public Account m8397g() {
        return null;
    }

    @RecentlyNonNull
    /* renamed from: h */
    public Feature[] m8396h() {
        return f5826w;
    }

    @RecentlyNullable
    /* renamed from: i */
    public final Feature[] m8395i() {
        zzi zziVar = this.f5847u;
        if (zziVar == null) {
            return null;
        }
        return zziVar.c;
    }

    @RecentlyNullable
    /* renamed from: j */
    public Bundle m8394j() {
        return null;
    }

    @RecentlyNonNull
    /* renamed from: k */
    public final Context m8393k() {
        return this.f5828b;
    }

    @RecentlyNonNull
    /* renamed from: l */
    protected Bundle m8392l() {
        return new Bundle();
    }

    @RecentlyNullable
    /* renamed from: m */
    protected String m8391m() {
        return null;
    }

    /* renamed from: n */
    public int m8390n() {
        return C1554b.f5810a;
    }

    /* renamed from: o */
    public void m8389o(AbstractC1573d abstractC1573d, @RecentlyNonNull Set<Scope> set) {
        Throwable e;
        Bundle m8392l = m8392l();
        GetServiceRequest getServiceRequest = new GetServiceRequest(this.f5842p, this.f5844r);
        getServiceRequest.e = this.f5828b.getPackageName();
        getServiceRequest.h = m8392l;
        if (set != null) {
            getServiceRequest.g = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (m8423C()) {
            Account m8397g = m8397g();
            Account account = m8397g;
            if (m8397g == null) {
                account = new Account("<<default account>>", "com.google");
            }
            getServiceRequest.i = account;
            if (abstractC1573d != null) {
                getServiceRequest.f = abstractC1573d.asBinder();
            }
        } else if (m8424B()) {
            getServiceRequest.i = m8397g();
        }
        getServiceRequest.j = f5826w;
        getServiceRequest.k = m8396h();
        if (m8420F()) {
            getServiceRequest.n = true;
        }
        try {
            synchronized (this.f5833g) {
                AbstractC1577f abstractC1577f = this.f5834h;
                if (abstractC1577f != null) {
                    abstractC1577f.m8359e3(new w(this, this.f5848v.get()), getServiceRequest);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e2);
            m8422D(3);
        } catch (RemoteException e3) {
            e = e3;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            m8425A(8, null, null, this.f5848v.get());
        } catch (SecurityException e4) {
            throw e4;
        } catch (RuntimeException e5) {
            e = e5;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            m8425A(8, null, null, this.f5848v.get());
        }
    }

    @RecentlyNonNull
    /* renamed from: p */
    protected Set<Scope> m8388p() {
        return Collections.emptySet();
    }

    @RecentlyNonNull
    /* renamed from: q */
    public final T m8387q() {
        T t;
        synchronized (this.f5832f) {
            if (this.f5839m == 5) {
                throw new DeadObjectException();
            }
            m8402b();
            t = this.f5836j;
            C1581h.m8346i(t, "Client is connected but service is null");
        }
        return t;
    }

    /* renamed from: r */
    protected abstract String m8386r();

    /* renamed from: s */
    protected abstract String m8385s();

    @RecentlyNonNull
    /* renamed from: t */
    protected String m8384t() {
        return "com.google.android.gms";
    }

    /* renamed from: u */
    protected boolean m8383u() {
        return false;
    }

    /* renamed from: v */
    public boolean m8382v() {
        boolean z;
        synchronized (this.f5832f) {
            z = this.f5839m == 4;
        }
        return z;
    }

    /* renamed from: w */
    public boolean m8381w() {
        boolean z;
        synchronized (this.f5832f) {
            int i = this.f5839m;
            z = true;
            if (i != 2) {
                z = i == 3;
            }
        }
        return z;
    }

    /* renamed from: x */
    protected void m8380x(@RecentlyNonNull T t) {
        System.currentTimeMillis();
    }

    /* renamed from: y */
    protected void m8379y(@RecentlyNonNull ConnectionResult connectionResult) {
        connectionResult.a();
        System.currentTimeMillis();
    }

    /* renamed from: z */
    protected void m8378z(int i) {
        System.currentTimeMillis();
    }
}
