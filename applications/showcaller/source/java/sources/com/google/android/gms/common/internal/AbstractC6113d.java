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
import com.google.android.gms.common.C6086c;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.common.internal.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/d.class */
public abstract class AbstractC6113d<T extends IInterface> {

    /* renamed from: A */
    private volatile String f19498A;

    /* renamed from: B */
    private ConnectionResult f19499B;

    /* renamed from: C */
    private boolean f19500C;

    /* renamed from: D */
    private volatile zzi f19501D;
    @RecentlyNonNull

    /* renamed from: E */
    protected AtomicInteger f19502E;

    /* renamed from: c */
    private int f19503c;

    /* renamed from: d */
    private long f19504d;

    /* renamed from: e */
    private long f19505e;

    /* renamed from: f */
    private int f19506f;

    /* renamed from: g */
    private long f19507g;

    /* renamed from: h */
    private volatile String f19508h;

    /* renamed from: i */
    C6166r1 f19509i;

    /* renamed from: j */
    private final Context f19510j;

    /* renamed from: k */
    private final Looper f19511k;

    /* renamed from: l */
    private final AbstractC6128g f19512l;

    /* renamed from: m */
    private final C6086c f19513m;

    /* renamed from: n */
    final Handler f19514n;

    /* renamed from: o */
    private final Object f19515o;

    /* renamed from: p */
    private final Object f19516p;

    /* renamed from: q */
    private AbstractC6144l f19517q;
    @RecentlyNonNull

    /* renamed from: r */
    protected AbstractC6116c f19518r;

    /* renamed from: s */
    private T f19519s;

    /* renamed from: t */
    private final ArrayList<AbstractC6109b1<?>> f19520t;

    /* renamed from: u */
    private ServiceConnectionC6120d1 f19521u;

    /* renamed from: v */
    private int f19522v;

    /* renamed from: w */
    private final AbstractC6114a f19523w;

    /* renamed from: x */
    private final AbstractC6115b f19524x;

    /* renamed from: y */
    private final int f19525y;

    /* renamed from: z */
    private final String f19526z;

    /* renamed from: b */
    private static final Feature[] f19497b = new Feature[0];
    @RecentlyNonNull

    /* renamed from: a */
    public static final String[] f19496a = {"service_esmobile", "service_googleme"};

    /* renamed from: com.google.android.gms.common.internal.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/d$a.class */
    public interface AbstractC6114a {
        /* renamed from: J0 */
        void mo6337J0(Bundle bundle);

        /* renamed from: c0 */
        void mo6333c0(int i);
    }

    /* renamed from: com.google.android.gms.common.internal.d$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/d$b.class */
    public interface AbstractC6115b {
        /* renamed from: D0 */
        void mo6338D0(@RecentlyNonNull ConnectionResult connectionResult);
    }

    /* renamed from: com.google.android.gms.common.internal.d$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/d$c.class */
    public interface AbstractC6116c {
        /* renamed from: a */
        void mo17087a(@RecentlyNonNull ConnectionResult connectionResult);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: com.google.android.gms.common.internal.d$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/d$d.class */
    public class C6117d implements AbstractC6116c {
        public C6117d() {
            AbstractC6113d.this = r4;
        }

        @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6116c
        /* renamed from: a */
        public final void mo17087a(@RecentlyNonNull ConnectionResult connectionResult) {
            if (connectionResult.m17502o0()) {
                AbstractC6113d abstractC6113d = AbstractC6113d.this;
                abstractC6113d.m17107d(null, abstractC6113d.mo17069B());
            } else if (AbstractC6113d.this.f19524x == null) {
            } else {
                AbstractC6113d.this.f19524x.mo6338D0(connectionResult);
            }
        }
    }

