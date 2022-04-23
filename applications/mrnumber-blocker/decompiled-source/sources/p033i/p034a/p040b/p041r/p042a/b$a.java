package p033i.p034a.p040b.p041r.p042a;

import p033i.p034a.p040b.p041r.p042a.AbstractRunnableC0347a;
/* renamed from: i.a.b.r.a.b$a */
/* loaded from: classes2-dex2jar.jar:i/a/b/r/a/b$a.class */
class b$a extends ThreadLocal<b$b<?>> {
    b$a() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v0, types: [i.a.b.r.a.b$b<?>, i.a.b.r.a.b$b] */
    /* renamed from: a */
    public b$b<?> initialValue() {
        return new Object() { // from class: i.a.b.r.a.b$b

            /* renamed from: a */
            private K f877a;

            /* renamed from: b */
            private int f878b;

            /* renamed from: a */
            void m347a() {
                this.f877a = null;
                this.f878b = 0;
            }

            /* renamed from: b */
            b$b<K> m346b(K k) {
                this.f877a = k;
                this.f878b = System.identityHashCode(k);
                return this;
            }

            public boolean equals(Object obj) {
                boolean z = true;
                boolean z2 = true;
                if (obj instanceof b$b) {
                    if (((b$b) obj).f877a != this.f877a) {
                        z2 = false;
                    }
                    return z2;
                }
                if (((AbstractRunnableC0347a.C0351d) obj).get() != this.f877a) {
                    z = false;
                }
                return z;
            }

            public int hashCode() {
                return this.f878b;
            }
        };
    }
}
