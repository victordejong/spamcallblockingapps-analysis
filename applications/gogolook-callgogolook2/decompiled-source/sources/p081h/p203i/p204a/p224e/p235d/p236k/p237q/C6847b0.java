package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.signin.internal.zaj;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.C6793d;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7003m;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
import p081h.p203i.p204a.p224e.p290p.AbstractC9123f;
import p081h.p203i.p204a.p224e.p290p.C9109a;
/* renamed from: h.i.a.e.d.k.q.b0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/b0.class */
public final class C6847b0 implements AbstractC6934v0 {

    /* renamed from: a */
    public final C6938w0 f16749a;

    /* renamed from: b */
    public final Lock f16750b;

    /* renamed from: c */
    public final Context f16751c;

    /* renamed from: d */
    public final C6793d f16752d;

    /* renamed from: e */
    public ConnectionResult f16753e;

    /* renamed from: f */
    public int f16754f;

    /* renamed from: h */
    public int f16756h;

    /* renamed from: k */
    public AbstractC9123f f16759k;

    /* renamed from: l */
    public boolean f16760l;

    /* renamed from: m */
    public boolean f16761m;

    /* renamed from: n */
    public boolean f16762n;

    /* renamed from: o */
    public AbstractC7003m f16763o;

    /* renamed from: p */
    public boolean f16764p;

    /* renamed from: q */
    public boolean f16765q;

    /* renamed from: r */
    public final C6983e f16766r;

    /* renamed from: s */
    public final Map<C6805a<?>, Boolean> f16767s;

    /* renamed from: t */
    public final C6805a.AbstractC6806a<? extends AbstractC9123f, C9109a> f16768t;

    /* renamed from: g */
    public int f16755g = 0;

    /* renamed from: i */
    public final Bundle f16757i = new Bundle();

    /* renamed from: j */
    public final Set<C6805a.C6808c> f16758j = new HashSet();

    /* renamed from: u */
    public ArrayList<Future<?>> f16769u = new ArrayList<>();

    public C6847b0(C6938w0 w0Var, C6983e eVar, Map<C6805a<?>, Boolean> map, C6793d dVar, C6805a.AbstractC6806a<? extends AbstractC9123f, C9109a> aVar, Lock lock, Context context) {
        this.f16749a = w0Var;
        this.f16766r = eVar;
        this.f16767s = map;
        this.f16752d = dVar;
        this.f16768t = aVar;
        this.f16750b = lock;
        this.f16751c = context;
    }

