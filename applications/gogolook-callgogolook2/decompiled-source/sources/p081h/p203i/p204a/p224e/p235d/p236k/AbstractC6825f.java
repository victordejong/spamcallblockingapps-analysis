package p081h.p203i.p204a.p224e.p235d.p236k;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.C6790c;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6850c;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6893l;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6868f2;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6870g;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6900m2;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6902n0;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6927t1;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p290p.AbstractC9123f;
import p081h.p203i.p204a.p224e.p290p.C9109a;
import p081h.p203i.p204a.p224e.p290p.C9120c;
/* renamed from: h.i.a.e.d.k.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/f.class */
public abstract class AbstractC6825f {
    @GuardedBy("sAllClients")

    /* renamed from: a */
    public static final Set<AbstractC6825f> f16720a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: h.i.a.e.d.k.f$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/f$a.class */
    public static final class C6826a {

        /* renamed from: a */
        public Account f16721a;

        /* renamed from: d */
        public int f16724d;

        /* renamed from: e */
        public View f16725e;

        /* renamed from: f */
        public String f16726f;

        /* renamed from: g */
        public String f16727g;

        /* renamed from: i */
        public final Context f16729i;

        /* renamed from: k */
        public C6870g f16731k;

        /* renamed from: m */
        public AbstractC6828c f16733m;

        /* renamed from: n */
        public Looper f16734n;

        /* renamed from: b */
        public final Set<Scope> f16722b = new HashSet();

        /* renamed from: c */
        public final Set<Scope> f16723c = new HashSet();

        /* renamed from: h */
        public final Map<C6805a<?>, C6983e.C6985b> f16728h = new ArrayMap();

        /* renamed from: j */
        public final Map<C6805a<?>, C6805a.AbstractC6809d> f16730j = new ArrayMap();

        /* renamed from: l */
        public int f16732l = -1;

        /* renamed from: o */
        public C6790c f16735o = C6790c.m21910a();

        /* renamed from: p */
        public C6805a.AbstractC6806a<? extends AbstractC9123f, C9109a> f16736p = C9120c.f20801c;

        /* renamed from: q */
        public final ArrayList<AbstractC6827b> f16737q = new ArrayList<>();

        /* renamed from: r */
        public final ArrayList<AbstractC6828c> f16738r = new ArrayList<>();

        public C6826a(@NonNull Context context) {
            this.f16729i = context;
            this.f16734n = context.getMainLooper();
            this.f16726f = context.getPackageName();
            this.f16727g = context.getClass().getName();
        }

        /* renamed from: a */
        public final C6826a m21823a(@NonNull Handler handler) {
            C7021t.m21289a(handler, (Object) "Handler must not be null");
            this.f16734n = handler.getLooper();
            return this;
        }

        /* renamed from: a */
        public final C6826a m21822a(@NonNull C6805a<? extends C6805a.AbstractC6809d.AbstractC6813d> aVar) {
            C7021t.m21289a(aVar, "Api must not be null");
            this.f16730j.put(aVar, null);
            List<Scope> a = aVar.m21864c().mo21859a(null);
            this.f16723c.addAll(a);
            this.f16722b.addAll(a);
            return this;
        }

        /* renamed from: a */
        public final <O extends C6805a.AbstractC6809d.AbstractC6812c> C6826a m21821a(@NonNull C6805a<O> aVar, @NonNull O o) {
            C7021t.m21289a(aVar, "Api must not be null");
            C7021t.m21289a(o, "Null options are not permitted for this Api");
            this.f16730j.put(aVar, o);
            List<Scope> a = aVar.m21864c().mo21859a(o);
            this.f16723c.addAll(a);
            this.f16722b.addAll(a);
            return this;
        }

        /* renamed from: a */
        public final C6826a m21820a(@NonNull AbstractC6827b bVar) {
            C7021t.m21289a(bVar, "Listener must not be null");
            this.f16737q.add(bVar);
            return this;
        }

        /* renamed from: a */
        public final C6826a m21819a(@NonNull AbstractC6828c cVar) {
            C7021t.m21289a(cVar, "Listener must not be null");
            this.f16738r.add(cVar);
            return this;
        }

