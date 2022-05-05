package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.C6793d;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p265f.HandlerC7537i;
import p081h.p203i.p204a.p224e.p290p.AbstractC9123f;
import p081h.p203i.p204a.p224e.p290p.C9109a;
/* renamed from: h.i.a.e.d.k.q.o2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/o2.class */
public final class C6908o2 implements AbstractC6887j1 {

    /* renamed from: a */
    public final Context f16915a;

    /* renamed from: b */
    public final C6902n0 f16916b;

    /* renamed from: c */
    public final Looper f16917c;

    /* renamed from: d */
    public final C6938w0 f16918d;

    /* renamed from: e */
    public final C6938w0 f16919e;

    /* renamed from: f */
    public final Map<C6805a.C6808c<?>, C6938w0> f16920f;

    /* renamed from: h */
    public final C6805a.AbstractC6816f f16922h;

    /* renamed from: i */
    public Bundle f16923i;

    /* renamed from: m */
    public final Lock f16927m;

    /* renamed from: g */
    public final Set<AbstractC6893l> f16921g = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: j */
    public ConnectionResult f16924j = null;

    /* renamed from: k */
    public ConnectionResult f16925k = null;

    /* renamed from: l */
    public boolean f16926l = false;
    @GuardedBy("mLock")

    /* renamed from: n */
    public int f16928n = 0;

    public C6908o2(Context context, C6902n0 n0Var, Lock lock, Looper looper, C6793d dVar, Map<C6805a.C6808c<?>, C6805a.AbstractC6816f> map, Map<C6805a.C6808c<?>, C6805a.AbstractC6816f> map2, C6983e eVar, C6805a.AbstractC6806a<? extends AbstractC9123f, C9109a> aVar, C6805a.AbstractC6816f fVar, ArrayList<C6900m2> arrayList, ArrayList<C6900m2> arrayList2, Map<C6805a<?>, Boolean> map3, Map<C6805a<?>, Boolean> map4) {
        this.f16915a = context;
        this.f16916b = n0Var;
        this.f16927m = lock;
        this.f16917c = looper;
        this.f16922h = fVar;
        this.f16918d = new C6938w0(context, this.f16916b, lock, looper, dVar, map2, null, map4, null, arrayList2, new C6916q2(this, null));
        this.f16919e = new C6938w0(context, this.f16916b, lock, looper, dVar, map, eVar, map3, aVar, arrayList, new C6920r2(this, null));
        ArrayMap arrayMap = new ArrayMap();
        for (C6805a.C6808c<?> cVar : map2.keySet()) {
            arrayMap.put(cVar, this.f16918d);
        }
        for (C6805a.C6808c<?> cVar2 : map.keySet()) {
            arrayMap.put(cVar2, this.f16919e);
        }
        this.f16920f = Collections.unmodifiableMap(arrayMap);
    }

