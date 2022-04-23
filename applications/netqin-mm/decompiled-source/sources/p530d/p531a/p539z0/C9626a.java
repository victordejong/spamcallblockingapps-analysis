package p530d.p531a.p539z0;

import io.grpc.ConnectivityState;
import io.grpc.Status;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9229f0;
import p530d.p531a.C9210a;
import p530d.p531a.C9287n;
import p530d.p531a.C9314u;
/* renamed from: d.a.z0.a */
/* loaded from: classes2-dex2jar.jar:d/a/z0/a.class */
public final class C9626a extends AbstractC9229f0 {

    /* renamed from: g */
    public static final C9210a.C9213c<C9630d<C9287n>> f36704g = C9210a.C9213c.m3148a("state-info");

    /* renamed from: h */
    public static final Status f36705h = Status.f37988f.m609b("no subchannels ready");

    /* renamed from: b */
    public final AbstractC9229f0.AbstractC9234d f36706b;

    /* renamed from: e */
    public ConnectivityState f36709e;

    /* renamed from: c */
    public final Map<C9314u, AbstractC9229f0.AbstractC9239h> f36707c = new HashMap();

    /* renamed from: f */
    public AbstractC9631e f36710f = new C9628b(f36705h);

    /* renamed from: d */
    public final Random f36708d = new Random();

    /* renamed from: d.a.z0.a$a */
    /* loaded from: classes2-dex2jar.jar:d/a/z0/a$a.class */
    public class C9627a implements AbstractC9229f0.AbstractC9241j {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9229f0.AbstractC9239h f36711a;

        public C9627a(AbstractC9229f0.AbstractC9239h hVar) {
            this.f36711a = hVar;
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9241j
        /* renamed from: a */
        public void mo2143a(C9287n nVar) {
            C9626a.this.m2154a(this.f36711a, nVar);
        }
    }

    /* renamed from: d.a.z0.a$b */
    /* loaded from: classes2-dex2jar.jar:d/a/z0/a$b.class */
    public static final class C9628b extends AbstractC9631e {

        /* renamed from: a */
        public final Status f36713a;

