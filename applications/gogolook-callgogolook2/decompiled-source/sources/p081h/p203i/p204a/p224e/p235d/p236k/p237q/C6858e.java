package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import androidx.core.app.Person;
import androidx.work.PeriodicWorkRequest;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
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
import p081h.p203i.p204a.p224e.p235d.C6790c;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p236k.C6822e;
import p081h.p203i.p204a.p224e.p235d.p236k.C6840p;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6878i;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7003m;
import p081h.p203i.p204a.p224e.p235d.p240n.C7001l;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.C7025v;
import p081h.p203i.p204a.p224e.p235d.p249s.C7070b;
import p081h.p203i.p204a.p224e.p235d.p249s.C7083o;
import p081h.p203i.p204a.p224e.p259j.p265f.HandlerC7537i;
import p081h.p203i.p204a.p224e.p290p.AbstractC9123f;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9145i;
/* renamed from: h.i.a.e.d.k.q.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/e.class */
public class C6858e implements Handler.Callback {

    /* renamed from: n */
    public static final Status f16785n = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: o */
    public static final Status f16786o = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: p */
    public static final Object f16787p = new Object();
    @GuardedBy("lock")

    /* renamed from: q */
    public static C6858e f16788q;

    /* renamed from: d */
    public final Context f16792d;

    /* renamed from: e */
    public final C6790c f16793e;

    /* renamed from: f */
    public final C7001l f16794f;

    /* renamed from: m */
    public final Handler f16801m;

    /* renamed from: a */
    public long f16789a = 5000;

    /* renamed from: b */
    public long f16790b = 120000;

    /* renamed from: c */
    public long f16791c = 10000;

    /* renamed from: g */
    public final AtomicInteger f16795g = new AtomicInteger(1);

    /* renamed from: h */
    public final AtomicInteger f16796h = new AtomicInteger(0);

    /* renamed from: i */
    public final Map<C6864e2<?>, C6859a<?>> f16797i = new ConcurrentHashMap(5, 0.75f, 1);
    @GuardedBy("lock")

    /* renamed from: j */
    public C6933v f16798j = null;
    @GuardedBy("lock")

    /* renamed from: k */
    public final Set<C6864e2<?>> f16799k = new ArraySet();

    /* renamed from: l */
    public final Set<C6864e2<?>> f16800l = new ArraySet();

    /* renamed from: h.i.a.e.d.k.q.e$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/e$a.class */
    public final class C6859a<O extends C6805a.AbstractC6809d> implements AbstractC6825f.AbstractC6827b, AbstractC6825f.AbstractC6828c, AbstractC6904n2 {

        /* renamed from: b */
        public final C6805a.AbstractC6816f f16803b;

        /* renamed from: c */
        public final C6805a.AbstractC6807b f16804c;

        /* renamed from: d */
        public final C6864e2<O> f16805d;

        /* renamed from: e */
        public final C6921s f16806e;

        /* renamed from: h */
        public final int f16809h;

        /* renamed from: i */
        public final BinderC6911p1 f16810i;

        /* renamed from: j */
        public boolean f16811j;

        /* renamed from: a */
        public final Queue<AbstractC6918r0> f16802a = new LinkedList();

        /* renamed from: f */
        public final Set<C6873g2> f16807f = new HashSet();

        /* renamed from: g */
        public final Map<C6878i.C6879a<?>, C6899m1> f16808g = new HashMap();

        /* renamed from: k */
        public final List<C6860b> f16812k = new ArrayList();

        /* renamed from: l */
        public ConnectionResult f16813l = null;

        @WorkerThread
        public C6859a(C6822e<O> eVar) {
            this.f16803b = eVar.mo21569a(C6858e.this.f16801m.getLooper(), this);
            C6805a.AbstractC6816f fVar = this.f16803b;
            if (fVar instanceof C7025v) {
                this.f16804c = ((C7025v) fVar).m21276E();
            } else {
                this.f16804c = fVar;
            }
            this.f16805d = eVar.m21830g();
            this.f16806e = new C6921s();
            this.f16809h = eVar.m21832e();
            if (this.f16803b.mo16072e()) {
                this.f16810i = eVar.mo21570a(C6858e.this.f16792d, C6858e.this.f16801m);
            } else {
                this.f16810i = null;
            }
        }

