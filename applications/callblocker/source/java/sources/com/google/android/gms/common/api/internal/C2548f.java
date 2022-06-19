package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import androidx.p013b.C0373a;
import androidx.p013b.C0375b;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.C2587d;
import com.google.android.gms.common.C2591e;
import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.api.AbstractC2500h;
import com.google.android.gms.common.api.C2471a;
import com.google.android.gms.common.api.C2489c;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.internal.C2545d;
import com.google.android.gms.common.api.internal.C2555j;
import com.google.android.gms.common.internal.AbstractC2623c;
import com.google.android.gms.common.internal.AbstractC2647l;
import com.google.android.gms.common.internal.C2646k;
import com.google.android.gms.common.internal.C2657q;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.C2669v;
import com.google.android.gms.common.util.C2705b;
import com.google.android.gms.common.util.C2716m;
import com.google.android.gms.internal.p137d.HandlerC3718f;
import com.google.android.gms.tasks.C4470h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.common.api.internal.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/f.class */
public class C2548f implements Handler.Callback {

    /* renamed from: a */
    public static final Status f7169a = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: b */
    private static final Status f7170b = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: f */
    private static final Object f7171f = new Object();
    @GuardedBy("lock")

    /* renamed from: g */
    private static C2548f f7172g;

    /* renamed from: h */
    private final Context f7176h;

    /* renamed from: i */
    private final C2591e f7177i;

    /* renamed from: j */
    private final C2646k f7178j;

    /* renamed from: q */
    private final Handler f7185q;

    /* renamed from: c */
    private long f7173c = 5000;

    /* renamed from: d */
    private long f7174d = 120000;

    /* renamed from: e */
    private long f7175e = 10000;

    /* renamed from: k */
    private final AtomicInteger f7179k = new AtomicInteger(1);

    /* renamed from: l */
    private final AtomicInteger f7180l = new AtomicInteger(0);

    /* renamed from: m */
    private final Map<C2531b<?>, C2549a<?>> f7181m = new ConcurrentHashMap(5, 0.75f, 1);
    @GuardedBy("lock")

    /* renamed from: n */
    private C2567u f7182n = null;
    @GuardedBy("lock")

    /* renamed from: o */
    private final Set<C2531b<?>> f7183o = new C0375b();

    /* renamed from: p */
    private final Set<C2531b<?>> f7184p = new C0375b();

    /* renamed from: com.google.android.gms.common.api.internal.f$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/f$a.class */
    public final class C2549a<O extends C2471a.AbstractC2475d> implements AbstractC2492d.AbstractC2493a, AbstractC2492d.AbstractC2494b, AbstractC2537bf {

        /* renamed from: c */
        private final C2471a.AbstractC2483f f7188c;

        /* renamed from: d */
        private final C2471a.AbstractC2473b f7189d;

        /* renamed from: e */
        private final C2531b<O> f7190e;

        /* renamed from: f */
        private final C2538bg f7191f;

        /* renamed from: i */
        private final int f7194i;

        /* renamed from: j */
        private final BinderC2518an f7195j;

        /* renamed from: k */
        private boolean f7196k;

        /* renamed from: b */
        private final Queue<AbstractC2514aj> f7187b = new LinkedList();

        /* renamed from: g */
        private final Set<C2530az> f7192g = new HashSet();

        /* renamed from: h */
        private final Map<C2555j.C2556a<?>, C2513ai> f7193h = new HashMap();

        /* renamed from: l */
        private final List<C2551c> f7197l = new ArrayList();

        /* renamed from: m */
        private C2579b f7198m = null;

