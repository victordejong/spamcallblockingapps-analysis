package androidx.media2.exoplayer.external.source;

import android.os.Handler;
import android.os.Message;
import androidx.media2.exoplayer.external.al;
import androidx.media2.exoplayer.external.source.an;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.upstream.w;
import androidx.media2.exoplayer.external.util.ac;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/h.class */
public final class h extends androidx.media2.exoplayer.external.source.d<d> {

    /* renamed from: a  reason: collision with root package name */
    private final List<d> f3615a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<c> f3616b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f3617c;

    /* renamed from: d  reason: collision with root package name */
    private final List<d> f3618d;
    private final Map<s, d> e;
    private final Map<Object, d> f;
    private final Set<d> g;
    private final boolean h;
    private final boolean i;
    private boolean j;
    private Set<c> k;
    private an l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/h$a.class */
    public static final class a extends androidx.media2.exoplayer.external.source.a {

        /* renamed from: b  reason: collision with root package name */
        private final int f3619b;

        /* renamed from: c  reason: collision with root package name */
        private final int f3620c;

        /* renamed from: d  reason: collision with root package name */
        private final int[] f3621d;
        private final int[] e;
        private final al[] f;
        private final Object[] g;
        private final HashMap<Object, Integer> h = new HashMap<>();

        public a(Collection<d> collection, an anVar, boolean z) {
            super(z, anVar);
            int size = collection.size();
            this.f3621d = new int[size];
            this.e = new int[size];
            this.f = new al[size];
            this.g = new Object[size];
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            for (d dVar : collection) {
                this.f[i3] = dVar.f3624a.f3741a;
                this.e[i3] = i;
                this.f3621d[i3] = i2;
                i += this.f[i3].b();
                i2 += this.f[i3].c();
                this.g[i3] = dVar.f3625b;
                this.h.put(this.g[i3], Integer.valueOf(i3));
                i3++;
            }
            this.f3619b = i;
            this.f3620c = i2;
        }

        @Override // androidx.media2.exoplayer.external.al
        public final int b() {
            return this.f3619b;
        }

        @Override // androidx.media2.exoplayer.external.source.a
        protected final int b(int i) {
            return ac.a(this.f3621d, i + 1);
        }

        @Override // androidx.media2.exoplayer.external.al
        public final int c() {
            return this.f3620c;
        }

        @Override // androidx.media2.exoplayer.external.source.a
        protected final int c(int i) {
            return ac.a(this.e, i + 1);
        }

        @Override // androidx.media2.exoplayer.external.source.a
        protected final int d(Object obj) {
            Integer num = this.h.get(obj);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }

        @Override // androidx.media2.exoplayer.external.source.a
        protected final al d(int i) {
            return this.f[i];
        }

        @Override // androidx.media2.exoplayer.external.source.a
        protected final int e(int i) {
            return this.f3621d[i];
        }

        @Override // androidx.media2.exoplayer.external.source.a
        protected final int f(int i) {
            return this.e[i];
        }

