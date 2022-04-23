package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.C6793d;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
import p081h.p203i.p204a.p224e.p235d.p249s.p250t.ExecutorC7088a;
import p081h.p203i.p204a.p224e.p290p.AbstractC9123f;
import p081h.p203i.p204a.p224e.p290p.C9109a;
/* renamed from: h.i.a.e.d.k.q.t2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/t2.class */
public final class C6928t2 implements AbstractC6887j1 {

    /* renamed from: c */
    public final Map<C6805a<?>, Boolean> f16971c;

    /* renamed from: d */
    public final C6858e f16972d;

    /* renamed from: e */
    public final C6902n0 f16973e;

    /* renamed from: f */
    public final Lock f16974f;

    /* renamed from: g */
    public final Looper f16975g;

    /* renamed from: h */
    public final C6793d f16976h;

    /* renamed from: i */
    public final Condition f16977i;

    /* renamed from: j */
    public final C6983e f16978j;

    /* renamed from: k */
    public final boolean f16979k;

    /* renamed from: l */
    public final boolean f16980l;
    @GuardedBy("mLock")

    /* renamed from: n */
    public boolean f16982n;
    @GuardedBy("mLock")

    /* renamed from: o */
    public Map<C6864e2<?>, ConnectionResult> f16983o;
    @GuardedBy("mLock")

    /* renamed from: p */
    public Map<C6864e2<?>, ConnectionResult> f16984p;
    @GuardedBy("mLock")

    /* renamed from: q */
    public C6917r f16985q;
    @GuardedBy("mLock")

    /* renamed from: r */
    public ConnectionResult f16986r;

    /* renamed from: a */
    public final Map<C6805a.C6808c<?>, C6924s2<?>> f16969a = new HashMap();

    /* renamed from: b */
    public final Map<C6805a.C6808c<?>, C6924s2<?>> f16970b = new HashMap();

    /* renamed from: m */
    public final Queue<AbstractC6850c<?, ?>> f16981m = new LinkedList();