        public C2549a(C2489c<O> c2489c) {
            C2548f.this = r6;
            this.f7188c = c2489c.m14434a(r6.f7185q.getLooper(), this);
            if (this.f7188c instanceof C2669v) {
                this.f7189d = ((C2669v) this.f7188c).m13910c();
            } else {
                this.f7189d = this.f7188c;
            }
            this.f7190e = c2489c.m14430e();
            this.f7191f = new C2538bg();
            this.f7194i = c2489c.m14429f();
            if (this.f7188c.mo6530h()) {
                this.f7195j = c2489c.m14435a(r6.f7176h, r6.f7185q);
            } else {
                this.f7195j = null;
            }
        }

        /* renamed from: a */
        private final C2587d m14284a(C2587d[] c2587dArr) {
            C2587d c2587d;
            if (c2587dArr == null || c2587dArr.length == 0) {
                c2587d = null;
            } else {
                C2587d[] m14443k = this.f7188c.m14443k();
                C2587d[] c2587dArr2 = m14443k;
                if (m14443k == null) {
                    c2587dArr2 = new C2587d[0];
                }
                C0373a c0373a = new C0373a(c2587dArr2.length);
                for (C2587d c2587d2 : c2587dArr2) {
                    c0373a.put(c2587d2.m14191a(), Long.valueOf(c2587d2.m14190b()));
                }
                for (C2587d c2587d3 : c2587dArr) {
                    if (!c0373a.containsKey(c2587d3.m14191a()) || ((Long) c0373a.get(c2587d3.m14191a())).longValue() < c2587d3.m14190b()) {
                        c2587d = c2587d3;
                        break;
                    }
                }
                c2587d = null;
            }
            return c2587d;
        }

        /* renamed from: a */
        public final void m14287a(C2551c c2551c) {
            if (this.f7197l.contains(c2551c) && !this.f7196k) {
                if (!this.f7188c.m14447f()) {
                    m14268i();
                } else {
                    m14262o();
                }
            }
        }

        /* renamed from: a */
        public final boolean m14285a(boolean z) {
            C2662s.m13983a(C2548f.this.f7185q);
            boolean z2 = false;
            if (this.f7188c.m14447f()) {
                z2 = false;
                if (this.f7193h.size() == 0) {
                    if (this.f7191f.m14346a()) {
                        z2 = false;
                        if (z) {
                            m14260q();
                            z2 = false;
                        }
                    } else {
                        this.f7188c.m14448e();
                        z2 = true;
                    }
                }
            }
            return z2;
        }

        /* renamed from: b */
        public final void m14279b(C2551c c2551c) {
            C2587d[] mo14218a;
            if (this.f7197l.remove(c2551c)) {
                C2548f.this.f7185q.removeMessages(15, c2551c);
                C2548f.this.f7185q.removeMessages(16, c2551c);
                C2587d c2587d = c2551c.f7206b;
                ArrayList arrayList = new ArrayList(this.f7187b.size());
                for (AbstractC2514aj abstractC2514aj : this.f7187b) {
                    if ((abstractC2514aj instanceof AbstractC2570x) && (mo14218a = ((AbstractC2570x) abstractC2514aj).mo14218a((C2549a<?>) this)) != null && C2705b.m13879a(mo14218a, c2587d)) {
                        arrayList.add(abstractC2514aj);
                    }
                }
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    i++;
                    AbstractC2514aj abstractC2514aj2 = (AbstractC2514aj) arrayList2.get(i);
                    this.f7187b.remove(abstractC2514aj2);
                    abstractC2514aj2.mo14361a(new UnsupportedApiCallException(c2587d));
                }
            }
        }