        @Override // androidx.media2.exoplayer.external.source.a
        protected final Object g(int i) {
            return this.g[i];
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/h$b.class */
    static final class b extends androidx.media2.exoplayer.external.source.b {
        private b() {
        }

        @Override // androidx.media2.exoplayer.external.source.t
        public final s a(t.a aVar, androidx.media2.exoplayer.external.upstream.b bVar, long j) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media2.exoplayer.external.source.t
        public final void a(s sVar) {
        }

        @Override // androidx.media2.exoplayer.external.source.b
        protected final void a(w wVar) {
        }

        @Override // androidx.media2.exoplayer.external.source.b
        protected final void c() {
        }

        @Override // androidx.media2.exoplayer.external.source.b, androidx.media2.exoplayer.external.source.t
        public final Object e() {
            return null;
        }

        @Override // androidx.media2.exoplayer.external.source.t
        public final void f() throws IOException {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/h$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final Handler f3622a;

        /* renamed from: b  reason: collision with root package name */
        final Runnable f3623b;

        public c(Handler handler, Runnable runnable) {
            this.f3622a = handler;
            this.f3623b = runnable;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/h$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final r f3624a;

        /* renamed from: d  reason: collision with root package name */
        public int f3627d;
        public int e;
        public boolean f;

        /* renamed from: c  reason: collision with root package name */
        public final List<t.a> f3626c = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        public final Object f3625b = new Object();

        public d(t tVar, boolean z) {
            this.f3624a = new r(tVar, z);
        }

        public final void a(int i, int i2) {
            this.f3627d = i;
            this.e = i2;
            this.f = false;
            this.f3626c.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/h$e.class */
    public static final class e<T> {

        /* renamed from: a  reason: collision with root package name */
        public final int f3628a;

        /* renamed from: b  reason: collision with root package name */
        public final T f3629b;

        /* renamed from: c  reason: collision with root package name */
        public final c f3630c;

        public e(int i, T t, c cVar) {
            this.f3628a = i;
            this.f3629b = t;
            this.f3630c = cVar;
        }
    }

    public h(boolean z, an anVar, t... tVarArr) {
        this(z, false, anVar, tVarArr);
    }

    public h(boolean z, boolean z2, an anVar, t... tVarArr) {
        for (t tVar : tVarArr) {
            androidx.media2.exoplayer.external.util.a.a(tVar);
        }
        this.l = anVar.a() > 0 ? anVar.d() : anVar;
        this.e = new IdentityHashMap();
        this.f = new HashMap();
        this.f3615a = new ArrayList();
        this.f3618d = new ArrayList();
        this.k = new HashSet();
        this.f3616b = new HashSet();
        this.g = new HashSet();
        this.h = z;
        this.i = z2;
        a((Collection<t>) Arrays.asList(tVarArr));
    }

    public h(boolean z, t... tVarArr) {
        this(z, new an.a(0), tVarArr);
    }

    public h(t... tVarArr) {
        this(false, tVarArr);
    }

    private t a(int i) {
        r rVar;
        synchronized (this) {
            rVar = this.f3615a.get(0).f3624a;
        }
        return rVar;
    }

    private void a(int i, int i2, int i3) {
        while (i < this.f3618d.size()) {
            d dVar = this.f3618d.get(i);
            dVar.f3627d += i2;
            dVar.e += i3;
            i++;
        }
    }

    private void a(int i, Collection<d> collection) {
        for (d dVar : collection) {
            if (i > 0) {
                d dVar2 = this.f3618d.get(i - 1);
                dVar.a(i, dVar2.e + dVar2.f3624a.f3741a.b());
            } else {
                dVar.a(i, 0);
            }
            a(i, 1, dVar.f3624a.f3741a.b());
            this.f3618d.add(i, dVar);
            this.f.put(dVar.f3625b, dVar);
            a((h) dVar, (t) dVar.f3624a);
            if (!d() || !this.e.isEmpty()) {
                b((h) dVar);
            } else {
                this.g.add(dVar);
            }
            i++;
        }
    }

    private void a(c cVar) {
        if (!this.j) {
            k().obtainMessage(4).sendToTarget();
            this.j = true;
        }
        if (cVar != null) {
            this.k.add(cVar);
        }
    }

    private void a(d dVar) {
        if (dVar.f && dVar.f3626c.isEmpty()) {
            this.g.remove(dVar);
            c((h) dVar);
        }
    }

    private void a(Set<c> set) {
        synchronized (this) {
            for (c cVar : set) {
                cVar.f3622a.post(cVar.f3623b);
            }
            this.f3616b.removeAll(set);
        }
    }

    private void b(int i, int i2) {
        androidx.media2.exoplayer.external.util.a.a(true);
        Handler handler = this.f3617c;
        ac.a(this.f3615a, i, i2);
        if (handler != null) {
            handler.obtainMessage(1, new e(i, Integer.valueOf(i2), null)).sendToTarget();
        }
    }

    private void j() {
        this.j = false;
        Set<c> set = this.k;
        this.k = new HashSet();
        a((al) new a(this.f3618d, this.l, this.h));
        k().obtainMessage(5, set).sendToTarget();
    }

    private Handler k() {
        return (Handler) androidx.media2.exoplayer.external.util.a.a(this.f3617c);
    }

    private void l() {
        Iterator<d> it2 = this.g.iterator();
        while (it2.hasNext()) {
            d next = it2.next();
            if (next.f3626c.isEmpty()) {
                b((h) next);
                it2.remove();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.source.d
    protected final /* bridge */ /* synthetic */ int a(d dVar, int i) {
        return i + dVar.e;
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final s a(t.a aVar, androidx.media2.exoplayer.external.upstream.b bVar, long j) {
        Object b2 = a.b(aVar.f3748a);
        t.a a2 = aVar.a(a.c(aVar.f3748a));
        d dVar = this.f.get(b2);
        d dVar2 = dVar;
        if (dVar == null) {
            dVar2 = new d(new b(), this.i);
            dVar2.f = true;
            a((h) dVar2, (t) dVar2.f3624a);
        }
        this.g.add(dVar2);
        a((h) dVar2);
        dVar2.f3626c.add(a2);
        q b3 = dVar2.f3624a.a(a2, bVar, j);
        this.e.put(b3, dVar2);
        l();
        return b3;
    }

    @Override // androidx.media2.exoplayer.external.source.d
    protected final /* synthetic */ t.a a(d dVar, t.a aVar) {
        d dVar2 = dVar;
        for (int i = 0; i < dVar2.f3626c.size(); i++) {
            if (dVar2.f3626c.get(i).f3751d == aVar.f3751d) {
                return aVar.a(a.a(dVar2.f3625b, aVar.f3748a));
            }
        }
        return null;
    }

    @Override // androidx.media2.exoplayer.external.source.d, androidx.media2.exoplayer.external.source.b
    protected final void a() {
    }

    public final void a(int i, int i2) {
        synchronized (this) {
            b(i, i2);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final void a(s sVar) {
        d dVar = (d) androidx.media2.exoplayer.external.util.a.a(this.e.remove(sVar));
        dVar.f3624a.a(sVar);
        dVar.f3626c.remove(((q) sVar).f3738b);
        if (!this.e.isEmpty()) {
            l();
        }
        a(dVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media2.exoplayer.external.source.d, androidx.media2.exoplayer.external.source.b
    public final void a(w wVar) {
        synchronized (this) {
            super.a(wVar);
            this.f3617c = new Handler(new Handler.Callback(this) { // from class: androidx.media2.exoplayer.external.source.i

                /* renamed from: a  reason: collision with root package name */
                private final h f3721a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f3721a = this;
                }

                @Override // android.os.Handler.Callback
                public final boolean handleMessage(Message message) {
                    return this.f3721a.a(message);
                }
            });
            if (this.f3615a.isEmpty()) {
                j();
                return;
            }
            this.l = this.l.a(0, this.f3615a.size());
            a(0, this.f3615a);
            a((c) null);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.d
    protected final /* synthetic */ void a(d dVar, t tVar, al alVar) {
        d dVar2 = dVar;
        if (dVar2 != null) {
            if (dVar2.f3627d + 1 < this.f3618d.size()) {
                int b2 = alVar.b() - (this.f3618d.get(dVar2.f3627d + 1).e - dVar2.e);
                if (b2 != 0) {
                    a(dVar2.f3627d + 1, 0, b2);
                }
            }
            a((c) null);
            return;
        }
        throw new IllegalArgumentException();
    }

    public final void a(Collection<t> collection) {
        synchronized (this) {
            int size = this.f3615a.size();
            androidx.media2.exoplayer.external.util.a.a(true);
            Handler handler = this.f3617c;
            for (t tVar : collection) {
                androidx.media2.exoplayer.external.util.a.a(tVar);
            }
            ArrayList arrayList = new ArrayList(collection.size());
            for (t tVar2 : collection) {
                arrayList.add(new d(tVar2, this.i));
            }
            this.f3615a.addAll(size, arrayList);
            if (handler != null && !collection.isEmpty()) {
                handler.obtainMessage(0, new e(size, arrayList, null)).sendToTarget();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ boolean a(Message message) {
        int i = message.what;
        if (i == 0) {
            e eVar = (e) ac.a(message.obj);
            this.l = this.l.a(eVar.f3628a, ((Collection) eVar.f3629b).size());
            a(eVar.f3628a, (Collection) eVar.f3629b);
            a(eVar.f3630c);
            return true;
        } else if (i == 1) {
            e eVar2 = (e) ac.a(message.obj);
            int i2 = eVar2.f3628a;
            int intValue = ((Integer) eVar2.f3629b).intValue();
            if (i2 == 0 && intValue == this.l.a()) {
                this.l = this.l.d();
            } else {
                this.l = this.l.b(i2, intValue);
            }
            while (true) {
                intValue--;
                if (intValue >= i2) {
                    d remove = this.f3618d.remove(intValue);
                    this.f.remove(remove.f3625b);
                    a(intValue, -1, -remove.f3624a.f3741a.b());
                    remove.f = true;
                    a(remove);
                } else {
                    a(eVar2.f3630c);
                    return true;
                }
            }
        } else if (i == 2) {
            e eVar3 = (e) ac.a(message.obj);
            an b2 = this.l.b(eVar3.f3628a, eVar3.f3628a + 1);
            this.l = b2;
            this.l = b2.a(((Integer) eVar3.f3629b).intValue(), 1);
            int i3 = eVar3.f3628a;
            int intValue2 = ((Integer) eVar3.f3629b).intValue();
            int min = Math.min(i3, intValue2);
            int max = Math.max(i3, intValue2);
            int i4 = this.f3618d.get(min).e;
            List<d> list = this.f3618d;
            list.add(intValue2, list.remove(i3));
            while (min <= max) {
                d dVar = this.f3618d.get(min);
                dVar.f3627d = min;
                dVar.e = i4;
                i4 += dVar.f3624a.f3741a.b();
                min++;
            }
            a(eVar3.f3630c);
            return true;
        } else if (i == 3) {
            e eVar4 = (e) ac.a(message.obj);
            this.l = (an) eVar4.f3629b;
            a(eVar4.f3630c);
            return true;
        } else if (i == 4) {
            j();
            return true;
        } else if (i == 5) {
            a((Set) ac.a(message.obj));
            return true;
        } else {
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media2.exoplayer.external.source.d, androidx.media2.exoplayer.external.source.b
    public final void b() {
        super.b();
        this.g.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media2.exoplayer.external.source.d, androidx.media2.exoplayer.external.source.b
    public final void c() {
        synchronized (this) {
            super.c();
            this.f3618d.clear();
            this.g.clear();
            this.f.clear();
            this.l = this.l.d();
            Handler handler = this.f3617c;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                this.f3617c = null;
            }
            this.j = false;
            this.k.clear();
            a(this.f3616b);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.b, androidx.media2.exoplayer.external.source.t
    public final Object e() {
        return null;
    }

    public final t g() {
        t a2;
        synchronized (this) {
            a2 = a(0);
            b(0, 1);
        }
        return a2;
    }

    public final void h() {
        synchronized (this) {
            a(0, i());
        }
    }

    public final int i() {
        int size;
        synchronized (this) {
            size = this.f3615a.size();
        }
        return size;
    }
}