    /* renamed from: b */
    public static String m21793b(int i) {
        return i != 0 ? i != 1 ? "UNKNOWN" : "STEP_GETTING_REMOTE_SERVICE" : "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    /* renamed from: a */
    public final <A extends C6805a.AbstractC6807b, T extends AbstractC6850c<? extends AbstractC6835k, A>> T mo21484a(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    @GuardedBy("mLock")
    /* renamed from: a */
    public final void mo21486a() {
        this.f16749a.f17003g.clear();
        this.f16761m = false;
        this.f16753e = null;
        this.f16755g = 0;
        this.f16760l = true;
        this.f16762n = false;
        this.f16764p = false;
        HashMap hashMap = new HashMap();
        boolean z = false;
        for (C6805a<?> aVar : this.f16767s.keySet()) {
            C6805a.AbstractC6816f fVar = this.f16749a.f17002f.get(aVar.m21866a());
            z |= aVar.m21864c().m21860a() == 1;
            boolean booleanValue = this.f16767s.get(aVar).booleanValue();
            if (fVar.mo16072e()) {
                this.f16761m = true;
                if (booleanValue) {
                    this.f16758j.add(aVar.m21866a());
                } else {
                    this.f16760l = false;
                }
            }
            hashMap.put(fVar, new C6855d0(this, aVar, booleanValue));
        }
        if (z) {
            this.f16761m = false;
        }
        if (this.f16761m) {
            this.f16766r.m21396a(Integer.valueOf(System.identityHashCode(this.f16749a.f17010n)));
            C6890k0 k0Var = new C6890k0(this, null);
            C6805a.AbstractC6806a<? extends AbstractC9123f, C9109a> aVar2 = this.f16768t;
            Context context = this.f16751c;
            Looper f = this.f16749a.f17010n.mo21636f();
            C6983e eVar = this.f16766r;
            this.f16759k = (AbstractC9123f) aVar2.mo16058a(context, f, eVar, eVar.m21387j(), k0Var, k0Var);
        }
        this.f16756h = this.f16749a.f17002f.size();
        this.f16769u.add(C6950z0.m21470a().submit(new C6862e0(this, hashMap)));
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    @GuardedBy("mLock")
    /* renamed from: a */
    public final void mo21485a(ConnectionResult connectionResult, C6805a<?> aVar, boolean z) {
        if (m21803a(1)) {
            m21791b(connectionResult, aVar, z);
            if (m21794b()) {
                m21786d();
            }
        }
    }

    @GuardedBy("mLock")
    /* renamed from: a */
    public final void m21801a(zaj zajVar) {
        if (m21803a(0)) {
            ConnectionResult c = zajVar.m31648c();
            if (c.m32001K()) {
                ResolveAccountResponse H = zajVar.m31649H();
                ConnectionResult H2 = H.m31944H();
                if (!H2.m32001K()) {
                    String valueOf = String.valueOf(H2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
                    sb.append("Sign-in succeeded with resolve account failure: ");
                    sb.append(valueOf);
                    Log.wtf("GoogleApiClientConnecting", sb.toString(), new Exception());
                    m21792b(H2);
                    return;
                }
                this.f16762n = true;
                this.f16763o = H.m31941c();
                this.f16764p = H.m31943I();
                this.f16765q = H.m31942J();
                m21788c();
            } else if (m21802a(c)) {
                m21784e();
                m21788c();
            } else {
                m21792b(c);
            }
        }
    }

    @GuardedBy("mLock")
    /* renamed from: a */
    public final void m21795a(boolean z) {
        AbstractC9123f fVar = this.f16759k;
        if (fVar != null) {
            if (fVar.isConnected() && z) {
                this.f16759k.mo16055g();
            }
            this.f16759k.disconnect();
            if (this.f16766r.m21386k()) {
                this.f16759k = null;
            }
            this.f16763o = null;
        }
    }

    @GuardedBy("mLock")
    /* renamed from: a */
    public final boolean m21803a(int i) {
        if (this.f16755g == i) {
            return true;
        }
        this.f16749a.f17010n.m21628q();
        String valueOf = String.valueOf(this);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
        sb.append("Unexpected callback in ");
        sb.append(valueOf);
        sb.toString();
        int i2 = this.f16756h;
        StringBuilder sb2 = new StringBuilder(33);
        sb2.append("mRemainingConnections=");
        sb2.append(i2);
        sb2.toString();
        String b = m21793b(this.f16755g);
        String b2 = m21793b(i);
        StringBuilder sb3 = new StringBuilder(String.valueOf(b).length() + 70 + String.valueOf(b2).length());
        sb3.append("GoogleApiClient connecting is in step ");
        sb3.append(b);
        sb3.append(" but received callback for step ");
        sb3.append(b2);
        Log.wtf("GoogleApiClientConnecting", sb3.toString(), new Exception());
        m21792b(new ConnectionResult(8, null));
        return false;
    }

    @GuardedBy("mLock")
    /* renamed from: a */
    public final boolean m21802a(ConnectionResult connectionResult) {
        return this.f16760l && !connectionResult.m32002J();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    /* renamed from: b */
    public final <A extends C6805a.AbstractC6807b, R extends AbstractC6835k, T extends AbstractC6850c<R, A>> T mo21481b(T t) {
        this.f16749a.f17010n.f16893i.add(t);
        return t;
    }

    @GuardedBy("mLock")
    /* renamed from: b */
    public final void m21792b(ConnectionResult connectionResult) {
        m21782f();
        m21795a(!connectionResult.m32002J());
        this.f16749a.m21518a(connectionResult);
        this.f16749a.f17011o.mo21581a(connectionResult);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
        if ((r5.m32002J() || r4.f16752d.m21895a(r5.m32000c()) != null) != false) goto L_0x003a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004b, code lost:
        if (r0 < r4.f16754f) goto L_0x004e;
     */
    @javax.annotation.concurrent.GuardedBy("mLock")
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21791b(com.google.android.gms.common.ConnectionResult r5, p081h.p203i.p204a.p224e.p235d.p236k.C6805a<?> r6, boolean r7) {
        /*
            r4 = this;
            r0 = r6
            h.i.a.e.d.k.a$e r0 = r0.m21864c()
            int r0 = r0.m21860a()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L_0x003a
            r0 = r5
            boolean r0 = r0.m32002J()
            if (r0 == 0) goto L_0x001d
        L_0x0017:
            r0 = 1
            r10 = r0
            goto L_0x0031
        L_0x001d:
            r0 = r4
            h.i.a.e.d.d r0 = r0.f16752d
            r1 = r5
            int r1 = r1.m32000c()
            android.content.Intent r0 = r0.m21895a(r1)
            if (r0 == 0) goto L_0x002e
            goto L_0x0017
        L_0x002e:
            r0 = 0
            r10 = r0
        L_0x0031:
            r0 = r9
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0051
        L_0x003a:
            r0 = r4
            com.google.android.gms.common.ConnectionResult r0 = r0.f16753e
            if (r0 == 0) goto L_0x004e
            r0 = r9
            r11 = r0
            r0 = r8
            r1 = r4
            int r1 = r1.f16754f
            if (r0 >= r1) goto L_0x0051
        L_0x004e:
            r0 = 1
            r11 = r0
        L_0x0051:
            r0 = r11
            if (r0 == 0) goto L_0x0061
            r0 = r4
            r1 = r5
            r0.f16753e = r1
            r0 = r4
            r1 = r8
            r0.f16754f = r1
        L_0x0061:
            r0 = r4
            h.i.a.e.d.k.q.w0 r0 = r0.f16749a
            java.util.Map<h.i.a.e.d.k.a$c<?>, com.google.android.gms.common.ConnectionResult> r0 = r0.f17003g
            r1 = r6
            h.i.a.e.d.k.a$c r1 = r1.m21866a()
            r2 = r5
            java.lang.Object r0 = r0.put(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6847b0.m21791b(com.google.android.gms.common.ConnectionResult, h.i.a.e.d.k.a, boolean):void");
    }

    @GuardedBy("mLock")
    /* renamed from: b */
    public final boolean m21794b() {
        this.f16756h--;
        int i = this.f16756h;
        if (i > 0) {
            return false;
        }
        if (i < 0) {
            this.f16749a.f17010n.m21628q();
            Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            m21792b(new ConnectionResult(8, null));
            return false;
        }
        ConnectionResult connectionResult = this.f16753e;
        if (connectionResult == null) {
            return true;
        }
        this.f16749a.f17009m = this.f16754f;
        m21792b(connectionResult);
        return false;
    }

    @GuardedBy("mLock")
    /* renamed from: c */
    public final void m21788c() {
        if (this.f16756h == 0) {
            if (!this.f16761m || this.f16762n) {
                ArrayList arrayList = new ArrayList();
                this.f16755g = 1;
                this.f16756h = this.f16749a.f17002f.size();
                for (C6805a.C6808c<?> cVar : this.f16749a.f17002f.keySet()) {
                    if (!this.f16749a.f17003g.containsKey(cVar)) {
                        arrayList.add(this.f16749a.f17002f.get(cVar));
                    } else if (m21794b()) {
                        m21786d();
                    }
                }
                if (!arrayList.isEmpty()) {
                    this.f16769u.add(C6950z0.m21470a().submit(new C6875h0(this, arrayList)));
                }
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    public final void connect() {
    }

    @GuardedBy("mLock")
    /* renamed from: d */
    public final void m21786d() {
        this.f16749a.m21504f();
        C6950z0.m21470a().execute(new RunnableC6851c0(this));
        AbstractC9123f fVar = this.f16759k;
        if (fVar != null) {
            if (this.f16764p) {
                fVar.mo16057a(this.f16763o, this.f16765q);
            }
            m21795a(false);
        }
        for (C6805a.C6808c<?> cVar : this.f16749a.f17003g.keySet()) {
            this.f16749a.f17002f.get(cVar).disconnect();
        }
        this.f16749a.f17011o.mo21582a(this.f16757i.isEmpty() ? null : this.f16757i);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    @GuardedBy("mLock")
    public final boolean disconnect() {
        m21782f();
        m21795a(true);
        this.f16749a.m21518a((ConnectionResult) null);
        return true;
    }

    @GuardedBy("mLock")
    /* renamed from: e */
    public final void m21784e() {
        this.f16761m = false;
        this.f16749a.f17010n.f16901q = Collections.emptySet();
        for (C6805a.C6808c<?> cVar : this.f16758j) {
            if (!this.f16749a.f17003g.containsKey(cVar)) {
                this.f16749a.f17003g.put(cVar, new ConnectionResult(17, null));
            }
        }
    }

    /* renamed from: f */
    public final void m21782f() {
        ArrayList<Future<?>> arrayList = this.f16769u;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Future<?> future = arrayList.get(i);
            i++;
            future.cancel(true);
        }
        this.f16769u.clear();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    @GuardedBy("mLock")
    /* renamed from: f */
    public final void mo21480f(int i) {
        m21792b(new ConnectionResult(8, null));
    }

    /* renamed from: g */
    public final Set<Scope> m21780g() {
        C6983e eVar = this.f16766r;
        if (eVar == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(eVar.m21388i());
        Map<C6805a<?>, C6983e.C6985b> f = this.f16766r.m21391f();
        for (C6805a<?> aVar : f.keySet()) {
            if (!this.f16749a.f17003g.containsKey(aVar.m21866a())) {
                hashSet.addAll(f.get(aVar).f17113a);
            }
        }
        return hashSet;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6934v0
    @GuardedBy("mLock")
    /* renamed from: j */
    public final void mo21479j(Bundle bundle) {
        if (m21803a(1)) {
            if (bundle != null) {
                this.f16757i.putAll(bundle);
            }
            if (m21794b()) {
                m21786d();
            }
        }
    }
}
