package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zabq;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.C6790c;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6829g;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
import p081h.p203i.p204a.p224e.p235d.p240n.C6993i;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p242y.C7034a;
import p081h.p203i.p204a.p224e.p235d.p249s.C7073e;
import p081h.p203i.p204a.p224e.p290p.AbstractC9123f;
import p081h.p203i.p204a.p224e.p290p.C9109a;
/* renamed from: h.i.a.e.d.k.q.n0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/n0.class */
public final class C6902n0 extends AbstractC6825f implements AbstractC6891k1 {

    /* renamed from: b */
    public final Lock f16886b;

    /* renamed from: c */
    public boolean f16887c;

    /* renamed from: d */
    public final C6993i f16888d;

    /* renamed from: f */
    public final int f16890f;

    /* renamed from: g */
    public final Context f16891g;

    /* renamed from: h */
    public final Looper f16892h;

    /* renamed from: j */
    public volatile boolean f16894j;

    /* renamed from: k */
    public long f16895k;

    /* renamed from: l */
    public long f16896l;

    /* renamed from: m */
    public final HandlerC6926t0 f16897m;

    /* renamed from: n */
    public final C6790c f16898n;

    /* renamed from: o */
    public zabq f16899o;

    /* renamed from: p */
    public final Map<C6805a.C6808c<?>, C6805a.AbstractC6816f> f16900p;

    /* renamed from: q */
    public Set<Scope> f16901q;

    /* renamed from: r */
    public final C6983e f16902r;

    /* renamed from: s */
    public final Map<C6805a<?>, Boolean> f16903s;

    /* renamed from: t */
    public final C6805a.AbstractC6806a<? extends AbstractC9123f, C9109a> f16904t;

    /* renamed from: u */
    public final C6885j f16905u;

    /* renamed from: v */
    public final ArrayList<C6900m2> f16906v;

    /* renamed from: w */
    public Integer f16907w;

    /* renamed from: x */
    public Set<C6927t1> f16908x;

    /* renamed from: y */
    public final C6939w1 f16909y;

    /* renamed from: z */
    public final C6993i.AbstractC6994a f16910z;

    /* renamed from: e */
    public AbstractC6887j1 f16889e = null;

    /* renamed from: i */
    public final Queue<AbstractC6850c<?, ?>> f16893i = new LinkedList();

    public C6902n0(Context context, Lock lock, Looper looper, C6983e eVar, C6790c cVar, C6805a.AbstractC6806a<? extends AbstractC9123f, C9109a> aVar, Map<C6805a<?>, Boolean> map, List<AbstractC6825f.AbstractC6827b> list, List<AbstractC6825f.AbstractC6828c> list2, Map<C6805a.C6808c<?>, C6805a.AbstractC6816f> map2, int i, int i2, ArrayList<C6900m2> arrayList, boolean z) {
        this.f16895k = C7073e.m21157a() ? 10000L : 120000L;
        this.f16896l = 5000L;
        this.f16901q = new HashSet();
        this.f16905u = new C6885j();
        this.f16907w = null;
        this.f16908x = null;
        this.f16910z = new C6906o0(this);
        this.f16891g = context;
        this.f16886b = lock;
        this.f16887c = false;
        this.f16888d = new C6993i(looper, this.f16910z);
        this.f16892h = looper;
        this.f16897m = new HandlerC6926t0(this, looper);
        this.f16898n = cVar;
        this.f16890f = i;
        if (this.f16890f >= 0) {
            this.f16907w = Integer.valueOf(i2);
        }
        this.f16903s = map;
        this.f16900p = map2;
        this.f16906v = arrayList;
        this.f16909y = new C6939w1(this.f16900p);
        for (AbstractC6825f.AbstractC6827b bVar : list) {
            this.f16888d.m21356a(bVar);
        }
        for (AbstractC6825f.AbstractC6828c cVar2 : list2) {
            this.f16888d.m21355a(cVar2);
        }
        this.f16902r = eVar;
        this.f16904t = aVar;
    }

    /* renamed from: a */
    public static int m21643a(Iterable<C6805a.AbstractC6816f> iterable, boolean z) {
        boolean z2 = false;
        boolean z3 = false;
        for (C6805a.AbstractC6816f fVar : iterable) {
            boolean z4 = z2;
            if (fVar.mo16072e()) {
                z4 = true;
            }
            z2 = z4;
            if (fVar.mo21456a()) {
                z3 = true;
                z2 = z4;
            }
        }
        if (z2) {
            return (!z3 || !z) ? 1 : 2;
        }
        return 3;
    }

