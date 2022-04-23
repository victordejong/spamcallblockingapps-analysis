package p530d.p531a;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Map;
import p131c.p161d.p266c.p267a.C4928k;
/* renamed from: d.a.a */
/* loaded from: classes2-dex2jar.jar:d/a/a.class */
public final class C9210a {

    /* renamed from: b */
    public static final C9210a f35760b = new C9210a(Collections.emptyMap());

    /* renamed from: a */
    public final Map<C9213c<?>, Object> f35761a;

    /* renamed from: d.a.a$b */
    /* loaded from: classes2-dex2jar.jar:d/a/a$b.class */
    public static final class C9212b {

        /* renamed from: a */
        public C9210a f35762a;

        /* renamed from: b */
        public Map<C9213c<?>, Object> f35763b;

        public C9212b(C9210a aVar) {
            this.f35762a = aVar;
        }

        /* renamed from: a */
        public <T> C9212b m3150a(C9213c<T> cVar) {
            if (this.f35762a.f35761a.containsKey(cVar)) {
                IdentityHashMap identityHashMap = new IdentityHashMap(this.f35762a.f35761a);
                identityHashMap.remove(cVar);
                this.f35762a = new C9210a(identityHashMap);
            }
            Map<C9213c<?>, Object> map = this.f35763b;
            if (map != null) {
                map.remove(cVar);
            }
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public <T> C9212b m3149a(C9213c<T> cVar, T t) {
            m3151a(1).put(cVar, t);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public C9210a m3152a() {
            if (this.f35763b != null) {
                for (Map.Entry entry : this.f35762a.f35761a.entrySet()) {
                    if (!this.f35763b.containsKey(entry.getKey())) {
                        this.f35763b.put(entry.getKey(), entry.getValue());
                    }
                }
                this.f35762a = new C9210a(this.f35763b);
                this.f35763b = null;
            }
            return this.f35762a;
        }

        /* renamed from: a */
        public final Map<C9213c<?>, Object> m3151a(int i) {
            if (this.f35763b == null) {
                this.f35763b = new IdentityHashMap(i);
            }
            return this.f35763b;
        }
    }

    /* renamed from: d.a.a$c */
    /* loaded from: classes2-dex2jar.jar:d/a/a$c.class */
    public static final class C9213c<T> {

        /* renamed from: a */
        public final String f35764a;

        public C9213c(String str) {
            this.f35764a = str;
        }

        /* renamed from: a */
        public static <T> C9213c<T> m3148a(String str) {
            return new C9213c<>(str);
        }

        public String toString() {
            return this.f35764a;
        }
    }

    public C9210a(Map<C9213c<?>, Object> map) {
        this.f35761a = map;
    }

    /* renamed from: b */
    public static C9212b m3153b() {
        return new C9212b();
    }

    /* renamed from: a */
    public C9212b m3156a() {
        return new C9212b();
    }

    /* renamed from: a */
    public <T> T m3155a(C9213c<T> cVar) {
        return (T) this.f35761a.get(cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            if (r0 != r1) goto L_0x0007
            r0 = 1
            return r0
        L_0x0007:
            r0 = r5
            if (r0 == 0) goto L_0x0088
            java.lang.Class<d.a.a> r0 = p530d.p531a.C9210a.class
            r1 = r5
            java.lang.Class r1 = r1.getClass()
            if (r0 == r1) goto L_0x0017
            goto L_0x0088
        L_0x0017:
            r0 = r5
            d.a.a r0 = (p530d.p531a.C9210a) r0
            r6 = r0
            r0 = r4
            java.util.Map<d.a.a$c<?>, java.lang.Object> r0 = r0.f35761a
            int r0 = r0.size()
            r1 = r6
            java.util.Map<d.a.a$c<?>, java.lang.Object> r1 = r1.f35761a
            int r1 = r1.size()
            if (r0 == r1) goto L_0x0033
            r0 = 0
            return r0
        L_0x0033:
            r0 = r4
            java.util.Map<d.a.a$c<?>, java.lang.Object> r0 = r0.f35761a
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        L_0x0042:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0086
            r0 = r5
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r7 = r0
            r0 = r6
            java.util.Map<d.a.a$c<?>, java.lang.Object> r0 = r0.f35761a
            r1 = r7
            java.lang.Object r1 = r1.getKey()
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x0069
            r0 = 0
            return r0
        L_0x0069:
            r0 = r7
            java.lang.Object r0 = r0.getValue()
            r1 = r6
            java.util.Map<d.a.a$c<?>, java.lang.Object> r1 = r1.f35761a
            r2 = r7
            java.lang.Object r2 = r2.getKey()
            java.lang.Object r1 = r1.get(r2)
            boolean r0 = p131c.p161d.p266c.p267a.C4928k.m24808a(r0, r1)
            if (r0 != 0) goto L_0x0042
            r0 = 0
            return r0
        L_0x0086:
            r0 = 1
            return r0
        L_0x0088:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p530d.p531a.C9210a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i = 0;
        for (Map.Entry<C9213c<?>, Object> entry : this.f35761a.entrySet()) {
            i += C4928k.m24807a(entry.getKey(), entry.getValue());
        }
        return i;
    }

    public String toString() {
        return this.f35761a.toString();
    }
}