        public C9628b(Status status) {
            super(null);
            C4933n.m24794a(status, "status");
            this.f36713a = status;
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9240i
        /* renamed from: a */
        public AbstractC9229f0.C9235e mo385a(AbstractC9229f0.AbstractC9236f fVar) {
            return this.f36713a.m602f() ? AbstractC9229f0.C9235e.m3102e() : AbstractC9229f0.C9235e.m3105b(this.f36713a);
        }

        @Override // p530d.p531a.p539z0.C9626a.AbstractC9631e
        /* renamed from: a */
        public boolean mo2141a(AbstractC9631e eVar) {
            boolean z;
            if (eVar instanceof C9628b) {
                C9628b bVar = (C9628b) eVar;
                if (C4928k.m24808a(this.f36713a, bVar.f36713a) || (this.f36713a.m602f() && bVar.f36713a.m602f())) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        public String toString() {
            C4924j.C4926b a = C4924j.m24821a((Class<?>) C9628b.class);
            a.m24813a("status", this.f36713a);
            return a.toString();
        }
    }

    /* renamed from: d.a.z0.a$c */
    /* loaded from: classes2-dex2jar.jar:d/a/z0/a$c.class */
    public static final class C9629c extends AbstractC9631e {

        /* renamed from: c */
        public static final AtomicIntegerFieldUpdater<C9629c> f36714c = AtomicIntegerFieldUpdater.newUpdater(C9629c.class, "b");

        /* renamed from: a */
        public final List<AbstractC9229f0.AbstractC9239h> f36715a;

        /* renamed from: b */
        public volatile int f36716b;

        public C9629c(List<AbstractC9229f0.AbstractC9239h> list, int i) {
            super(null);
            C4933n.m24790a(!list.isEmpty(), "empty list");
            this.f36715a = list;
            this.f36716b = i - 1;
        }

        @Override // p530d.p531a.AbstractC9229f0.AbstractC9240i
        /* renamed from: a */
        public AbstractC9229f0.C9235e mo385a(AbstractC9229f0.AbstractC9236f fVar) {
            return AbstractC9229f0.C9235e.m3109a(m2142a());
        }

        /* renamed from: a */
        public final AbstractC9229f0.AbstractC9239h m2142a() {
            int size = this.f36715a.size();
            int incrementAndGet = f36714c.incrementAndGet(this);
            int i = incrementAndGet;
            if (incrementAndGet >= size) {
                i = incrementAndGet % size;
                f36714c.compareAndSet(this, incrementAndGet, i);
            }
            return this.f36715a.get(i);
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0042, code lost:
            if (new java.util.HashSet(r4.f36715a).containsAll(r0.f36715a) != false) goto L_0x0045;
         */
        @Override // p530d.p531a.p539z0.C9626a.AbstractC9631e
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo2141a(p530d.p531a.p539z0.C9626a.AbstractC9631e r5) {
            /*
                r4 = this;
                r0 = r5
                boolean r0 = r0 instanceof p530d.p531a.p539z0.C9626a.C9629c
                r6 = r0
                r0 = 0
                r7 = r0
                r0 = r6
                if (r0 != 0) goto L_0x000d
                r0 = 0
                return r0
            L_0x000d:
                r0 = r5
                d.a.z0.a$c r0 = (p530d.p531a.p539z0.C9626a.C9629c) r0
                r5 = r0
                r0 = r5
                r1 = r4
                if (r0 == r1) goto L_0x0045
                r0 = r7
                r6 = r0
                r0 = r4
                java.util.List<d.a.f0$h> r0 = r0.f36715a
                int r0 = r0.size()
                r1 = r5
                java.util.List<d.a.f0$h> r1 = r1.f36715a
                int r1 = r1.size()
                if (r0 != r1) goto L_0x0047
                r0 = r7
                r6 = r0
                java.util.HashSet r0 = new java.util.HashSet
                r1 = r0
                r2 = r4
                java.util.List<d.a.f0$h> r2 = r2.f36715a
                r1.<init>(r2)
                r1 = r5
                java.util.List<d.a.f0$h> r1 = r1.f36715a
                boolean r0 = r0.containsAll(r1)
                if (r0 == 0) goto L_0x0047
            L_0x0045:
                r0 = 1
                r6 = r0
            L_0x0047:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p530d.p531a.p539z0.C9626a.C9629c.mo2141a(d.a.z0.a$e):boolean");
        }

        public String toString() {
            C4924j.C4926b a = C4924j.m24821a((Class<?>) C9629c.class);
            a.m24813a("list", this.f36715a);
            return a.toString();
        }
    }

    /* renamed from: d.a.z0.a$d */
    /* loaded from: classes2-dex2jar.jar:d/a/z0/a$d.class */
    public static final class C9630d<T> {

        /* renamed from: a */
        public T f36717a;

        public C9630d(T t) {
            this.f36717a = t;
        }
    }

    /* renamed from: d.a.z0.a$e */
    /* loaded from: classes2-dex2jar.jar:d/a/z0/a$e.class */
    public static abstract class AbstractC9631e extends AbstractC9229f0.AbstractC9240i {
        public AbstractC9631e() {
        }

        public /* synthetic */ AbstractC9631e(C9627a aVar) {
            this();
        }

        /* renamed from: a */
        public abstract boolean mo2141a(AbstractC9631e eVar);
    }

    public C9626a(AbstractC9229f0.AbstractC9234d dVar) {
        C4933n.m24794a(dVar, "helper");
        this.f36706b = dVar;
    }

    /* renamed from: a */
    public static C9314u m2153a(C9314u uVar) {
        return new C9314u(uVar.m2945a());
    }

    /* renamed from: a */
    public static List<AbstractC9229f0.AbstractC9239h> m2150a(Collection<AbstractC9229f0.AbstractC9239h> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (AbstractC9229f0.AbstractC9239h hVar : collection) {
            if (m2145c(hVar)) {
                arrayList.add(hVar);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static Map<C9314u, C9314u> m2149a(List<C9314u> list) {
        HashMap hashMap = new HashMap(list.size() * 2);
        for (C9314u uVar : list) {
            hashMap.put(m2153a(uVar), uVar);
        }
        return hashMap;
    }

    /* renamed from: a */
    public static <T> Set<T> m2148a(Set<T> set, Set<T> set2) {
        HashSet hashSet = new HashSet(set);
        hashSet.removeAll(set2);
        return hashSet;
    }

    /* renamed from: b */
    public static C9630d<C9287n> m2147b(AbstractC9229f0.AbstractC9239h hVar) {
        Object a = hVar.mo352c().m3155a(f36704g);
        C4933n.m24794a(a, "STATE_INFO");
        return (C9630d) a;
    }

    /* renamed from: c */
    public static boolean m2145c(AbstractC9229f0.AbstractC9239h hVar) {
        return m2147b(hVar).f36717a.m2997a() == ConnectivityState.READY;
    }

    @Override // p530d.p531a.AbstractC9229f0
    /* renamed from: a */
    public void mo584a(AbstractC9229f0.C9237g gVar) {
        List<C9314u> a = gVar.m3101a();
        Set<C9314u> keySet = this.f36707c.keySet();
        Map<C9314u, C9314u> a2 = m2149a(a);
        Set<C9314u> a3 = m2148a(keySet, a2.keySet());
        for (Map.Entry<C9314u, C9314u> entry : a2.entrySet()) {
            C9314u key = entry.getKey();
            C9314u value = entry.getValue();
            AbstractC9229f0.AbstractC9239h hVar = this.f36707c.get(key);
            if (hVar != null) {
                hVar.mo355a(Collections.singletonList(value));
            } else {
                C9210a.C9212b b = C9210a.m3153b();
                b.m3149a(f36704g, new C9630d(C9287n.m2996a(ConnectivityState.IDLE)));
                AbstractC9229f0.AbstractC9234d dVar = this.f36706b;
                AbstractC9229f0.C9231b.C9232a c = AbstractC9229f0.C9231b.m3115c();
                c.m3112a(value);
                c.m3113a(b.m3152a());
                AbstractC9229f0.AbstractC9239h a4 = dVar.mo370a(c.m3114a());
                C4933n.m24794a(a4, "subchannel");
                AbstractC9229f0.AbstractC9239h hVar2 = a4;
                hVar2.mo357a(new C9627a(hVar2));
                this.f36707c.put(key, hVar2);
                hVar2.mo350e();
            }
        }
        ArrayList arrayList = new ArrayList();
        for (C9314u uVar : a3) {
            arrayList.add(this.f36707c.remove(uVar));
        }
        m2144d();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            m2155a((AbstractC9229f0.AbstractC9239h) it.next());
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [d.a.n, T] */
    /* renamed from: a */
    public final void m2155a(AbstractC9229f0.AbstractC9239h hVar) {
        hVar.mo349f();
        m2147b(hVar).f36717a = C9287n.m2996a(ConnectivityState.SHUTDOWN);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final void m2154a(AbstractC9229f0.AbstractC9239h hVar, C9287n nVar) {
        if (this.f36707c.get(m2153a(hVar.m3093a())) == hVar) {
            if (nVar.m2997a() == ConnectivityState.IDLE) {
                hVar.mo350e();
            }
            m2147b(hVar).f36717a = nVar;
            m2144d();
        }
    }

    /* renamed from: a */
    public final void m2151a(ConnectivityState connectivityState, AbstractC9631e eVar) {
        if (connectivityState != this.f36709e || !eVar.mo2141a(this.f36710f)) {
            this.f36706b.mo369a(connectivityState, eVar);
            this.f36709e = connectivityState;
            this.f36710f = eVar;
        }
    }

    @Override // p530d.p531a.AbstractC9229f0
    /* renamed from: a */
    public void mo583a(Status status) {
        ConnectivityState connectivityState = ConnectivityState.TRANSIENT_FAILURE;
        AbstractC9631e eVar = this.f36710f;
        m2151a(connectivityState, eVar instanceof C9629c ? eVar : new C9628b(status));
    }

    @Override // p530d.p531a.AbstractC9229f0
    /* renamed from: b */
    public void mo582b() {
        for (AbstractC9229f0.AbstractC9239h hVar : m2146c()) {
            m2155a(hVar);
        }
    }

    /* renamed from: c */
    public Collection<AbstractC9229f0.AbstractC9239h> m2146c() {
        return this.f36707c.values();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0054, code lost:
        if (r0.m2997a() == io.grpc.ConnectivityState.IDLE) goto L_0x0057;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2144d() {
        /*
            r7 = this;
            r0 = r7
            java.util.Collection r0 = r0.m2146c()
            java.util.List r0 = m2150a(r0)
            r8 = r0
            r0 = r8
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0096
            r0 = 0
            r9 = r0
            io.grpc.Status r0 = p530d.p531a.p539z0.C9626a.f36705h
            r8 = r0
            r0 = r7
            java.util.Collection r0 = r0.m2146c()
            java.util.Iterator r0 = r0.iterator()
            r10 = r0
        L_0x0021:
            r0 = r10
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0077
            r0 = r10
            java.lang.Object r0 = r0.next()
            d.a.f0$h r0 = (p530d.p531a.AbstractC9229f0.AbstractC9239h) r0
            d.a.z0.a$d r0 = m2147b(r0)
            T r0 = r0.f36717a
            d.a.n r0 = (p530d.p531a.C9287n) r0
            r11 = r0
            r0 = r11
            io.grpc.ConnectivityState r0 = r0.m2997a()
            io.grpc.ConnectivityState r1 = io.grpc.ConnectivityState.CONNECTING
            if (r0 == r1) goto L_0x0057
            r0 = r9
            r12 = r0
            r0 = r11
            io.grpc.ConnectivityState r0 = r0.m2997a()
            io.grpc.ConnectivityState r1 = io.grpc.ConnectivityState.IDLE
            if (r0 != r1) goto L_0x005a
        L_0x0057:
            r0 = 1
            r12 = r0
        L_0x005a:
            r0 = r8
            io.grpc.Status r1 = p530d.p531a.p539z0.C9626a.f36705h
            if (r0 == r1) goto L_0x006b
            r0 = r12
            r9 = r0
            r0 = r8
            boolean r0 = r0.m602f()
            if (r0 != 0) goto L_0x0021
        L_0x006b:
            r0 = r11
            io.grpc.Status r0 = r0.m2994b()
            r8 = r0
            r0 = r12
            r9 = r0
            goto L_0x0021
        L_0x0077:
            r0 = r9
            if (r0 == 0) goto L_0x0082
            io.grpc.ConnectivityState r0 = io.grpc.ConnectivityState.CONNECTING
            r10 = r0
            goto L_0x0086
        L_0x0082:
            io.grpc.ConnectivityState r0 = io.grpc.ConnectivityState.TRANSIENT_FAILURE
            r10 = r0
        L_0x0086:
            r0 = r7
            r1 = r10
            d.a.z0.a$b r2 = new d.a.z0.a$b
            r3 = r2
            r4 = r8
            r3.<init>(r4)
            r0.m2151a(r1, r2)
            goto L_0x00b4
        L_0x0096:
            r0 = r7
            java.util.Random r0 = r0.f36708d
            r1 = r8
            int r1 = r1.size()
            int r0 = r0.nextInt(r1)
            r9 = r0
            r0 = r7
            io.grpc.ConnectivityState r1 = io.grpc.ConnectivityState.READY
            d.a.z0.a$c r2 = new d.a.z0.a$c
            r3 = r2
            r4 = r8
            r5 = r9
            r3.<init>(r4, r5)
            r0.m2151a(r1, r2)
        L_0x00b4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p530d.p531a.p539z0.C9626a.m2144d():void");
    }
}