    /* renamed from: a */
    public static C6908o2 m21621a(Context context, C6902n0 n0Var, Lock lock, Looper looper, C6793d dVar, Map<C6805a.C6808c<?>, C6805a.AbstractC6816f> map, C6983e eVar, Map<C6805a<?>, Boolean> map2, C6805a.AbstractC6806a<? extends AbstractC9123f, C9109a> aVar, ArrayList<C6900m2> arrayList) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        C6805a.AbstractC6816f fVar = null;
        for (Map.Entry<C6805a.C6808c<?>, C6805a.AbstractC6816f> entry : map.entrySet()) {
            C6805a.AbstractC6816f value = entry.getValue();
            if (value.mo21456a()) {
                fVar = value;
            }
            if (value.mo16072e()) {
                arrayMap.put(entry.getKey(), value);
            } else {
                arrayMap2.put(entry.getKey(), value);
            }
        }
        C7021t.m21281b(!arrayMap.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        for (C6805a<?> aVar2 : map2.keySet()) {
            C6805a.C6808c<?> a = aVar2.m21866a();
            if (arrayMap.containsKey(a)) {
                arrayMap3.put(aVar2, map2.get(aVar2));
            } else if (arrayMap2.containsKey(a)) {
                arrayMap4.put(aVar2, map2.get(aVar2));
            } else {
                throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            C6900m2 m2Var = arrayList.get(i);
            i++;
            C6900m2 m2Var2 = m2Var;
            if (arrayMap3.containsKey(m2Var2.f16883a)) {
                arrayList2.add(m2Var2);
            } else if (arrayMap4.containsKey(m2Var2.f16883a)) {
                arrayList3.add(m2Var2);
            } else {
                throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
            }
        }
        return new C6908o2(context, n0Var, lock, looper, dVar, arrayMap, arrayMap2, eVar, aVar, fVar, arrayList2, arrayList3, arrayMap3, arrayMap4);
    }

    /* renamed from: b */
    public static boolean m21613b(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.m32001K();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    @GuardedBy("mLock")
    /* renamed from: a */
    public final <A extends C6805a.AbstractC6807b, T extends AbstractC6850c<? extends AbstractC6835k, A>> T mo21516a(@NonNull T t) {
        if (!m21610c((AbstractC6850c<? extends AbstractC6835k, ? extends C6805a.AbstractC6807b>) t)) {
            return (T) this.f16918d.mo21516a((C6938w0) t);
        }
        if (!m21601h()) {
            return (T) this.f16919e.mo21516a((C6938w0) t);
        }
        t.m21771c(new Status(4, null, m21606e()));
        return t;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    @GuardedBy("mLock")
    /* renamed from: a */
    public final void mo21519a() {
        this.f16918d.mo21519a();
        this.f16919e.mo21519a();
    }

    @GuardedBy("mLock")
    /* renamed from: a */
    public final void m21622a(int i, boolean z) {
        this.f16916b.mo21583a(i, z);
        this.f16925k = null;
        this.f16924j = null;
    }

    /* renamed from: a */
    public final void m21620a(Bundle bundle) {
        Bundle bundle2 = this.f16923i;
        if (bundle2 == null) {
            this.f16923i = bundle;
        } else if (bundle != null) {
            bundle2.putAll(bundle);
        }
    }

    @GuardedBy("mLock")
    /* renamed from: a */
    public final void m21619a(ConnectionResult connectionResult) {
        int i = this.f16928n;
        if (i != 1) {
            if (i != 2) {
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                this.f16928n = 0;
            }
            this.f16916b.mo21581a(connectionResult);
        }
        m21602g();
        this.f16928n = 0;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    /* renamed from: a */
    public final void mo21511a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(":");
        this.f16919e.mo21511a(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(":");
        this.f16918d.mo21511a(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    /* JADX WARN: Finally extract failed */
    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    /* renamed from: a */
    public final boolean mo21515a(AbstractC6893l lVar) {
        this.f16927m.lock();
        try {
            if ((m21608d() || isConnected()) && !this.f16919e.isConnected()) {
                this.f16921g.add(lVar);
                if (this.f16928n == 0) {
                    this.f16928n = 1;
                }
                this.f16925k = null;
                this.f16919e.connect();
                this.f16927m.unlock();
                return true;
            }
            this.f16927m.unlock();
            return false;
        } catch (Throwable th) {
            this.f16927m.unlock();
            throw th;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    @GuardedBy("mLock")
    /* renamed from: b */
    public final <A extends C6805a.AbstractC6807b, R extends AbstractC6835k, T extends AbstractC6850c<R, A>> T mo21509b(@NonNull T t) {
        if (!m21610c((AbstractC6850c<? extends AbstractC6835k, ? extends C6805a.AbstractC6807b>) t)) {
            return (T) this.f16918d.mo21509b((C6938w0) t);
        }
        if (!m21601h()) {
            return (T) this.f16919e.mo21509b((C6938w0) t);
        }
        t.m21771c(new Status(4, null, m21606e()));
        return t;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    /* renamed from: b */
    public final void mo21510b() {
        this.f16927m.lock();
        try {
            boolean d = m21608d();
            this.f16919e.disconnect();
            this.f16925k = new ConnectionResult(4);
            if (d) {
                new HandlerC7537i(this.f16917c).post(new RunnableC6912p2(this));
            } else {
                m21602g();
            }
        } finally {
            this.f16927m.unlock();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    @GuardedBy("mLock")
    /* renamed from: c */
    public final ConnectionResult mo21507c() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: c */
    public final boolean m21610c(AbstractC6850c<? extends AbstractC6835k, ? extends C6805a.AbstractC6807b> cVar) {
        C6805a.C6808c<? extends C6805a.AbstractC6807b> i = cVar.m21768i();
        C7021t.m21285a(this.f16920f.containsKey(i), "GoogleApiClient is not configured to use the API required for this call.");
        return this.f16920f.get(i).equals(this.f16919e);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    @GuardedBy("mLock")
    public final void connect() {
        this.f16928n = 2;
        this.f16926l = false;
        this.f16925k = null;
        this.f16924j = null;
        this.f16918d.connect();
        this.f16919e.connect();
    }

    /* renamed from: d */
    public final boolean m21608d() {
        this.f16927m.lock();
        try {
            return this.f16928n == 2;
        } finally {
            this.f16927m.unlock();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    @GuardedBy("mLock")
    public final void disconnect() {
        this.f16925k = null;
        this.f16924j = null;
        this.f16928n = 0;
        this.f16918d.disconnect();
        this.f16919e.disconnect();
        m21602g();
    }

    @Nullable
    /* renamed from: e */
    public final PendingIntent m21606e() {
        if (this.f16922h == null) {
            return null;
        }
        return PendingIntent.getActivity(this.f16915a, System.identityHashCode(this.f16916b), this.f16922h.mo21422j(), 134217728);
    }

    @GuardedBy("mLock")
    /* renamed from: f */
    public final void m21604f() {
        ConnectionResult connectionResult;
        if (m21613b(this.f16924j)) {
            if (m21613b(this.f16925k) || m21601h()) {
                int i = this.f16928n;
                if (i != 1) {
                    if (i != 2) {
                        Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                        this.f16928n = 0;
                        return;
                    }
                    this.f16916b.mo21582a(this.f16923i);
                }
                m21602g();
                this.f16928n = 0;
                return;
            }
            ConnectionResult connectionResult2 = this.f16925k;
            if (connectionResult2 == null) {
                return;
            }
            if (this.f16928n == 1) {
                m21602g();
                return;
            }
            m21619a(connectionResult2);
            this.f16918d.disconnect();
        } else if (this.f16924j == null || !m21613b(this.f16925k)) {
            ConnectionResult connectionResult3 = this.f16924j;
            if (connectionResult3 != null && (connectionResult = this.f16925k) != null) {
                if (this.f16919e.f17009m < this.f16918d.f17009m) {
                    connectionResult3 = connectionResult;
                }
                m21619a(connectionResult3);
            }
        } else {
            this.f16919e.disconnect();
            m21619a(this.f16924j);
        }
    }

    @GuardedBy("mLock")
    /* renamed from: g */
    public final void m21602g() {
        for (AbstractC6893l lVar : this.f16921g) {
            lVar.onComplete();
        }
        this.f16921g.clear();
    }

    @GuardedBy("mLock")
    /* renamed from: h */
    public final boolean m21601h() {
        ConnectionResult connectionResult = this.f16925k;
        return connectionResult != null && connectionResult.m32000c() == 4;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6887j1
    public final boolean isConnected() {
        boolean z;
        this.f16927m.lock();
        try {
            if (this.f16918d.isConnected()) {
                z = true;
                if (!this.f16919e.isConnected()) {
                    z = true;
                    if (!m21601h()) {
                        if (this.f16928n == 1) {
                            z = true;
                        }
                    }
                }
                return z;
            }
            z = false;
            return z;
        } finally {
            this.f16927m.unlock();
        }
    }
}