    public C6928t2(Context context, Lock lock, Looper looper, C6793d dVar, Map<C6805a.C6808c<?>, C6805a.AbstractC6816f> map, C6983e eVar, Map<C6805a<?>, Boolean> map2, C6805a.AbstractC6806a<? extends AbstractC9123f, C9109a> aVar, ArrayList<C6900m2> arrayList, C6902n0 n0Var, boolean z) {
        this.f16974f = lock;
        this.f16975g = looper;
        this.f16977i = lock.newCondition();
        this.f16976h = dVar;
        this.f16973e = n0Var;
        this.f16971c = map2;
        this.f16978j = eVar;
        this.f16979k = z;
        HashMap hashMap = new HashMap();
        for (C6805a<?> aVar2 : map2.keySet()) {
            hashMap.put(aVar2.m21866a(), aVar2);
        }
        HashMap hashMap2 = new HashMap();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            C6900m2 m2Var = arrayList.get(i);
            i++;
            C6900m2 m2Var2 = m2Var;
            hashMap2.put(m2Var2.f16883a, m2Var2);
        }
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = true;
        boolean z5 = false;
        for (Map.Entry<C6805a.C6808c<?>, C6805a.AbstractC6816f> entry : map.entrySet()) {
            C6805a aVar3 = (C6805a) hashMap.get(entry.getKey());
            C6805a.AbstractC6816f value = entry.getValue();
            if (value.m21852d()) {
                z4 = z4;
                z5 = !this.f16971c.get(aVar3).booleanValue() ? true : z5;
                z3 = true;
            } else {
                z5 = z5;
                z4 = false;
                z3 = z3;
            }
            C6924s2<?> s2Var = new C6924s2<>(context, aVar3, looper, value, (C6900m2) hashMap2.get(aVar3), eVar, aVar);
            this.f16969a.put(entry.getKey(), s2Var);
            if (value.mo16072e()) {
                this.f16970b.put(entry.getKey(), s2Var);
            }
        }
        this.f16980l = (!z3 || z4 || z5) ? false : z2;
        this.f16972d = C6858e.m21745e();
    }

    @Nullable
    /* renamed from: a */
    public final ConnectionResult m21556a(@NonNull C6805a.C6808c<?> cVar) {
        this.f16974f.lock();
        try {
            C6924s2<?> s2Var = this.f16969a.get(cVar);
            if (this.f16983o != null && s2Var != null) {
                return this.f16983o.get(s2Var.m21830g());
            }
            this.f16974f.unlock();
            return null;
        } finally {
            this.f16974f.unlock();
        }
    }

    @Nullable
    /* renamed from: a */
    public final ConnectionResult m21555a(@NonNull C6805a<?> aVar) {
        return m21556a(aVar.m21866a());
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    /* renamed from: a */
    public final <A extends C6805a.AbstractC6807b, T extends AbstractC6850c<? extends AbstractC6835k, A>> T mo21516a(@NonNull T t) {
        C6805a.C6808c<A> i = t.m21768i();
        if (this.f16979k && m21546c((C6928t2) t)) {
            return t;
        }
        this.f16973e.f16909y.m21500a(t);
        this.f16969a.get(i).m21834c(t);
        return t;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    /* renamed from: a */
    public final void mo21519a() {
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    /* renamed from: a */
    public final void mo21511a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    /* JADX WARN: Finally extract failed */
    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    /* renamed from: a */
    public final boolean mo21515a(AbstractC6893l lVar) {
        this.f16974f.lock();
        try {
            if (!this.f16982n || m21542e()) {
                this.f16974f.unlock();
                return false;
            }
            this.f16972d.m21749c();
            this.f16985q = new C6917r(this, lVar);
            this.f16972d.m21755a(this.f16970b.values()).mo16018a(new ExecutorC7088a(this.f16975g), this.f16985q);
            this.f16974f.unlock();
            return true;
        } catch (Throwable th) {
            this.f16974f.unlock();
            throw th;
        }
    }

    /* renamed from: a */
    public final boolean m21554a(C6924s2<?> s2Var, ConnectionResult connectionResult) {
        return !connectionResult.m32001K() && !connectionResult.m32002J() && this.f16971c.get(s2Var.m21835c()).booleanValue() && s2Var.m21568h().m21852d() && this.f16976h.mo21884c(connectionResult.m32000c());
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    /* renamed from: b */
    public final <A extends C6805a.AbstractC6807b, R extends AbstractC6835k, T extends AbstractC6850c<R, A>> T mo21509b(@NonNull T t) {
        if (this.f16979k && m21546c((C6928t2) t)) {
            return t;
        }
        if (!isConnected()) {
            this.f16981m.add(t);
            return t;
        }
        this.f16973e.f16909y.m21500a(t);
        this.f16969a.get(t.m21768i()).m21836b(t);
        return t;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    /* renamed from: b */
    public final void mo21510b() {
        this.f16974f.lock();
        try {
            this.f16972d.m21764a();
            if (this.f16985q != null) {
                this.f16985q.m21590a();
                this.f16985q = null;
            }
            if (this.f16984p == null) {
                this.f16984p = new ArrayMap(this.f16970b.size());
            }
            ConnectionResult connectionResult = new ConnectionResult(4);
            for (C6924s2<?> s2Var : this.f16970b.values()) {
                this.f16984p.put(s2Var.m21830g(), connectionResult);
            }
            if (this.f16983o != null) {
                this.f16983o.putAll(this.f16984p);
            }
        } finally {
            this.f16974f.unlock();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    @GuardedBy("mLock")
    /* renamed from: c */
    public final ConnectionResult mo21507c() {
        connect();
        while (m21544d()) {
            try {
                this.f16977i.await();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        if (isConnected()) {
            return ConnectionResult.f6495e;
        }
        ConnectionResult connectionResult = this.f16986r;
        return connectionResult != null ? connectionResult : new ConnectionResult(13, null);
    }

    /* renamed from: c */
    public final <T extends AbstractC6850c<? extends AbstractC6835k, ? extends C6805a.AbstractC6807b>> boolean m21546c(@NonNull T t) {
        C6805a.C6808c<?> i = t.m21768i();
        ConnectionResult a = m21556a(i);
        if (a == null || a.m32000c() != 4) {
            return false;
        }
        t.m21771c(new Status(4, null, this.f16972d.m21758a(this.f16969a.get(i).m21830g(), System.identityHashCode(this.f16973e))));
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    public final void connect() {
        this.f16974f.lock();
        try {
            if (!this.f16982n) {
                this.f16982n = true;
                this.f16983o = null;
                this.f16984p = null;
                this.f16985q = null;
                this.f16986r = null;
                this.f16972d.m21749c();
                this.f16972d.m21755a(this.f16969a.values()).mo16018a(new ExecutorC7088a(this.f16975g), new C6936v2(this, null));
            }
        } finally {
            this.f16974f.unlock();
        }
    }

    /* renamed from: d */
    public final boolean m21544d() {
        boolean z;
        this.f16974f.lock();
        try {
            if (this.f16983o == null) {
                if (this.f16982n) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } finally {
            this.f16974f.unlock();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    public final void disconnect() {
        this.f16974f.lock();
        try {
            this.f16982n = false;
            this.f16983o = null;
            this.f16984p = null;
            if (this.f16985q != null) {
                this.f16985q.m21590a();
                this.f16985q = null;
            }
            this.f16986r = null;
            while (!this.f16981m.isEmpty()) {
                AbstractC6850c<?, ?> remove = this.f16981m.remove();
                remove.m31983a((AbstractC6951z1) null);
                remove.m31987a();
            }
            this.f16977i.signalAll();
        } finally {
            this.f16974f.unlock();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: e */
    public final boolean m21542e() {
        ConnectionResult a;
        this.f16974f.lock();
        try {
            if (this.f16982n && this.f16979k) {
                Iterator<C6805a.C6808c<?>> it = this.f16970b.keySet().iterator();
                do {
                    if (it.hasNext()) {
                        a = m21556a(it.next());
                        if (a == null) {
                            break;
                        }
                    } else {
                        this.f16974f.unlock();
                        return true;
                    }
                } while (a.m32001K());
                this.f16974f.unlock();
                return false;
            }
            this.f16974f.unlock();
            return false;
        } catch (Throwable th) {
            this.f16974f.unlock();
            throw th;
        }
    }

    @GuardedBy("mLock")
    /* renamed from: f */
    public final void m21540f() {
        C6983e eVar = this.f16978j;
        if (eVar == null) {
            this.f16973e.f16901q = Collections.emptySet();
            return;
        }
        HashSet hashSet = new HashSet(eVar.m21388i());
        Map<C6805a<?>, C6983e.C6985b> f = this.f16978j.m21391f();
        for (C6805a<?> aVar : f.keySet()) {
            ConnectionResult a = m21555a(aVar);
            if (a != null && a.m32001K()) {
                hashSet.addAll(f.get(aVar).f17113a);
            }
        }
        this.f16973e.f16901q = hashSet;
    }

    @GuardedBy("mLock")
    /* renamed from: g */
    public final void m21538g() {
        while (!this.f16981m.isEmpty()) {
            mo21516a((C6928t2) this.f16981m.remove());
        }
        this.f16973e.mo21582a((Bundle) null);
    }

    @Nullable
    @GuardedBy("mLock")
    /* renamed from: h */
    public final ConnectionResult m21536h() {
        ConnectionResult connectionResult = null;
        ConnectionResult connectionResult2 = null;
        int i = 0;
        int i2 = 0;
        for (C6924s2<?> s2Var : this.f16969a.values()) {
            C6805a<?> c = s2Var.m21835c();
            ConnectionResult connectionResult3 = this.f16983o.get(s2Var.m21830g());
            if (!connectionResult3.m32001K() && (!this.f16971c.get(c).booleanValue() || connectionResult3.m32002J() || this.f16976h.mo21884c(connectionResult3.m32000c()))) {
                if (connectionResult3.m32000c() != 4 || !this.f16979k) {
                    int a = c.m21864c().m21860a();
                    if (connectionResult == null || i > a) {
                        connectionResult = connectionResult3;
                        i = a;
                    }
                } else {
                    int a2 = c.m21864c().m21860a();
                    if (connectionResult2 == null || i2 > a2) {
                        connectionResult2 = connectionResult3;
                        i2 = a2;
                    }
                }
            }
        }
        return (connectionResult == null || connectionResult2 == null || i <= i2) ? connectionResult : connectionResult2;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    public final boolean isConnected() {
        boolean z;
        this.f16974f.lock();
        try {
            if (this.f16983o != null) {
                if (this.f16986r == null) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } finally {
            this.f16974f.unlock();
        }
    }
}