        /* renamed from: b */
        private final boolean m14282b(AbstractC2514aj abstractC2514aj) {
            boolean z;
            if (!(abstractC2514aj instanceof AbstractC2570x)) {
                m14277c(abstractC2514aj);
                z = true;
            } else {
                AbstractC2570x abstractC2570x = (AbstractC2570x) abstractC2514aj;
                C2587d m14284a = m14284a(abstractC2570x.mo14218a((C2549a<?>) this));
                if (m14284a == null) {
                    m14277c(abstractC2514aj);
                    z = true;
                } else {
                    if (abstractC2570x.mo14217b((C2549a<?>) this)) {
                        C2551c c2551c = new C2551c(this.f7190e, m14284a, null);
                        int indexOf = this.f7197l.indexOf(c2551c);
                        if (indexOf >= 0) {
                            C2551c c2551c2 = this.f7197l.get(indexOf);
                            C2548f.this.f7185q.removeMessages(15, c2551c2);
                            C2548f.this.f7185q.sendMessageDelayed(Message.obtain(C2548f.this.f7185q, 15, c2551c2), C2548f.this.f7173c);
                        } else {
                            this.f7197l.add(c2551c);
                            C2548f.this.f7185q.sendMessageDelayed(Message.obtain(C2548f.this.f7185q, 15, c2551c), C2548f.this.f7173c);
                            C2548f.this.f7185q.sendMessageDelayed(Message.obtain(C2548f.this.f7185q, 16, c2551c), C2548f.this.f7174d);
                            C2579b c2579b = new C2579b(2, null);
                            if (!m14275c(c2579b)) {
                                C2548f.this.m14313a(c2579b, this.f7194i);
                            }
                        }
                    } else {
                        abstractC2570x.mo14361a(new UnsupportedApiCallException(m14284a));
                    }
                    z = false;
                }
            }
            return z;
        }

        /* renamed from: c */
        private final void m14277c(AbstractC2514aj abstractC2514aj) {
            abstractC2514aj.mo14362a(this.f7191f, m14266k());
            try {
                abstractC2514aj.mo14364c(this);
            } catch (DeadObjectException e) {
                mo14295a(1);
                this.f7188c.m14448e();
            }
        }

        /* renamed from: c */
        private final boolean m14275c(C2579b c2579b) {
            boolean z;
            synchronized (C2548f.f7171f) {
                if (C2548f.this.f7182n == null || !C2548f.this.f7183o.contains(this.f7190e)) {
                    z = false;
                } else {
                    C2548f.this.f7182n.m14351b(c2579b, this.f7194i);
                    z = true;
                }
            }
            return z;
        }

        /* renamed from: d */
        private final void m14273d(C2579b c2579b) {
            for (C2530az c2530az : this.f7192g) {
                String str = null;
                if (C2657q.m13992a(c2579b, C2579b.f7233a)) {
                    str = this.f7188c.m14444j();
                }
                c2530az.m14358a(this.f7190e, c2579b, str);
            }
            this.f7192g.clear();
        }

        /* renamed from: m */
        public final void m14264m() {
            m14274d();
            m14273d(C2579b.f7233a);
            m14261p();
            Iterator<C2513ai> it = this.f7193h.values().iterator();
            while (it.hasNext()) {
                C2513ai next = it.next();
                if (m14284a(next.f7091a.m14235b()) != null) {
                    it.remove();
                } else {
                    try {
                        next.f7091a.m14236a(this.f7189d, new C4470h<>());
                    } catch (DeadObjectException e) {
                        mo14295a(1);
                        this.f7188c.m14448e();
                    } catch (RemoteException e2) {
                        it.remove();
                    }
                }
            }
            m14262o();
            m14260q();
        }

        /* renamed from: n */
        public final void m14263n() {
            m14274d();
            this.f7196k = true;
            this.f7191f.m14339c();
            C2548f.this.f7185q.sendMessageDelayed(Message.obtain(C2548f.this.f7185q, 9, this.f7190e), C2548f.this.f7173c);
            C2548f.this.f7185q.sendMessageDelayed(Message.obtain(C2548f.this.f7185q, 11, this.f7190e), C2548f.this.f7174d);
            C2548f.this.f7178j.m14003a();
        }