    /* renamed from: c */
    public static String m21639c(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "UNKNOWN" : "SIGN_IN_MODE_NONE" : "SIGN_IN_MODE_OPTIONAL" : "SIGN_IN_MODE_REQUIRED";
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: a */
    public final ConnectionResult mo21498a() {
        boolean z = true;
        C7021t.m21281b(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        this.f16886b.lock();
        try {
            if (this.f16890f >= 0) {
                if (this.f16907w == null) {
                    z = false;
                }
                C7021t.m21281b(z, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.f16907w == null) {
                this.f16907w = Integer.valueOf(m21643a((Iterable<C6805a.AbstractC6816f>) this.f16900p.values(), false));
            } else if (this.f16907w.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            m21642b(this.f16907w.intValue());
            this.f16888d.m21354b();
            return this.f16889e.mo21507c();
        } finally {
            this.f16886b.unlock();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    @NonNull
    /* renamed from: a */
    public final <C extends C6805a.AbstractC6816f> C mo21650a(@NonNull C6805a.C6808c<C> cVar) {
        C c = (C) this.f16900p.get(cVar);
        C7021t.m21289a(c, "Appropriate Api was not requested.");
        return c;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: a */
    public final <A extends C6805a.AbstractC6807b, R extends AbstractC6835k, T extends AbstractC6850c<R, A>> T mo21648a(@NonNull T t) {
        C7021t.m21285a(t.m21768i() != null, "This task can not be enqueued (it's probably a Batch or malformed)");
        boolean containsKey = this.f16900p.containsKey(t.m21768i());
        String b = t.m21769h() != null ? t.m21769h().m21865b() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(b).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(b);
        sb.append(" required for this call.");
        C7021t.m21285a(containsKey, sb.toString());
        this.f16886b.lock();
        try {
            if (this.f16889e != null) {
                return (T) this.f16889e.mo21509b(t);
            }
            this.f16893i.add(t);
            return t;
        } finally {
            this.f16886b.unlock();
        }
    }

    /* renamed from: a */
    public final void m21651a(int i) {
        this.f16886b.lock();
        boolean z = true;
        if (i != 3) {
            z = true;
            if (i != 1) {
                z = i == 2;
            }
        }
        try {
            StringBuilder sb = new StringBuilder(33);
            sb.append("Illegal sign-in mode: ");
            sb.append(i);
            C7021t.m21285a(z, sb.toString());
            m21642b(i);
            m21632m();
        } finally {
            this.f16886b.unlock();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6891k1
    @GuardedBy("mLock")
    /* renamed from: a */
    public final void mo21583a(int i, boolean z) {
        if (i == 1 && !z && !this.f16894j) {
            this.f16894j = true;
            if (this.f16899o == null && !C7073e.m21157a()) {
                this.f16899o = this.f16898n.m21901a(this.f16891g.getApplicationContext(), new C6930u0(this));
            }
            HandlerC6926t0 t0Var = this.f16897m;
            t0Var.sendMessageDelayed(t0Var.obtainMessage(1), this.f16895k);
            HandlerC6926t0 t0Var2 = this.f16897m;
            t0Var2.sendMessageDelayed(t0Var2.obtainMessage(2), this.f16896l);
        }
        this.f16909y.m21499b();
        this.f16888d.m21359a(i);
        this.f16888d.m21360a();
        if (i == 2) {
            m21632m();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6891k1
    @GuardedBy("mLock")
    /* renamed from: a */
    public final void mo21582a(Bundle bundle) {
        while (!this.f16893i.isEmpty()) {
            mo21641b((C6902n0) this.f16893i.remove());
        }
        this.f16888d.m21358a(bundle);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6891k1
    @GuardedBy("mLock")
    /* renamed from: a */
    public final void mo21581a(ConnectionResult connectionResult) {
        if (!this.f16898n.m21886b(this.f16891g, connectionResult.m32000c())) {
            m21630o();
        }
        if (!this.f16894j) {
            this.f16888d.m21357a(connectionResult);
            this.f16888d.m21360a();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: a */
    public final void mo21497a(@NonNull AbstractC6825f.AbstractC6828c cVar) {
        this.f16888d.m21355a(cVar);
    }

    /* renamed from: a */
    public final void m21649a(AbstractC6825f fVar, C6901n nVar, boolean z) {
        C7034a.f17173d.mo21195a(fVar).mo21817a(new C6922s0(this, nVar, z, fVar));
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: a */
    public final void mo21644a(C6927t1 t1Var) {
        this.f16886b.lock();
        try {
            if (this.f16908x == null) {
                Log.wtf("GoogleApiClientImpl", "Attempted to remove pending transform when no transforms are registered.", new Exception());
            } else if (!this.f16908x.remove(t1Var)) {
                Log.wtf("GoogleApiClientImpl", "Failed to remove pending transform - this may lead to memory leaks!", new Exception());
            } else if (!m21629p()) {
                this.f16889e.mo21519a();
            }
        } finally {
            this.f16886b.unlock();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: a */
    public final void mo21496a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println(this.f16891g);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.f16894j);
        printWriter.append(" mWorkQueue.size()=").print(this.f16893i.size());
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.f16909y.f17014a.size());
        AbstractC6887j1 j1Var = this.f16889e;
        if (j1Var != null) {
            j1Var.mo21511a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: a */
    public final boolean mo21647a(AbstractC6893l lVar) {
        AbstractC6887j1 j1Var = this.f16889e;
        return j1Var != null && j1Var.mo21515a(lVar);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: b */
    public final AbstractC6829g<Status> mo21495b() {
        C7021t.m21281b(mo21491g(), "GoogleApiClient is not connected yet.");
        C7021t.m21281b(this.f16907w.intValue() != 2, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API");
        C6901n nVar = new C6901n(this);
        if (this.f16900p.containsKey(C7034a.f17170a)) {
            m21649a(this, nVar, false);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            C6910p0 p0Var = new C6910p0(this, atomicReference, nVar);
            C6914q0 q0Var = new C6914q0(this, nVar);
            AbstractC6825f.C6826a aVar = new AbstractC6825f.C6826a(this.f16891g);
            aVar.m21822a(C7034a.f17172c);
            aVar.m21820a(p0Var);
            aVar.m21819a(q0Var);
            aVar.m21823a(this.f16897m);
            AbstractC6825f a = aVar.m21824a();
            atomicReference.set(a);
            a.mo21493c();
        }
        return nVar;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: b */
    public final <A extends C6805a.AbstractC6807b, T extends AbstractC6850c<? extends AbstractC6835k, A>> T mo21641b(@NonNull T t) {
        C7021t.m21285a(t.m21768i() != null, "This task can not be executed (it's probably a Batch or malformed)");
        boolean containsKey = this.f16900p.containsKey(t.m21768i());
        String b = t.m21769h() != null ? t.m21769h().m21865b() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(b).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(b);
        sb.append(" required for this call.");
        C7021t.m21285a(containsKey, sb.toString());
        this.f16886b.lock();
        try {
            if (this.f16889e == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            } else if (!this.f16894j) {
                return (T) this.f16889e.mo21516a((AbstractC6887j1) t);
            } else {
                this.f16893i.add(t);
                while (!this.f16893i.isEmpty()) {
                    AbstractC6850c<?, ?> remove = this.f16893i.remove();
                    this.f16909y.m21500a(remove);
                    remove.m21771c(Status.f6511f);
                }
                return t;
            }
        } finally {
            this.f16886b.unlock();
        }
    }

    /* renamed from: b */
    public final void m21642b(int i) {
        Integer num = this.f16907w;
        if (num == null) {
            this.f16907w = Integer.valueOf(i);
        } else if (num.intValue() != i) {
            String c = m21639c(i);
            String c2 = m21639c(this.f16907w.intValue());
            StringBuilder sb = new StringBuilder(String.valueOf(c).length() + 51 + String.valueOf(c2).length());
            sb.append("Cannot use sign-in mode: ");
            sb.append(c);
            sb.append(". Mode was already set to ");
            sb.append(c2);
            throw new IllegalStateException(sb.toString());
        }
        if (this.f16889e == null) {
            boolean z = false;
            boolean z2 = false;
            for (C6805a.AbstractC6816f fVar : this.f16900p.values()) {
                boolean z3 = z;
                if (fVar.mo16072e()) {
                    z3 = true;
                }
                z = z3;
                if (fVar.mo21456a()) {
                    z2 = true;
                    z = z3;
                }
            }
            int intValue = this.f16907w.intValue();
            if (intValue != 1) {
                if (intValue == 2 && z) {
                    if (this.f16887c) {
                        this.f16889e = new C6928t2(this.f16891g, this.f16886b, this.f16892h, this.f16898n, this.f16900p, this.f16902r, this.f16903s, this.f16904t, this.f16906v, this, true);
                        return;
                    } else {
                        this.f16889e = C6908o2.m21621a(this.f16891g, this, this.f16886b, this.f16892h, this.f16898n, this.f16900p, this.f16902r, this.f16903s, this.f16904t, this.f16906v);
                        return;
                    }
                }
            } else if (!z) {
                throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
            } else if (z2) {
                throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            if (!this.f16887c || z2) {
                this.f16889e = new C6938w0(this.f16891g, this, this.f16886b, this.f16892h, this.f16898n, this.f16900p, this.f16902r, this.f16903s, this.f16904t, this.f16906v, this);
            } else {
                this.f16889e = new C6928t2(this.f16891g, this.f16886b, this.f16892h, this.f16898n, this.f16900p, this.f16902r, this.f16903s, this.f16904t, this.f16906v, this, false);
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: b */
    public final void mo21494b(@NonNull AbstractC6825f.AbstractC6828c cVar) {
        this.f16888d.m21353b(cVar);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: c */
    public final void mo21493c() {
        this.f16886b.lock();
        try {
            boolean z = false;
            if (this.f16890f >= 0) {
                if (this.f16907w != null) {
                    z = true;
                }
                C7021t.m21281b(z, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.f16907w == null) {
                this.f16907w = Integer.valueOf(m21643a((Iterable<C6805a.AbstractC6816f>) this.f16900p.values(), false));
            } else if (this.f16907w.intValue() == 2) {
                throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            m21651a(this.f16907w.intValue());
        } finally {
            this.f16886b.unlock();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: d */
    public final void mo21492d() {
        this.f16886b.lock();
        try {
            this.f16909y.m21501a();
            if (this.f16889e != null) {
                this.f16889e.disconnect();
            }
            this.f16905u.m21662a();
            for (AbstractC6850c<?, ?> cVar : this.f16893i) {
                cVar.m31983a((AbstractC6951z1) null);
                cVar.m31987a();
            }
            this.f16893i.clear();
            if (this.f16889e != null) {
                m21630o();
                this.f16888d.m21360a();
            }
        } finally {
            this.f16886b.unlock();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: e */
    public final Context mo21637e() {
        return this.f16891g;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: f */
    public final Looper mo21636f() {
        return this.f16892h;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: g */
    public final boolean mo21491g() {
        AbstractC6887j1 j1Var = this.f16889e;
        return j1Var != null && j1Var.isConnected();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f
    /* renamed from: h */
    public final void mo21635h() {
        AbstractC6887j1 j1Var = this.f16889e;
        if (j1Var != null) {
            j1Var.mo21510b();
        }
    }

    /* renamed from: k */
    public final void m21634k() {
        mo21492d();
        mo21493c();
    }

    /* renamed from: l */
    public final void m21633l() {
        this.f16886b.lock();
        try {
            if (this.f16894j) {
                m21632m();
            }
        } finally {
            this.f16886b.unlock();
        }
    }

    @GuardedBy("mLock")
    /* renamed from: m */
    public final void m21632m() {
        this.f16888d.m21354b();
        this.f16889e.connect();
    }

    /* renamed from: n */
    public final void m21631n() {
        this.f16886b.lock();
        try {
            if (m21630o()) {
                m21632m();
            }
        } finally {
            this.f16886b.unlock();
        }
    }

    @GuardedBy("mLock")
    /* renamed from: o */
    public final boolean m21630o() {
        if (!this.f16894j) {
            return false;
        }
        this.f16894j = false;
        this.f16897m.removeMessages(2);
        this.f16897m.removeMessages(1);
        zabq zabqVar = this.f16899o;
        if (zabqVar == null) {
            return true;
        }
        zabqVar.m31968a();
        this.f16899o = null;
        return true;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: p */
    public final boolean m21629p() {
        this.f16886b.lock();
        try {
            if (this.f16908x == null) {
                this.f16886b.unlock();
                return false;
            }
            boolean isEmpty = this.f16908x.isEmpty();
            this.f16886b.unlock();
            return !isEmpty;
        } catch (Throwable th) {
            this.f16886b.unlock();
            throw th;
        }
    }

    /* renamed from: q */
    public final String m21628q() {
        StringWriter stringWriter = new StringWriter();
        mo21496a("", (FileDescriptor) null, new PrintWriter(stringWriter), (String[]) null);
        return stringWriter.toString();
    }
}