    /* renamed from: com.google.android.gms.common.internal.d$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/d$e.class */
    public interface AbstractC6118e {
        /* renamed from: a */
        void mo17086a();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC6113d(@androidx.annotation.RecentlyNonNull android.content.Context r11, @androidx.annotation.RecentlyNonNull android.os.Looper r12, int r13, com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a r14, com.google.android.gms.common.internal.AbstractC6113d.AbstractC6115b r15, java.lang.String r16) {
        /*
            r10 = this;
            r0 = r11
            com.google.android.gms.common.internal.g r0 = com.google.android.gms.common.internal.AbstractC6128g.m17058c(r0)
            r17 = r0
            com.google.android.gms.common.c r0 = com.google.android.gms.common.C6086c.m17221f()
            r18 = r0
            r0 = r14
            java.lang.Object r0 = com.google.android.gms.common.internal.C6155o.m17018j(r0)
            r0 = r15
            java.lang.Object r0 = com.google.android.gms.common.internal.C6155o.m17018j(r0)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.AbstractC6113d.<init>(android.content.Context, android.os.Looper, int, com.google.android.gms.common.internal.d$a, com.google.android.gms.common.internal.d$b, java.lang.String):void");
    }

    public AbstractC6113d(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, @RecentlyNonNull AbstractC6128g abstractC6128g, @RecentlyNonNull C6086c c6086c, int i, AbstractC6114a abstractC6114a, AbstractC6115b abstractC6115b, String str) {
        this.f19508h = null;
        this.f19515o = new Object();
        this.f19516p = new Object();
        this.f19520t = new ArrayList<>();
        this.f19522v = 1;
        this.f19499B = null;
        this.f19500C = false;
        this.f19501D = null;
        this.f19502E = new AtomicInteger(0);
        C6155o.m17017k(context, "Context must not be null");
        this.f19510j = context;
        C6155o.m17017k(looper, "Looper must not be null");
        this.f19511k = looper;
        C6155o.m17017k(abstractC6128g, "Supervisor must not be null");
        this.f19512l = abstractC6128g;
        C6155o.m17017k(c6086c, "API availability must not be null");
        this.f19513m = c6086c;
        this.f19514n = new HandlerC6106a1(this, looper);
        this.f19525y = i;
        this.f19523w = abstractC6114a;
        this.f19524x = abstractC6115b;
        this.f19526z = str;
    }

    /* renamed from: U */
    public static /* synthetic */ void m17118U(AbstractC6113d abstractC6113d, int i) {
        int i2;
        int i3;
        synchronized (abstractC6113d.f19515o) {
            i2 = abstractC6113d.f19522v;
        }
        if (i2 == 3) {
            abstractC6113d.f19500C = true;
            i3 = 5;
        } else {
            i3 = 4;
        }
        Handler handler = abstractC6113d.f19514n;
        handler.sendMessage(handler.obtainMessage(i3, abstractC6113d.f19502E.get(), 16));
    }

    /* renamed from: Y */
    public static /* synthetic */ boolean m17114Y(AbstractC6113d abstractC6113d) {
        boolean z = false;
        if (!abstractC6113d.f19500C && !TextUtils.isEmpty(abstractC6113d.mo5861D()) && !TextUtils.isEmpty(abstractC6113d.m17133A())) {
            try {
                Class.forName(abstractC6113d.mo5861D());
                z = true;
            } catch (ClassNotFoundException e) {
            }
        }
        return z;
    }

    /* renamed from: d0 */
    public static /* synthetic */ boolean m17106d0(AbstractC6113d abstractC6113d, int i, int i2, IInterface iInterface) {
        boolean z;
        synchronized (abstractC6113d.f19515o) {
            if (abstractC6113d.f19522v != i) {
                z = false;
            } else {
                abstractC6113d.m17098h0(i2, iInterface);
                z = true;
            }
        }
        return z;
    }

    /* renamed from: g0 */
    public static /* synthetic */ void m17100g0(AbstractC6113d abstractC6113d, zzi zziVar) {
        abstractC6113d.f19501D = zziVar;
        if (abstractC6113d.mo7845R()) {
            ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zziVar.f19636g;
            C6158p.m17004b().m17003c(connectionTelemetryConfiguration == null ? null : connectionTelemetryConfiguration.m17156p0());
        }
    }

    /* renamed from: h0 */
    public final void m17098h0(int i, T t) {
        C6166r1 c6166r1;
        boolean z = false;
        if ((i == 4) == (t != null)) {
            z = true;
        }
        C6155o.m17027a(z);
        synchronized (this.f19515o) {
            this.f19522v = i;
            this.f19519s = t;
            if (i == 1) {
                ServiceConnectionC6120d1 serviceConnectionC6120d1 = this.f19521u;
                if (serviceConnectionC6120d1 != null) {
                    AbstractC6128g abstractC6128g = this.f19512l;
                    String m16991a = this.f19509i.m16991a();
                    C6155o.m17018j(m16991a);
                    abstractC6128g.m17056e(m16991a, this.f19509i.m16990b(), this.f19509i.m16989c(), serviceConnectionC6120d1, m17120S(), this.f19509i.m16988d());
                    this.f19521u = null;
                }
            } else if (i == 2 || i == 3) {
                ServiceConnectionC6120d1 serviceConnectionC6120d12 = this.f19521u;
                if (serviceConnectionC6120d12 != null && (c6166r1 = this.f19509i) != null) {
                    String m16991a2 = c6166r1.m16991a();
                    String m16990b = this.f19509i.m16990b();
                    StringBuilder sb = new StringBuilder(String.valueOf(m16991a2).length() + 70 + String.valueOf(m16990b).length());
                    sb.append("Calling connect() while still connected, missing disconnect() for ");
                    sb.append(m16991a2);
                    sb.append(" on ");
                    sb.append(m16990b);
                    Log.e("GmsClient", sb.toString());
                    AbstractC6128g abstractC6128g2 = this.f19512l;
                    String m16991a3 = this.f19509i.m16991a();
                    C6155o.m17018j(m16991a3);
                    abstractC6128g2.m17056e(m16991a3, this.f19509i.m16990b(), this.f19509i.m16989c(), serviceConnectionC6120d12, m17120S(), this.f19509i.m16988d());
                    this.f19502E.incrementAndGet();
                }
                ServiceConnectionC6120d1 serviceConnectionC6120d13 = new ServiceConnectionC6120d1(this, this.f19502E.get());
                this.f19521u = serviceConnectionC6120d13;
                C6166r1 c6166r12 = (this.f19522v != 3 || m17133A() == null) ? new C6166r1(m17131F(), mo5860E(), false, AbstractC6128g.m17059b(), mo7846H()) : new C6166r1(m17089x().getPackageName(), m17133A(), true, AbstractC6128g.m17059b(), false);
                this.f19509i = c6166r12;
                if (c6166r12.m16988d() && mo5858l() < 17895000) {
                    String valueOf = String.valueOf(this.f19509i.m16991a());
                    throw new IllegalStateException(valueOf.length() != 0 ? "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(valueOf) : new String("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "));
                }
                AbstractC6128g abstractC6128g3 = this.f19512l;
                String m16991a4 = this.f19509i.m16991a();
                C6155o.m17018j(m16991a4);
                if (!abstractC6128g3.mo17012f(new C6143k1(m16991a4, this.f19509i.m16990b(), this.f19509i.m16989c(), this.f19509i.m16988d()), serviceConnectionC6120d13, m17120S())) {
                    String m16991a5 = this.f19509i.m16991a();
                    String m16990b2 = this.f19509i.m16990b();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(m16991a5).length() + 34 + String.valueOf(m16990b2).length());
                    sb2.append("unable to connect to service: ");
                    sb2.append(m16991a5);
                    sb2.append(" on ");
                    sb2.append(m16990b2);
                    Log.e("GmsClient", sb2.toString());
                    m17119T(16, null, this.f19502E.get());
                }
            } else if (i == 4) {
                C6155o.m17018j(t);
                m17128J(t);
            }
        }
    }

    @RecentlyNullable
    /* renamed from: A */
    protected String m17133A() {
        return null;
    }

    @RecentlyNonNull
    /* renamed from: B */
    protected Set<Scope> mo17069B() {
        return Collections.emptySet();
    }

    @RecentlyNonNull
    /* renamed from: C */
    public final T m17132C() {
        T t;
        synchronized (this.f19515o) {
            if (this.f19522v == 5) {
                throw new DeadObjectException();
            }
            m17092r();
            t = this.f19519s;
            C6155o.m17017k(t, "Client is connected but service is null");
        }
        return t;
    }

    /* renamed from: D */
    public abstract String mo5861D();

    /* renamed from: E */
    protected abstract String mo5860E();

    @RecentlyNonNull
    /* renamed from: F */
    protected String m17131F() {
        return "com.google.android.gms";
    }

    @RecentlyNullable
    /* renamed from: G */
    public ConnectionTelemetryConfiguration m17130G() {
        zzi zziVar = this.f19501D;
        if (zziVar == null) {
            return null;
        }
        return zziVar.f19636g;
    }

    /* renamed from: H */
    protected boolean mo7846H() {
        return false;
    }

    /* renamed from: I */
    public boolean m17129I() {
        return this.f19501D != null;
    }

    /* renamed from: J */
    protected void m17128J(@RecentlyNonNull T t) {
        this.f19505e = System.currentTimeMillis();
    }

    /* renamed from: K */
    public void m17127K(@RecentlyNonNull ConnectionResult connectionResult) {
        this.f19506f = connectionResult.m17506k0();
        this.f19507g = System.currentTimeMillis();
    }

    /* renamed from: L */
    public void m17126L(int i) {
        this.f19503c = i;
        this.f19504d = System.currentTimeMillis();
    }

    /* renamed from: M */
    public void m17125M(int i, IBinder iBinder, Bundle bundle, int i2) {
        Handler handler = this.f19514n;
        handler.sendMessage(handler.obtainMessage(1, i2, -1, new C6124e1(this, i, iBinder, bundle)));
    }

    /* renamed from: N */
    public boolean m17124N() {
        return false;
    }

    /* renamed from: O */
    public void m17123O(@RecentlyNonNull String str) {
        this.f19498A = str;
    }

    /* renamed from: P */
    public void m17122P(int i) {
        Handler handler = this.f19514n;
        handler.sendMessage(handler.obtainMessage(6, this.f19502E.get(), i));
    }

    /* renamed from: Q */
    protected void m17121Q(@RecentlyNonNull AbstractC6116c abstractC6116c, int i, PendingIntent pendingIntent) {
        C6155o.m17017k(abstractC6116c, "Connection progress callbacks cannot be null.");
        this.f19518r = abstractC6116c;
        Handler handler = this.f19514n;
        handler.sendMessage(handler.obtainMessage(3, this.f19502E.get(), i, pendingIntent));
    }

    /* renamed from: R */
    public boolean mo7845R() {
        return false;
    }

    @RecentlyNonNull
    /* renamed from: S */
    protected final String m17120S() {
        String str = this.f19526z;
        String str2 = str;
        if (str == null) {
            str2 = this.f19510j.getClass().getName();
        }
        return str2;
    }

    /* renamed from: T */
    public final void m17119T(int i, Bundle bundle, int i2) {
        Handler handler = this.f19514n;
        handler.sendMessage(handler.obtainMessage(7, i2, -1, new C6127f1(this, i, null)));
    }

    /* renamed from: a */
    public void m17112a() {
        this.f19502E.incrementAndGet();
        synchronized (this.f19520t) {
            int size = this.f19520t.size();
            for (int i = 0; i < size; i++) {
                this.f19520t.get(i).m17140e();
            }
            this.f19520t.clear();
        }
        synchronized (this.f19516p) {
            this.f19517q = null;
        }
        m17098h0(1, null);
    }

    /* renamed from: b */
    public boolean m17110b() {
        boolean z;
        synchronized (this.f19515o) {
            z = this.f19522v == 4;
        }
        return z;
    }

    /* renamed from: d */
    public void m17107d(AbstractC6134i abstractC6134i, @RecentlyNonNull Set<Scope> set) {
        Throwable e;
        Bundle mo5853z = mo5853z();
        GetServiceRequest getServiceRequest = new GetServiceRequest(this.f19525y, this.f19498A);
        getServiceRequest.f19459g = this.f19510j.getPackageName();
        getServiceRequest.f19462j = mo5853z;
        if (set != null) {
            getServiceRequest.f19461i = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (mo5855p()) {
            Account mo17064u = mo17064u();
            Account account = mo17064u;
            if (mo17064u == null) {
                account = new Account("<<default account>>", "com.google");
            }
            getServiceRequest.f19463k = account;
            if (abstractC6134i != null) {
                getServiceRequest.f19460h = abstractC6134i.asBinder();
            }
        } else if (m17124N()) {
            getServiceRequest.f19463k = mo17064u();
        }
        getServiceRequest.f19464l = f19497b;
        getServiceRequest.f19465m = mo7844v();
        if (mo7845R()) {
            getServiceRequest.f19468p = true;
        }
        try {
            synchronized (this.f19516p) {
                AbstractC6144l abstractC6144l = this.f19517q;
                if (abstractC6144l != null) {
                    abstractC6144l.mo16987H1(new BinderC6112c1(this, this.f19502E.get()), getServiceRequest);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e2);
            m17122P(3);
        } catch (RemoteException e3) {
            e = e3;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            m17125M(8, null, null, this.f19502E.get());
        } catch (SecurityException e4) {
            throw e4;
        } catch (RuntimeException e5) {
            e = e5;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            m17125M(8, null, null, this.f19502E.get());
        }
    }

    /* renamed from: e */
    public void m17105e(@RecentlyNonNull String str) {
        this.f19508h = str;
        m17112a();
    }

    /* renamed from: f */
    public boolean m17103f() {
        boolean z;
        synchronized (this.f19515o) {
            int i = this.f19522v;
            z = true;
            if (i != 2) {
                z = i == 3;
            }
        }
        return z;
    }

    @RecentlyNonNull
    /* renamed from: g */
    public String m17101g() {
        C6166r1 c6166r1;
        if (!m17110b() || (c6166r1 = this.f19509i) == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return c6166r1.m16990b();
    }

    /* renamed from: h */
    public void m17099h(@RecentlyNonNull AbstractC6116c abstractC6116c) {
        C6155o.m17017k(abstractC6116c, "Connection progress callbacks cannot be null.");
        this.f19518r = abstractC6116c;
        m17098h0(2, null);
    }

    /* renamed from: i */
    public void m17097i(@RecentlyNonNull AbstractC6118e abstractC6118e) {
        abstractC6118e.mo17086a();
    }

    /* renamed from: j */
    public boolean m17096j() {
        return true;
    }

    /* renamed from: l */
    public int mo5858l() {
        return C6086c.f19385a;
    }

    @RecentlyNullable
    /* renamed from: m */
    public final Feature[] m17095m() {
        zzi zziVar = this.f19501D;
        if (zziVar == null) {
            return null;
        }
        return zziVar.f19634e;
    }

    @RecentlyNullable
    /* renamed from: n */
    public String m17094n() {
        return this.f19508h;
    }

    /* renamed from: p */
    public boolean mo5855p() {
        return false;
    }

    /* renamed from: q */
    public void m17093q() {
        int mo17219h = this.f19513m.mo17219h(this.f19510j, mo5858l());
        if (mo17219h == 0) {
            m17099h(new C6117d());
            return;
        }
        m17098h0(1, null);
        m17121Q(new C6117d(), mo17219h, null);
    }

    /* renamed from: r */
    protected final void m17092r() {
        if (m17110b()) {
            return;
        }
        throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }

    @RecentlyNullable
    /* renamed from: s */
    public abstract T mo5854s(@RecentlyNonNull IBinder iBinder);

    /* renamed from: t */
    public boolean m17091t() {
        return false;
    }

    @RecentlyNullable
    /* renamed from: u */
    public Account mo17064u() {
        return null;
    }

    @RecentlyNonNull
    /* renamed from: v */
    public Feature[] mo7844v() {
        return f19497b;
    }

    @RecentlyNullable
    /* renamed from: w */
    public Bundle m17090w() {
        return null;
    }

    @RecentlyNonNull
    /* renamed from: x */
    public final Context m17089x() {
        return this.f19510j;
    }

    /* renamed from: y */
    public int m17088y() {
        return this.f19525y;
    }

    @RecentlyNonNull
    /* renamed from: z */
    protected Bundle mo5853z() {
        return new Bundle();
    }
}