        /* renamed from: o */
        private final void m14262o() {
            ArrayList arrayList = new ArrayList(this.f7187b);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                int i2 = i + 1;
                AbstractC2514aj abstractC2514aj = (AbstractC2514aj) obj;
                if (!this.f7188c.m14447f()) {
                    return;
                }
                i = i2;
                if (m14282b(abstractC2514aj)) {
                    this.f7187b.remove(abstractC2514aj);
                    i = i2;
                }
            }
        }

        /* renamed from: p */
        private final void m14261p() {
            if (this.f7196k) {
                C2548f.this.f7185q.removeMessages(11, this.f7190e);
                C2548f.this.f7185q.removeMessages(9, this.f7190e);
                this.f7196k = false;
            }
        }

        /* renamed from: q */
        private final void m14260q() {
            C2548f.this.f7185q.removeMessages(12, this.f7190e);
            C2548f.this.f7185q.sendMessageDelayed(C2548f.this.f7185q.obtainMessage(12, this.f7190e), C2548f.this.f7175e);
        }

        /* renamed from: a */
        public final void m14296a() {
            C2662s.m13983a(C2548f.this.f7185q);
            m14293a(C2548f.f7169a);
            this.f7191f.m14341b();
            for (C2555j.C2556a c2556a : (C2555j.C2556a[]) this.f7193h.keySet().toArray(new C2555j.C2556a[this.f7193h.size()])) {
                m14292a(new C2529ay(c2556a, new C4470h()));
            }
            m14273d(new C2579b(4));
            if (this.f7188c.m14447f()) {
                this.f7188c.m14450a(new C2507ac(this));
            }
        }

        @Override // com.google.android.gms.common.api.internal.AbstractC2547e
        /* renamed from: a */
        public final void mo14295a(int i) {
            if (Looper.myLooper() == C2548f.this.f7185q.getLooper()) {
                m14263n();
            } else {
                C2548f.this.f7185q.post(new RunnableC2505aa(this));
            }
        }

        @Override // com.google.android.gms.common.api.internal.AbstractC2547e
        /* renamed from: a */
        public final void mo14294a(Bundle bundle) {
            if (Looper.myLooper() == C2548f.this.f7185q.getLooper()) {
                m14264m();
            } else {
                C2548f.this.f7185q.post(new RunnableC2572z(this));
            }
        }

        /* renamed from: a */
        public final void m14293a(Status status) {
            C2662s.m13983a(C2548f.this.f7185q);
            for (AbstractC2514aj abstractC2514aj : this.f7187b) {
                abstractC2514aj.mo14363a(status);
            }
            this.f7187b.clear();
        }

        /* renamed from: a */
        public final void m14292a(AbstractC2514aj abstractC2514aj) {
            C2662s.m13983a(C2548f.this.f7185q);
            if (this.f7188c.m14447f()) {
                if (m14282b(abstractC2514aj)) {
                    m14260q();
                    return;
                } else {
                    this.f7187b.add(abstractC2514aj);
                    return;
                }
            }
            this.f7187b.add(abstractC2514aj);
            if (this.f7198m == null || !this.f7198m.m14212a()) {
                m14268i();
            } else {
                mo14238b(this.f7198m);
            }
        }

        /* renamed from: a */
        public final void m14291a(C2530az c2530az) {
            C2662s.m13983a(C2548f.this.f7185q);
            this.f7192g.add(c2530az);
        }

        /* renamed from: a */
        public final void m14286a(C2579b c2579b) {
            C2662s.m13983a(C2548f.this.f7185q);
            this.f7188c.m14448e();
            mo14238b(c2579b);
        }

        /* renamed from: b */
        public final C2471a.AbstractC2483f m14283b() {
            return this.f7188c;
        }

        @Override // com.google.android.gms.common.api.internal.AbstractC2557k
        /* renamed from: b */
        public final void mo14238b(C2579b c2579b) {
            C2662s.m13983a(C2548f.this.f7185q);
            if (this.f7195j != null) {
                this.f7195j.m14385a();
            }
            m14274d();
            C2548f.this.f7178j.m14003a();
            m14273d(c2579b);
            if (c2579b.m14209c() == 4) {
                m14293a(C2548f.f7170b);
            } else if (this.f7187b.isEmpty()) {
                this.f7198m = c2579b;
            } else if (m14275c(c2579b) || C2548f.this.m14313a(c2579b, this.f7194i)) {
            } else {
                if (c2579b.m14209c() == 18) {
                    this.f7196k = true;
                }
                if (this.f7196k) {
                    C2548f.this.f7185q.sendMessageDelayed(Message.obtain(C2548f.this.f7185q, 9, this.f7190e), C2548f.this.f7173c);
                    return;
                }
                String m14357a = this.f7190e.m14357a();
                String valueOf = String.valueOf(c2579b);
                m14293a(new Status(17, new StringBuilder(String.valueOf(m14357a).length() + 63 + String.valueOf(valueOf).length()).append("API: ").append(m14357a).append(" is not available on this device. Connection failed with: ").append(valueOf).toString()));
            }
        }

        /* renamed from: c */
        public final Map<C2555j.C2556a<?>, C2513ai> m14278c() {
            return this.f7193h;
        }

        /* renamed from: d */
        public final void m14274d() {
            C2662s.m13983a(C2548f.this.f7185q);
            this.f7198m = null;
        }

        /* renamed from: e */
        public final C2579b m14272e() {
            C2662s.m13983a(C2548f.this.f7185q);
            return this.f7198m;
        }

        /* renamed from: f */
        public final void m14271f() {
            C2662s.m13983a(C2548f.this.f7185q);
            if (this.f7196k) {
                m14268i();
            }
        }

        /* renamed from: g */
        public final void m14270g() {
            C2662s.m13983a(C2548f.this.f7185q);
            if (this.f7196k) {
                m14261p();
                m14293a(C2548f.this.f7177i.mo14170a(C2548f.this.f7176h) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                this.f7188c.m14448e();
            }
        }

        /* renamed from: h */
        public final boolean m14269h() {
            return m14285a(true);
        }

        /* renamed from: i */
        public final void m14268i() {
            C2662s.m13983a(C2548f.this.f7185q);
            if (this.f7188c.m14447f() || this.f7188c.m14446g()) {
                return;
            }
            int m14002a = C2548f.this.f7178j.m14002a(C2548f.this.f7176h, this.f7188c);
            if (m14002a != 0) {
                mo14238b(new C2579b(m14002a, null));
                return;
            }
            C2550b c2550b = new C2550b(this.f7188c, this.f7190e);
            if (this.f7188c.mo6530h()) {
                this.f7195j.m14381a(c2550b);
            }
            this.f7188c.m14451a(c2550b);
        }

        /* renamed from: j */
        final boolean m14267j() {
            return this.f7188c.m14447f();
        }

        /* renamed from: k */
        public final boolean m14266k() {
            return this.f7188c.mo6530h();
        }

        /* renamed from: l */
        public final int m14265l() {
            return this.f7194i;
        }
    }

    /* renamed from: com.google.android.gms.common.api.internal.f$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/f$b.class */
    public final class C2550b implements AbstractC2519ao, AbstractC2623c.AbstractC2626c {

        /* renamed from: b */
        private final C2471a.AbstractC2483f f7200b;

        /* renamed from: c */
        private final C2531b<?> f7201c;

        /* renamed from: d */
        private AbstractC2647l f7202d = null;

        /* renamed from: e */
        private Set<Scope> f7203e = null;

        /* renamed from: f */
        private boolean f7204f = false;

        public C2550b(C2471a.AbstractC2483f abstractC2483f, C2531b<?> c2531b) {
            C2548f.this = r4;
            this.f7200b = abstractC2483f;
            this.f7201c = c2531b;
        }

        /* renamed from: a */
        public final void m14259a() {
            if (!this.f7204f || this.f7202d == null) {
                return;
            }
            this.f7200b.m14449a(this.f7202d, this.f7203e);
        }

        @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2626c
        /* renamed from: a */
        public final void mo14063a(C2579b c2579b) {
            C2548f.this.f7185q.post(new RunnableC2509ae(this, c2579b));
        }

        @Override // com.google.android.gms.common.api.internal.AbstractC2519ao
        /* renamed from: a */
        public final void mo14256a(AbstractC2647l abstractC2647l, Set<Scope> set) {
            if (abstractC2647l == null || set == null) {
                Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                mo14254b(new C2579b(4));
                return;
            }
            this.f7202d = abstractC2647l;
            this.f7203e = set;
            m14259a();
        }

        @Override // com.google.android.gms.common.api.internal.AbstractC2519ao
        /* renamed from: b */
        public final void mo14254b(C2579b c2579b) {
            ((C2549a) C2548f.this.f7181m.get(this.f7201c)).m14286a(c2579b);
        }
    }

    /* renamed from: com.google.android.gms.common.api.internal.f$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/f$c.class */
    public static final class C2551c {

        /* renamed from: a */
        private final C2531b<?> f7205a;

        /* renamed from: b */
        private final C2587d f7206b;

        private C2551c(C2531b<?> c2531b, C2587d c2587d) {
            this.f7205a = c2531b;
            this.f7206b = c2587d;
        }

        /* synthetic */ C2551c(C2531b c2531b, C2587d c2587d, C2571y c2571y) {
            this(c2531b, c2587d);
        }

        public final boolean equals(Object obj) {
            boolean z = false;
            if (obj != null) {
                z = false;
                if (obj instanceof C2551c) {
                    C2551c c2551c = (C2551c) obj;
                    z = false;
                    if (C2657q.m13992a(this.f7205a, c2551c.f7205a)) {
                        z = false;
                        if (C2657q.m13992a(this.f7206b, c2551c.f7206b)) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public final int hashCode() {
            return C2657q.m13991a(this.f7205a, this.f7206b);
        }

        public final String toString() {
            return C2657q.m13993a(this).m13990a("key", this.f7205a).m13990a("feature", this.f7206b).toString();
        }
    }

    private C2548f(Context context, Looper looper, C2591e c2591e) {
        this.f7176h = context;
        this.f7185q = new HandlerC3718f(looper, this);
        this.f7177i = c2591e;
        this.f7178j = new C2646k(c2591e);
        this.f7185q.sendMessage(this.f7185q.obtainMessage(6));
    }

    /* renamed from: a */
    public static C2548f m14319a(Context context) {
        C2548f c2548f;
        synchronized (f7171f) {
            if (f7172g == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                f7172g = new C2548f(context.getApplicationContext(), handlerThread.getLooper(), C2591e.m14185a());
            }
            c2548f = f7172g;
        }
        return c2548f;
    }

    /* renamed from: a */
    public static void m14320a() {
        synchronized (f7171f) {
            if (f7172g != null) {
                C2548f c2548f = f7172g;
                c2548f.f7180l.incrementAndGet();
                c2548f.f7185q.sendMessageAtFrontOfQueue(c2548f.f7185q.obtainMessage(10));
            }
        }
    }

    /* renamed from: b */
    private final void m14311b(C2489c<?> c2489c) {
        C2531b<?> m14430e = c2489c.m14430e();
        C2549a<?> c2549a = this.f7181m.get(m14430e);
        C2549a<?> c2549a2 = c2549a;
        if (c2549a == null) {
            c2549a2 = new C2549a<>(c2489c);
            this.f7181m.put(m14430e, c2549a2);
        }
        if (c2549a2.m14266k()) {
            this.f7184p.add(m14430e);
        }
        c2549a2.m14268i();
    }

    /* renamed from: a */
    public final void m14318a(C2489c<?> c2489c) {
        this.f7185q.sendMessage(this.f7185q.obtainMessage(7, c2489c));
    }

    /* renamed from: a */
    public final <O extends C2471a.AbstractC2475d> void m14317a(C2489c<O> c2489c, int i, C2545d.AbstractC2546a<? extends AbstractC2500h, C2471a.AbstractC2473b> abstractC2546a) {
        this.f7185q.sendMessage(this.f7185q.obtainMessage(4, new C2512ah(new C2526av(i, abstractC2546a), this.f7180l.get(), c2489c)));
    }

    /* renamed from: a */
    public final <O extends C2471a.AbstractC2475d, ResultT> void m14316a(C2489c<O> c2489c, int i, AbstractC2562p<C2471a.AbstractC2473b, ResultT> abstractC2562p, C4470h<ResultT> c4470h, AbstractC2560n abstractC2560n) {
        this.f7185q.sendMessage(this.f7185q.obtainMessage(4, new C2512ah(new C2528ax(i, abstractC2562p, c4470h, abstractC2560n), this.f7180l.get(), c2489c)));
    }

    /* renamed from: a */
    public final void m14314a(C2567u c2567u) {
        synchronized (f7171f) {
            if (this.f7182n != c2567u) {
                this.f7182n = c2567u;
                this.f7183o.clear();
            }
            this.f7183o.addAll(c2567u.m14222g());
        }
    }

    /* renamed from: a */
    final boolean m14313a(C2579b c2579b, int i) {
        return this.f7177i.m14175a(this.f7176h, c2579b, i);
    }

    /* renamed from: b */
    public final int m14312b() {
        return this.f7179k.getAndIncrement();
    }

    /* renamed from: b */
    public final void m14309b(C2567u c2567u) {
        synchronized (f7171f) {
            if (this.f7182n == c2567u) {
                this.f7182n = null;
                this.f7183o.clear();
            }
        }
    }

    /* renamed from: b */
    public final void m14308b(C2579b c2579b, int i) {
        if (!m14313a(c2579b, i)) {
            this.f7185q.sendMessage(this.f7185q.obtainMessage(5, i, 0, c2579b));
        }
    }

    /* renamed from: c */
    public final void m14307c() {
        this.f7185q.sendMessage(this.f7185q.obtainMessage(3));
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        C2549a<?> c2549a;
        boolean z;
        switch (message.what) {
            case 1:
                this.f7175e = ((Boolean) message.obj).booleanValue() ? (char) 10000 : (char) 37856;
                this.f7185q.removeMessages(12);
                for (C2531b<?> c2531b : this.f7181m.keySet()) {
                    this.f7185q.sendMessageDelayed(this.f7185q.obtainMessage(12, c2531b), this.f7175e);
                }
                z = true;
                break;
            case 2:
                C2530az c2530az = (C2530az) message.obj;
                Iterator<C2531b<?>> it = c2530az.m14359a().iterator();
                while (true) {
                    if (it.hasNext()) {
                        C2531b<?> next = it.next();
                        C2549a<?> c2549a2 = this.f7181m.get(next);
                        if (c2549a2 == null) {
                            c2530az.m14358a(next, new C2579b(13), null);
                        } else if (c2549a2.m14267j()) {
                            c2530az.m14358a(next, C2579b.f7233a, c2549a2.m14283b().m14444j());
                        } else if (c2549a2.m14272e() != null) {
                            c2530az.m14358a(next, c2549a2.m14272e(), null);
                        } else {
                            c2549a2.m14291a(c2530az);
                            c2549a2.m14268i();
                        }
                    }
                }
                z = true;
                break;
            case 3:
                for (C2549a<?> c2549a3 : this.f7181m.values()) {
                    c2549a3.m14274d();
                    c2549a3.m14268i();
                }
                z = true;
                break;
            case 4:
            case 8:
            case 13:
                C2512ah c2512ah = (C2512ah) message.obj;
                C2549a<?> c2549a4 = this.f7181m.get(c2512ah.f7090c.m14430e());
                C2549a<?> c2549a5 = c2549a4;
                if (c2549a4 == null) {
                    m14311b(c2512ah.f7090c);
                    c2549a5 = this.f7181m.get(c2512ah.f7090c.m14430e());
                }
                if (!c2549a5.m14266k() || this.f7180l.get() == c2512ah.f7089b) {
                    c2549a5.m14292a(c2512ah.f7088a);
                } else {
                    c2512ah.f7088a.mo14363a(f7169a);
                    c2549a5.m14296a();
                }
                z = true;
                break;
            case 5:
                int i = message.arg1;
                C2579b c2579b = (C2579b) message.obj;
                Iterator<C2549a<?>> it2 = this.f7181m.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        c2549a = it2.next();
                        if (c2549a.m14265l() == i) {
                        }
                    } else {
                        c2549a = null;
                    }
                }
                if (c2549a != null) {
                    String mo14164b = this.f7177i.mo14164b(c2579b.m14209c());
                    String m14207e = c2579b.m14207e();
                    c2549a.m14293a(new Status(17, new StringBuilder(String.valueOf(mo14164b).length() + 69 + String.valueOf(m14207e).length()).append("Error resolution was canceled by the user, original error message: ").append(mo14164b).append(": ").append(m14207e).toString()));
                } else {
                    Log.wtf("GoogleApiManager", new StringBuilder(76).append("Could not find API instance ").append(i).append(" while trying to fail enqueued calls.").toString(), new Exception());
                }
                z = true;
                break;
            case 6:
                if (C2716m.m13842a() && (this.f7176h.getApplicationContext() instanceof Application)) {
                    ComponentCallbacks2C2543c.m14330a((Application) this.f7176h.getApplicationContext());
                    ComponentCallbacks2C2543c.m14331a().m14329a(new C2571y(this));
                    if (!ComponentCallbacks2C2543c.m14331a().m14328a(true)) {
                        this.f7175e = 300000L;
                    }
                }
                z = true;
                break;
            case 7:
                m14311b((C2489c) message.obj);
                z = true;
                break;
            case 9:
                if (this.f7181m.containsKey(message.obj)) {
                    this.f7181m.get(message.obj).m14271f();
                }
                z = true;
                break;
            case 10:
                for (C2531b<?> c2531b2 : this.f7184p) {
                    this.f7181m.remove(c2531b2).m14296a();
                }
                this.f7184p.clear();
                z = true;
                break;
            case 11:
                if (this.f7181m.containsKey(message.obj)) {
                    this.f7181m.get(message.obj).m14270g();
                }
                z = true;
                break;
            case 12:
                if (this.f7181m.containsKey(message.obj)) {
                    this.f7181m.get(message.obj).m14269h();
                }
                z = true;
                break;
            case 14:
                C2568v c2568v = (C2568v) message.obj;
                C2531b<?> m14220a = c2568v.m14220a();
                if (!this.f7181m.containsKey(m14220a)) {
                    c2568v.m14219b().m3887a((C4470h<Boolean>) false);
                } else {
                    c2568v.m14219b().m3887a((C4470h<Boolean>) Boolean.valueOf(this.f7181m.get(m14220a).m14285a(false)));
                }
                z = true;
                break;
            case 15:
                C2551c c2551c = (C2551c) message.obj;
                if (this.f7181m.containsKey(c2551c.f7205a)) {
                    this.f7181m.get(c2551c.f7205a).m14287a(c2551c);
                }
                z = true;
                break;
            case 16:
                C2551c c2551c2 = (C2551c) message.obj;
                if (this.f7181m.containsKey(c2551c2.f7205a)) {
                    this.f7181m.get(c2551c2.f7205a).m14279b(c2551c2);
                }
                z = true;
                break;
            default:
                Log.w("GoogleApiManager", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                z = false;
                break;
        }
        return z;
    }
}