        @Nullable
        @WorkerThread
        /* renamed from: a */
        public final Feature m21727a(@Nullable Feature[] featureArr) {
            if (featureArr == null || featureArr.length == 0) {
                return null;
            }
            Feature[] i = this.f16803b.m21850i();
            Feature[] featureArr2 = i;
            if (i == null) {
                featureArr2 = new Feature[0];
            }
            ArrayMap arrayMap = new ArrayMap(featureArr2.length);
            for (Feature feature : featureArr2) {
                arrayMap.put(feature.m31998c(), Long.valueOf(feature.getVersion()));
            }
            for (Feature feature2 : featureArr) {
                if (!arrayMap.containsKey(feature2.m31998c()) || ((Long) arrayMap.get(feature2.m31998c())).longValue() < feature2.getVersion()) {
                    return feature2;
                }
            }
            return null;
        }

        @WorkerThread
        /* renamed from: a */
        public final void m21736a() {
            C7021t.m21292a(C6858e.this.f16801m);
            if (!this.f16803b.isConnected() && !this.f16803b.m21854b()) {
                int a = C6858e.this.f16794f.m21331a(C6858e.this.f16792d, this.f16803b);
                if (a != 0) {
                    mo21591a(new ConnectionResult(a, null));
                    return;
                }
                C6861c cVar = new C6861c(this.f16803b, this.f16805d);
                if (this.f16803b.mo16072e()) {
                    this.f16810i.m21594a(cVar);
                }
                this.f16803b.m21858a(cVar);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6828c
        @WorkerThread
        /* renamed from: a */
        public final void mo21591a(@NonNull ConnectionResult connectionResult) {
            C7021t.m21292a(C6858e.this.f16801m);
            BinderC6911p1 p1Var = this.f16810i;
            if (p1Var != null) {
                p1Var.m21597H0();
            }
            m21706m();
            C6858e.this.f16794f.m21332a();
            m21715d(connectionResult);
            if (connectionResult.m32000c() == 4) {
                m21735a(C6858e.f16786o);
            } else if (this.f16802a.isEmpty()) {
                this.f16813l = connectionResult;
            } else if (!m21719c(connectionResult) && !C6858e.this.m21753b(connectionResult, this.f16809h)) {
                if (connectionResult.m32000c() == 18) {
                    this.f16811j = true;
                }
                if (this.f16811j) {
                    C6858e.this.f16801m.sendMessageDelayed(Message.obtain(C6858e.this.f16801m, 9, this.f16805d), C6858e.this.f16789a);
                    return;
                }
                String a = this.f16805d.m21693a();
                StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 38);
                sb.append("API: ");
                sb.append(a);
                sb.append(" is not available on this device.");
                m21735a(new Status(17, sb.toString()));
            }
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6904n2
        /* renamed from: a */
        public final void mo21517a(ConnectionResult connectionResult, C6805a<?> aVar, boolean z) {
            if (Looper.myLooper() == C6858e.this.f16801m.getLooper()) {
                mo21591a(connectionResult);
            } else {
                C6858e.this.f16801m.post(new RunnableC6856d1(this, connectionResult));
            }
        }

        @WorkerThread
        /* renamed from: a */
        public final void m21735a(Status status) {
            C7021t.m21292a(C6858e.this.f16801m);
            for (AbstractC6918r0 r0Var : this.f16802a) {
                r0Var.mo21588a(status);
            }
            this.f16802a.clear();
        }

        @WorkerThread
        /* renamed from: a */
        public final void m21731a(C6860b bVar) {
            if (!this.f16812k.contains(bVar) || this.f16811j) {
                return;
            }
            if (!this.f16803b.isConnected()) {
                m21736a();
            } else {
                m21709j();
            }
        }

        @WorkerThread
        /* renamed from: a */
        public final void m21730a(C6873g2 g2Var) {
            C7021t.m21292a(C6858e.this.f16801m);
            this.f16807f.add(g2Var);
        }

        @WorkerThread
        /* renamed from: a */
        public final void m21729a(AbstractC6918r0 r0Var) {
            C7021t.m21292a(C6858e.this.f16801m);
            if (!this.f16803b.isConnected()) {
                this.f16802a.add(r0Var);
                ConnectionResult connectionResult = this.f16813l;
                if (connectionResult == null || !connectionResult.m32002J()) {
                    m21736a();
                } else {
                    mo21591a(this.f16813l);
                }
            } else if (m21721b(r0Var)) {
                m21703p();
            } else {
                this.f16802a.add(r0Var);
            }
        }

        @WorkerThread
        /* renamed from: a */
        public final boolean m21728a(boolean z) {
            C7021t.m21292a(C6858e.this.f16801m);
            if (!this.f16803b.isConnected() || this.f16808g.size() != 0) {
                return false;
            }
            if (!this.f16806e.m21580a()) {
                this.f16803b.disconnect();
                return true;
            } else if (!z) {
                return false;
            } else {
                m21703p();
                return false;
            }
        }

        /* renamed from: b */
        public final int m21726b() {
            return this.f16809h;
        }

        @WorkerThread
        /* renamed from: b */
        public final void m21725b(@NonNull ConnectionResult connectionResult) {
            C7021t.m21292a(C6858e.this.f16801m);
            this.f16803b.disconnect();
            mo21591a(connectionResult);
        }

        @WorkerThread
        /* renamed from: b */
        public final void m21722b(C6860b bVar) {
            Feature[] b;
            if (this.f16812k.remove(bVar)) {
                C6858e.this.f16801m.removeMessages(15, bVar);
                C6858e.this.f16801m.removeMessages(16, bVar);
                Feature feature = bVar.f16816b;
                ArrayList arrayList = new ArrayList(this.f16802a.size());
                for (AbstractC6918r0 r0Var : this.f16802a) {
                    if ((r0Var instanceof AbstractC6903n1) && (b = ((AbstractC6903n1) r0Var).mo21627b((C6859a<?>) this)) != null && C7070b.m21163a(b, feature)) {
                        arrayList.add(r0Var);
                    }
                }
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    AbstractC6918r0 r0Var2 = (AbstractC6918r0) obj;
                    this.f16802a.remove(r0Var2);
                    r0Var2.mo21585a(new C6840p(feature));
                }
            }
        }

        @WorkerThread
        /* renamed from: b */
        public final boolean m21721b(AbstractC6918r0 r0Var) {
            if (!(r0Var instanceof AbstractC6903n1)) {
                m21717c(r0Var);
                return true;
            }
            AbstractC6903n1 n1Var = (AbstractC6903n1) r0Var;
            Feature a = m21727a(n1Var.mo21627b((C6859a<?>) this));
            if (a == null) {
                m21717c(r0Var);
                return true;
            } else if (n1Var.mo21626c(this)) {
                C6860b bVar = new C6860b(this.f16805d, a, null);
                int indexOf = this.f16812k.indexOf(bVar);
                if (indexOf >= 0) {
                    C6860b bVar2 = this.f16812k.get(indexOf);
                    C6858e.this.f16801m.removeMessages(15, bVar2);
                    C6858e.this.f16801m.sendMessageDelayed(Message.obtain(C6858e.this.f16801m, 15, bVar2), C6858e.this.f16789a);
                    return false;
                }
                this.f16812k.add(bVar);
                C6858e.this.f16801m.sendMessageDelayed(Message.obtain(C6858e.this.f16801m, 15, bVar), C6858e.this.f16789a);
                C6858e.this.f16801m.sendMessageDelayed(Message.obtain(C6858e.this.f16801m, 16, bVar), C6858e.this.f16790b);
                ConnectionResult connectionResult = new ConnectionResult(2, null);
                if (m21719c(connectionResult)) {
                    return false;
                }
                C6858e.this.m21753b(connectionResult, this.f16809h);
                return false;
            } else {
                n1Var.mo21585a(new C6840p(a));
                return false;
            }
        }

        @WorkerThread
        /* renamed from: c */
        public final void m21717c(AbstractC6918r0 r0Var) {
            r0Var.mo21586a(this.f16806e, m21716d());
            try {
                r0Var.mo21587a((C6859a<?>) this);
            } catch (DeadObjectException e) {
                mo21503f(1);
                this.f16803b.disconnect();
            }
        }

        /* renamed from: c */
        public final boolean m21720c() {
            return this.f16803b.isConnected();
        }

        @WorkerThread
        /* renamed from: c */
        public final boolean m21719c(@NonNull ConnectionResult connectionResult) {
            synchronized (C6858e.f16787p) {
                if (C6858e.this.f16798j == null || !C6858e.this.f16799k.contains(this.f16805d)) {
                    return false;
                }
                C6858e.this.f16798j.m21670b(connectionResult, this.f16809h);
                return true;
            }
        }

        @WorkerThread
        /* renamed from: d */
        public final void m21715d(ConnectionResult connectionResult) {
            for (C6873g2 g2Var : this.f16807f) {
                String str = null;
                if (C7018s.m21297a(connectionResult, ConnectionResult.f6495e)) {
                    str = this.f16803b.m21853c();
                }
                g2Var.m21676a(this.f16805d, connectionResult, str);
            }
            this.f16807f.clear();
        }

        /* renamed from: d */
        public final boolean m21716d() {
            return this.f16803b.mo16072e();
        }

        @WorkerThread
        /* renamed from: e */
        public final void m21714e() {
            C7021t.m21292a(C6858e.this.f16801m);
            if (this.f16811j) {
                m21736a();
            }
        }

        /* renamed from: f */
        public final C6805a.AbstractC6816f m21713f() {
            return this.f16803b;
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6827b
        /* renamed from: f */
        public final void mo21503f(int i) {
            if (Looper.myLooper() == C6858e.this.f16801m.getLooper()) {
                m21710i();
            } else {
                C6858e.this.f16801m.post(new RunnableC6852c1(this));
            }
        }

        @WorkerThread
        /* renamed from: g */
        public final void m21712g() {
            C7021t.m21292a(C6858e.this.f16801m);
            if (this.f16811j) {
                m21704o();
                m21735a(C6858e.this.f16793e.mo21883c(C6858e.this.f16792d) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                this.f16803b.disconnect();
            }
        }

        @WorkerThread
        /* renamed from: h */
        public final void m21711h() {
            m21706m();
            m21715d(ConnectionResult.f6495e);
            m21704o();
            Iterator<C6899m1> it = this.f16808g.values().iterator();
            while (it.hasNext()) {
                C6899m1 next = it.next();
                if (m21727a(next.f16881a.m21657b()) != null) {
                    it.remove();
                } else {
                    try {
                        next.f16881a.m21658a(this.f16804c, new C9145i<>());
                    } catch (DeadObjectException e) {
                        mo21503f(1);
                        this.f16803b.disconnect();
                    } catch (RemoteException e2) {
                        it.remove();
                    }
                }
            }
            m21709j();
            m21703p();
        }

        @WorkerThread
        /* renamed from: i */
        public final void m21710i() {
            m21706m();
            this.f16811j = true;
            this.f16806e.m21573c();
            C6858e.this.f16801m.sendMessageDelayed(Message.obtain(C6858e.this.f16801m, 9, this.f16805d), C6858e.this.f16789a);
            C6858e.this.f16801m.sendMessageDelayed(Message.obtain(C6858e.this.f16801m, 11, this.f16805d), C6858e.this.f16790b);
            C6858e.this.f16794f.m21332a();
        }

        @WorkerThread
        /* renamed from: j */
        public final void m21709j() {
            ArrayList arrayList = new ArrayList(this.f16802a);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                int i2 = i + 1;
                AbstractC6918r0 r0Var = (AbstractC6918r0) obj;
                if (this.f16803b.isConnected()) {
                    i = i2;
                    if (m21721b(r0Var)) {
                        this.f16802a.remove(r0Var);
                        i = i2;
                    }
                } else {
                    return;
                }
            }
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6827b
        /* renamed from: j */
        public final void mo21502j(@Nullable Bundle bundle) {
            if (Looper.myLooper() == C6858e.this.f16801m.getLooper()) {
                m21711h();
            } else {
                C6858e.this.f16801m.post(new RunnableC6848b1(this));
            }
        }

        @WorkerThread
        /* renamed from: k */
        public final void m21708k() {
            C7021t.m21292a(C6858e.this.f16801m);
            m21735a(C6858e.f16785n);
            this.f16806e.m21575b();
            for (C6878i.C6879a aVar : (C6878i.C6879a[]) this.f16808g.keySet().toArray(new C6878i.C6879a[this.f16808g.size()])) {
                m21729a(new C6857d2(aVar, new C9145i()));
            }
            m21715d(new ConnectionResult(4));
            if (this.f16803b.isConnected()) {
                this.f16803b.m21857a(new C6863e1(this));
            }
        }

        /* renamed from: l */
        public final Map<C6878i.C6879a<?>, C6899m1> m21707l() {
            return this.f16808g;
        }

        @WorkerThread
        /* renamed from: m */
        public final void m21706m() {
            C7021t.m21292a(C6858e.this.f16801m);
            this.f16813l = null;
        }

        @WorkerThread
        /* renamed from: n */
        public final ConnectionResult m21705n() {
            C7021t.m21292a(C6858e.this.f16801m);
            return this.f16813l;
        }

        @WorkerThread
        /* renamed from: o */
        public final void m21704o() {
            if (this.f16811j) {
                C6858e.this.f16801m.removeMessages(11, this.f16805d);
                C6858e.this.f16801m.removeMessages(9, this.f16805d);
                this.f16811j = false;
            }
        }

        /* renamed from: p */
        public final void m21703p() {
            C6858e.this.f16801m.removeMessages(12, this.f16805d);
            C6858e.this.f16801m.sendMessageDelayed(C6858e.this.f16801m.obtainMessage(12, this.f16805d), C6858e.this.f16791c);
        }

        @WorkerThread
        /* renamed from: q */
        public final boolean m21702q() {
            return m21728a(true);
        }

        /* renamed from: r */
        public final AbstractC9123f m21701r() {
            BinderC6911p1 p1Var = this.f16810i;
            if (p1Var == null) {
                return null;
            }
            return p1Var.m21598G0();
        }
    }

    /* renamed from: h.i.a.e.d.k.q.e$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/e$b.class */
    public static final class C6860b {

        /* renamed from: a */
        public final C6864e2<?> f16815a;

        /* renamed from: b */
        public final Feature f16816b;

        public C6860b(C6864e2<?> e2Var, Feature feature) {
            this.f16815a = e2Var;
            this.f16816b = feature;
        }

        public /* synthetic */ C6860b(C6864e2 e2Var, Feature feature, C6843a1 a1Var) {
            this(e2Var, feature);
        }

        public final boolean equals(Object obj) {
            if (obj == null || !(obj instanceof C6860b)) {
                return false;
            }
            C6860b bVar = (C6860b) obj;
            return C7018s.m21297a(this.f16815a, bVar.f16815a) && C7018s.m21297a(this.f16816b, bVar.f16816b);
        }

        public final int hashCode() {
            return C7018s.m21296a(this.f16815a, this.f16816b);
        }

        public final String toString() {
            C7018s.C7019a a = C7018s.m21298a(this);
            a.m21295a(Person.KEY_KEY, this.f16815a);
            a.m21295a("feature", this.f16816b);
            return a.toString();
        }
    }

    /* renamed from: h.i.a.e.d.k.q.e$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/e$c.class */
    public final class C6861c implements AbstractC6923s1, AbstractC6969d.AbstractC6972c {

        /* renamed from: a */
        public final C6805a.AbstractC6816f f16817a;

        /* renamed from: b */
        public final C6864e2<?> f16818b;

        /* renamed from: c */
        public AbstractC7003m f16819c = null;

        /* renamed from: d */
        public Set<Scope> f16820d = null;

        /* renamed from: e */
        public boolean f16821e = false;

        public C6861c(C6805a.AbstractC6816f fVar, C6864e2<?> e2Var) {
            this.f16817a = fVar;
            this.f16818b = e2Var;
        }

        @WorkerThread
        /* renamed from: a */
        public final void m21698a() {
            AbstractC7003m mVar;
            if (this.f16821e && (mVar = this.f16819c) != null) {
                this.f16817a.m21856a(mVar, this.f16820d);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d.AbstractC6972c
        /* renamed from: a */
        public final void mo21410a(@NonNull ConnectionResult connectionResult) {
            C6858e.this.f16801m.post(new RunnableC6872g1(this, connectionResult));
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6923s1
        @WorkerThread
        /* renamed from: a */
        public final void mo21572a(AbstractC7003m mVar, Set<Scope> set) {
            if (mVar == null || set == null) {
                Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                mo21571b(new ConnectionResult(4));
                return;
            }
            this.f16819c = mVar;
            this.f16820d = set;
            m21698a();
        }

        @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6923s1
        @WorkerThread
        /* renamed from: b */
        public final void mo21571b(ConnectionResult connectionResult) {
            ((C6859a) C6858e.this.f16797i.get(this.f16818b)).m21725b(connectionResult);
        }
    }

    public C6858e(Context context, Looper looper, C6790c cVar) {
        this.f16792d = context;
        this.f16801m = new HandlerC7537i(looper, this);
        this.f16793e = cVar;
        this.f16794f = new C7001l(cVar);
        Handler handler = this.f16801m;
        handler.sendMessage(handler.obtainMessage(6));
    }

    /* renamed from: a */
    public static C6858e m21763a(Context context) {
        C6858e eVar;
        synchronized (f16787p) {
            if (f16788q == null) {
                HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
                handlerThread.start();
                f16788q = new C6858e(context.getApplicationContext(), handlerThread.getLooper(), C6790c.m21910a());
            }
            eVar = f16788q;
        }
        return eVar;
    }

    /* renamed from: d */
    public static void m21747d() {
        synchronized (f16787p) {
            if (f16788q != null) {
                C6858e eVar = f16788q;
                eVar.f16796h.incrementAndGet();
                eVar.f16801m.sendMessageAtFrontOfQueue(eVar.f16801m.obtainMessage(10));
            }
        }
    }

    /* renamed from: e */
    public static C6858e m21745e() {
        C6858e eVar;
        synchronized (f16787p) {
            C7021t.m21289a(f16788q, "Must guarantee manager is non-null before using getInstance");
            eVar = f16788q;
        }
        return eVar;
    }

    /* renamed from: a */
    public final PendingIntent m21758a(C6864e2<?> e2Var, int i) {
        AbstractC9123f r;
        C6859a<?> aVar = this.f16797i.get(e2Var);
        if (aVar == null || (r = aVar.m21701r()) == null) {
            return null;
        }
        return PendingIntent.getActivity(this.f16792d, i, r.mo21422j(), 134217728);
    }

    /* renamed from: a */
    public final AbstractC9143h<Map<C6864e2<?>, String>> m21755a(Iterable<? extends C6822e<?>> iterable) {
        C6873g2 g2Var = new C6873g2(iterable);
        Handler handler = this.f16801m;
        handler.sendMessage(handler.obtainMessage(2, g2Var));
        return g2Var.m21677a();
    }

    /* renamed from: a */
    public final void m21764a() {
        this.f16796h.incrementAndGet();
        Handler handler = this.f16801m;
        handler.sendMessage(handler.obtainMessage(10));
    }

    /* renamed from: a */
    public final void m21762a(ConnectionResult connectionResult, int i) {
        if (!m21753b(connectionResult, i)) {
            Handler handler = this.f16801m;
            handler.sendMessage(handler.obtainMessage(5, i, 0, connectionResult));
        }
    }

    /* renamed from: a */
    public final void m21761a(C6822e<?> eVar) {
        Handler handler = this.f16801m;
        handler.sendMessage(handler.obtainMessage(7, eVar));
    }

    /* renamed from: a */
    public final <O extends C6805a.AbstractC6809d> void m21760a(C6822e<O> eVar, int i, AbstractC6850c<? extends AbstractC6835k, C6805a.AbstractC6807b> cVar) {
        C6849b2 b2Var = new C6849b2(i, cVar);
        Handler handler = this.f16801m;
        handler.sendMessage(handler.obtainMessage(4, new C6895l1(b2Var, this.f16796h.get(), eVar)));
    }

    /* renamed from: a */
    public final <O extends C6805a.AbstractC6809d, ResultT> void m21759a(C6822e<O> eVar, int i, AbstractC6905o<C6805a.AbstractC6807b, ResultT> oVar, C9145i<ResultT> iVar, AbstractC6897m mVar) {
        C6853c2 c2Var = new C6853c2(i, oVar, iVar, mVar);
        Handler handler = this.f16801m;
        handler.sendMessage(handler.obtainMessage(4, new C6895l1(c2Var, this.f16796h.get(), eVar)));
    }

    /* renamed from: a */
    public final void m21756a(@NonNull C6933v vVar) {
        synchronized (f16787p) {
            if (this.f16798j != vVar) {
                this.f16798j = vVar;
                this.f16799k.clear();
            }
            this.f16799k.addAll(vVar.m21523h());
        }
    }

    /* renamed from: b */
    public final int m21754b() {
        return this.f16795g.getAndIncrement();
    }

    @WorkerThread
    /* renamed from: b */
    public final void m21752b(C6822e<?> eVar) {
        C6864e2<?> g = eVar.m21830g();
        C6859a<?> aVar = this.f16797i.get(g);
        C6859a<?> aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new C6859a<>(eVar);
            this.f16797i.put(g, aVar2);
        }
        if (aVar2.m21716d()) {
            this.f16800l.add(g);
        }
        aVar2.m21736a();
    }

    /* renamed from: b */
    public final void m21750b(@NonNull C6933v vVar) {
        synchronized (f16787p) {
            if (this.f16798j == vVar) {
                this.f16798j = null;
                this.f16799k.clear();
            }
        }
    }

    /* renamed from: b */
    public final boolean m21753b(ConnectionResult connectionResult, int i) {
        return this.f16793e.m21902a(this.f16792d, connectionResult, i);
    }

    /* renamed from: c */
    public final void m21749c() {
        Handler handler = this.f16801m;
        handler.sendMessage(handler.obtainMessage(3));
    }

    @Override // android.os.Handler.Callback
    @WorkerThread
    public boolean handleMessage(Message message) {
        C6859a<?> aVar;
        int i = message.what;
        long j = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;
        switch (i) {
            case 1:
                if (((Boolean) message.obj).booleanValue()) {
                    j = 10000;
                }
                this.f16791c = j;
                this.f16801m.removeMessages(12);
                for (C6864e2<?> e2Var : this.f16797i.keySet()) {
                    Handler handler = this.f16801m;
                    handler.sendMessageDelayed(handler.obtainMessage(12, e2Var), this.f16791c);
                }
                return true;
            case 2:
                C6873g2 g2Var = (C6873g2) message.obj;
                for (C6864e2<?> e2Var2 : g2Var.m21675b()) {
                    C6859a<?> aVar2 = this.f16797i.get(e2Var2);
                    if (aVar2 == null) {
                        g2Var.m21676a(e2Var2, new ConnectionResult(13), null);
                        return true;
                    } else if (aVar2.m21720c()) {
                        g2Var.m21676a(e2Var2, ConnectionResult.f6495e, aVar2.m21713f().m21853c());
                    } else if (aVar2.m21705n() != null) {
                        g2Var.m21676a(e2Var2, aVar2.m21705n(), null);
                    } else {
                        aVar2.m21730a(g2Var);
                        aVar2.m21736a();
                    }
                }
                return true;
            case 3:
                for (C6859a<?> aVar3 : this.f16797i.values()) {
                    aVar3.m21706m();
                    aVar3.m21736a();
                }
                return true;
            case 4:
            case 8:
            case 13:
                C6895l1 l1Var = (C6895l1) message.obj;
                C6859a<?> aVar4 = this.f16797i.get(l1Var.f16879c.m21830g());
                C6859a<?> aVar5 = aVar4;
                if (aVar4 == null) {
                    m21752b(l1Var.f16879c);
                    aVar5 = this.f16797i.get(l1Var.f16879c.m21830g());
                }
                if (!aVar5.m21716d() || this.f16796h.get() == l1Var.f16878b) {
                    aVar5.m21729a(l1Var.f16877a);
                    return true;
                }
                l1Var.f16877a.mo21588a(f16785n);
                aVar5.m21708k();
                return true;
            case 5:
                int i2 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator<C6859a<?>> it = this.f16797i.values().iterator();
                while (true) {
                    if (it.hasNext()) {
                        aVar = it.next();
                        if (aVar.m21726b() == i2) {
                        }
                    } else {
                        aVar = null;
                    }
                }
                if (aVar != null) {
                    String b = this.f16793e.mo21888b(connectionResult.m32000c());
                    String H = connectionResult.m32004H();
                    StringBuilder sb = new StringBuilder(String.valueOf(b).length() + 69 + String.valueOf(H).length());
                    sb.append("Error resolution was canceled by the user, original error message: ");
                    sb.append(b);
                    sb.append(": ");
                    sb.append(H);
                    aVar.m21735a(new Status(17, sb.toString()));
                    return true;
                }
                StringBuilder sb2 = new StringBuilder(76);
                sb2.append("Could not find API instance ");
                sb2.append(i2);
                sb2.append(" while trying to fail enqueued calls.");
                Log.wtf("GoogleApiManager", sb2.toString(), new Exception());
                return true;
            case 6:
                if (!C7083o.m21131a() || !(this.f16792d.getApplicationContext() instanceof Application)) {
                    return true;
                }
                ComponentCallbacks2C6845b.m21808a((Application) this.f16792d.getApplicationContext());
                ComponentCallbacks2C6845b.m21805b().m21807a(new C6843a1(this));
                if (ComponentCallbacks2C6845b.m21805b().m21804b(true)) {
                    return true;
                }
                this.f16791c = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;
                return true;
            case 7:
                m21752b((C6822e) message.obj);
                return true;
            case 9:
                if (!this.f16797i.containsKey(message.obj)) {
                    return true;
                }
                this.f16797i.get(message.obj).m21714e();
                return true;
            case 10:
                for (C6864e2<?> e2Var3 : this.f16800l) {
                    this.f16797i.remove(e2Var3).m21708k();
                }
                this.f16800l.clear();
                return true;
            case 11:
                if (!this.f16797i.containsKey(message.obj)) {
                    return true;
                }
                this.f16797i.get(message.obj).m21712g();
                return true;
            case 12:
                if (!this.f16797i.containsKey(message.obj)) {
                    return true;
                }
                this.f16797i.get(message.obj).m21702q();
                return true;
            case 14:
                C6937w wVar = (C6937w) message.obj;
                C6864e2<?> b2 = wVar.m21520b();
                if (!this.f16797i.containsKey(b2)) {
                    wVar.m21521a().m16006a((C9145i<Boolean>) false);
                    return true;
                }
                wVar.m21521a().m16006a((C9145i<Boolean>) Boolean.valueOf(this.f16797i.get(b2).m21728a(false)));
                return true;
            case 15:
                C6860b bVar = (C6860b) message.obj;
                if (!this.f16797i.containsKey(bVar.f16815a)) {
                    return true;
                }
                this.f16797i.get(bVar.f16815a).m21731a(bVar);
                return true;
            case 16:
                C6860b bVar2 = (C6860b) message.obj;
                if (!this.f16797i.containsKey(bVar2.f16815a)) {
                    return true;
                }
                this.f16797i.get(bVar2.f16815a).m21722b(bVar2);
                return true;
            default:
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i);
                sb3.toString();
                return false;
        }
    }
}