        /* renamed from: a */
        public final AbstractC6825f m21824a() {
            C7021t.m21285a(!this.f16730j.isEmpty(), "must call addApi() to add at least one API");
            C6983e b = m21818b();
            C6805a<?> aVar = null;
            Map<C6805a<?>, C6983e.C6985b> f = b.m21391f();
            ArrayMap arrayMap = new ArrayMap();
            ArrayMap arrayMap2 = new ArrayMap();
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (C6805a<?> aVar2 : this.f16730j.keySet()) {
                C6805a.AbstractC6809d dVar = this.f16730j.get(aVar2);
                boolean z2 = f.get(aVar2) != null;
                arrayMap.put(aVar2, Boolean.valueOf(z2));
                C6900m2 m2Var = new C6900m2(aVar2, z2);
                arrayList.add(m2Var);
                C6805a.AbstractC6806a<?, ?> d = aVar2.m21863d();
                C6805a.AbstractC6816f a = d.mo16058a(this.f16729i, this.f16734n, b, dVar, m2Var, m2Var);
                arrayMap2.put(aVar2.m21866a(), a);
                boolean z3 = z;
                if (d.m21860a() == 1) {
                    z3 = dVar != null;
                }
                z = z3;
                if (a.mo21456a()) {
                    if (aVar == null) {
                        aVar = aVar2;
                        z = z3;
                    } else {
                        String b2 = aVar2.m21865b();
                        String b3 = aVar.m21865b();
                        StringBuilder sb = new StringBuilder(String.valueOf(b2).length() + 21 + String.valueOf(b3).length());
                        sb.append(b2);
                        sb.append(" cannot be used with ");
                        sb.append(b3);
                        throw new IllegalStateException(sb.toString());
                    }
                }
            }
            if (aVar != null) {
                if (!z) {
                    C7021t.m21280b(this.f16721a == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", aVar.m21865b());
                    C7021t.m21280b(this.f16722b.equals(this.f16723c), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", aVar.m21865b());
                } else {
                    String b4 = aVar.m21865b();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(b4).length() + 82);
                    sb2.append("With using ");
                    sb2.append(b4);
                    sb2.append(", GamesOptions can only be specified within GoogleSignInOptions.Builder");
                    throw new IllegalStateException(sb2.toString());
                }
            }
            C6902n0 n0Var = new C6902n0(this.f16729i, new ReentrantLock(), this.f16734n, b, this.f16735o, this.f16736p, arrayMap, this.f16737q, this.f16738r, arrayMap2, this.f16732l, C6902n0.m21643a((Iterable<C6805a.AbstractC6816f>) arrayMap2.values(), true), arrayList, false);
            synchronized (AbstractC6825f.f16720a) {
                AbstractC6825f.f16720a.add(n0Var);
            }
            if (this.f16732l >= 0) {
                C6868f2.m21682b(this.f16731k).m21685a(this.f16732l, n0Var, this.f16733m);
            }
            return n0Var;
        }

        /* renamed from: b */
        public final C6983e m21818b() {
            C9109a aVar = C9109a.f20786i;
            if (this.f16730j.containsKey(C9120c.f20803e)) {
                aVar = (C9109a) this.f16730j.get(C9120c.f20803e);
            }
            return new C6983e(this.f16721a, this.f16722b, this.f16728h, this.f16724d, this.f16725e, this.f16726f, this.f16727g, aVar, false);
        }
    }

    /* renamed from: h.i.a.e.d.k.f$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/f$b.class */
    public interface AbstractC6827b {
        /* renamed from: f */
        void mo21503f(int i);

        /* renamed from: j */
        void mo21502j(@Nullable Bundle bundle);
    }

    /* renamed from: h.i.a.e.d.k.f$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/f$c.class */
    public interface AbstractC6828c {
        /* renamed from: a */
        void mo21591a(@NonNull ConnectionResult connectionResult);
    }

    /* renamed from: i */
    public static Set<AbstractC6825f> m21826i() {
        Set<AbstractC6825f> set;
        synchronized (f16720a) {
            set = f16720a;
        }
        return set;
    }

    /* renamed from: a */
    public abstract ConnectionResult mo21498a();

    @NonNull
    /* renamed from: a */
    public <C extends C6805a.AbstractC6816f> C mo21650a(@NonNull C6805a.C6808c<C> cVar) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public <A extends C6805a.AbstractC6807b, R extends AbstractC6835k, T extends AbstractC6850c<R, A>> T mo21648a(@NonNull T t) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public abstract void mo21497a(@NonNull AbstractC6828c cVar);

    /* renamed from: a */
    public void mo21644a(C6927t1 t1Var) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public abstract void mo21496a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    /* renamed from: a */
    public boolean mo21647a(AbstractC6893l lVar) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: b */
    public abstract AbstractC6829g<Status> mo21495b();

    /* renamed from: b */
    public <A extends C6805a.AbstractC6807b, T extends AbstractC6850c<? extends AbstractC6835k, A>> T mo21641b(@NonNull T t) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: b */
    public abstract void mo21494b(@NonNull AbstractC6828c cVar);

    /* renamed from: c */
    public abstract void mo21493c();

    /* renamed from: d */
    public abstract void mo21492d();

    /* renamed from: e */
    public Context mo21637e() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: f */
    public Looper mo21636f() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: g */
    public abstract boolean mo21491g();

    /* renamed from: h */
    public void mo21635h() {
        throw new UnsupportedOperationException();
    }
}
