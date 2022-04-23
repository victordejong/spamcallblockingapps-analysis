package com.bumptech.glide.load.engine.a;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/j.class */
public final class j implements com.bumptech.glide.load.engine.a.b {

    /* renamed from: a  reason: collision with root package name */
    private final h<a, Object> f7455a;

    /* renamed from: b  reason: collision with root package name */
    private final b f7456b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<Class<?>, NavigableMap<Integer, Integer>> f7457c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<Class<?>, com.bumptech.glide.load.engine.a.a<?>> f7458d;
    private final int e;
    private int f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/j$a.class */
    public static final class a implements m {

        /* renamed from: a  reason: collision with root package name */
        int f7459a;

        /* renamed from: b  reason: collision with root package name */
        private final b f7460b;

        /* renamed from: c  reason: collision with root package name */
        private Class<?> f7461c;

        a(b bVar) {
            this.f7460b = bVar;
        }

        @Override // com.bumptech.glide.load.engine.a.m
        public final void a() {
            this.f7460b.a(this);
        }

        final void a(int i, Class<?> cls) {
            this.f7459a = i;
            this.f7461c = cls;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f7459a == aVar.f7459a && this.f7461c == aVar.f7461c;
        }

        public final int hashCode() {
            int i = this.f7459a;
            Class<?> cls = this.f7461c;
            return (i * 31) + (cls != null ? cls.hashCode() : 0);
        }

        public final String toString() {
            return "Key{size=" + this.f7459a + "array=" + this.f7461c + '}';
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/j$b.class */
    static final class b extends d<a> {
        b() {
        }

        final a a(int i, Class<?> cls) {
            a b2 = b();
            b2.a(i, cls);
            return b2;
        }

        @Override // com.bumptech.glide.load.engine.a.d
        protected final /* synthetic */ a a() {
            return new a(this);
        }
    }

    public j() {
        this.f7455a = new h<>();
        this.f7456b = new b();
        this.f7457c = new HashMap();
        this.f7458d = new HashMap();
        this.e = 4194304;
    }

    public j(int i) {
        this.f7455a = new h<>();
        this.f7456b = new b();
        this.f7457c = new HashMap();
        this.f7458d = new HashMap();
        this.e = i;
    }

    private <T> T a(a aVar) {
        return (T) this.f7455a.a((h<a, Object>) aVar);
    }

    private <T> T a(a aVar, Class<T> cls) {
        com.bumptech.glide.load.engine.a.a<T> c2 = c(cls);
        T t = (T) a(aVar);
        if (t != null) {
            this.f -= c2.a((com.bumptech.glide.load.engine.a.a<T>) t) * c2.b();
            b(c2.a((com.bumptech.glide.load.engine.a.a<T>) t), cls);
        }
        T t2 = t;
        if (t == null) {
            if (Log.isLoggable(c2.a(), 2)) {
                c2.a();
                StringBuilder sb = new StringBuilder("Allocated ");
                sb.append(aVar.f7459a);
                sb.append(" bytes");
            }
            t2 = c2.a(aVar.f7459a);
        }
        return t2;
    }

    private <T> com.bumptech.glide.load.engine.a.a<T> b(T t) {
        return c(t.getClass());
    }

    private NavigableMap<Integer, Integer> b(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f7457c.get(cls);
        NavigableMap<Integer, Integer> navigableMap2 = navigableMap;
        if (navigableMap == null) {
            navigableMap2 = new TreeMap<>();
            this.f7457c.put(cls, navigableMap2);
        }
        return navigableMap2;
    }

    private void b(int i) {
        while (this.f > i) {
            Object a2 = this.f7455a.a();
            com.bumptech.glide.g.j.a(a2, "Argument must not be null");
            com.bumptech.glide.load.engine.a.a b2 = b((j) a2);
            this.f -= b2.a((com.bumptech.glide.load.engine.a.a) a2) * b2.b();
            b(b2.a((com.bumptech.glide.load.engine.a.a) a2), a2.getClass());
            if (Log.isLoggable(b2.a(), 2)) {
                b2.a();
                new StringBuilder("evicted: ").append(b2.a((com.bumptech.glide.load.engine.a.a) a2));
            }
        }
    }

    private void b(int i, Class<?> cls) {
        NavigableMap<Integer, Integer> b2 = b(cls);
        Integer num = (Integer) b2.get(Integer.valueOf(i));
        if (num == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
        } else if (num.intValue() == 1) {
            b2.remove(Integer.valueOf(i));
        } else {
            b2.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
        }
    }

    private <T> com.bumptech.glide.load.engine.a.a<T> c(Class<T> cls) {
        com.bumptech.glide.load.engine.a.a<?> aVar = this.f7458d.get(cls);
        g gVar = (com.bumptech.glide.load.engine.a.a<T>) aVar;
        if (aVar == null) {
            if (cls.equals(int[].class)) {
                gVar = new i();
            } else if (cls.equals(byte[].class)) {
                gVar = new g();
            } else {
                throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
            }
            this.f7458d.put(cls, gVar);
        }
        return gVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0046 A[Catch: all -> 0x0085, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x001b, B:9:0x0026, B:16:0x0046, B:23:0x0060, B:24:0x0070, B:26:0x007b), top: B:34:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0060 A[Catch: all -> 0x0085, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x001b, B:9:0x0026, B:16:0x0046, B:23:0x0060, B:24:0x0070, B:26:0x007b), top: B:34:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0070 A[Catch: all -> 0x0085, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x001b, B:9:0x0026, B:16:0x0046, B:23:0x0060, B:24:0x0070, B:26:0x007b), top: B:34:0x0002 }] */
    @Override // com.bumptech.glide.load.engine.a.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> T a(int r5, java.lang.Class<T> r6) {
        /*
            r4 = this;
            r0 = r4
            monitor-enter(r0)
            r0 = r4
            r1 = r6
            java.util.NavigableMap r0 = r0.b(r1)     // Catch: all -> 0x0085
            r1 = r5
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: all -> 0x0085
            java.lang.Object r0 = r0.ceilingKey(r1)     // Catch: all -> 0x0085
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: all -> 0x0085
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0058
            r0 = r4
            int r0 = r0.f     // Catch: all -> 0x0085
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x003a
            r0 = r4
            int r0 = r0.e     // Catch: all -> 0x0085
            r1 = r9
            int r0 = r0 / r1
            r1 = 2
            if (r0 < r1) goto L_0x0034
            goto L_0x003a
        L_0x0034:
            r0 = 0
            r9 = r0
            goto L_0x003d
        L_0x003a:
            r0 = 1
            r9 = r0
        L_0x003d:
            r0 = r8
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L_0x005b
            r0 = r7
            int r0 = r0.intValue()     // Catch: all -> 0x0085
            r1 = r5
            r2 = 8
            int r1 = r1 * r2
            if (r0 > r1) goto L_0x0058
            r0 = r8
            r10 = r0
            goto L_0x005b
        L_0x0058:
            r0 = 0
            r10 = r0
        L_0x005b:
            r0 = r10
            if (r0 == 0) goto L_0x0070
            r0 = r4
            com.bumptech.glide.load.engine.a.j$b r0 = r0.f7456b     // Catch: all -> 0x0085
            r1 = r7
            int r1 = r1.intValue()     // Catch: all -> 0x0085
            r2 = r6
            com.bumptech.glide.load.engine.a.j$a r0 = r0.a(r1, r2)     // Catch: all -> 0x0085
            r7 = r0
            goto L_0x007a
        L_0x0070:
            r0 = r4
            com.bumptech.glide.load.engine.a.j$b r0 = r0.f7456b     // Catch: all -> 0x0085
            r1 = r5
            r2 = r6
            com.bumptech.glide.load.engine.a.j$a r0 = r0.a(r1, r2)     // Catch: all -> 0x0085
            r7 = r0
        L_0x007a:
            r0 = r4
            r1 = r7
            r2 = r6
            java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0085
            r6 = r0
            r0 = r4
            monitor-exit(r0)
            r0 = r6
            return r0
        L_0x0085:
            r6 = move-exception
            r0 = r4
            monitor-exit(r0)
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.a.j.a(int, java.lang.Class):java.lang.Object");
    }

    @Override // com.bumptech.glide.load.engine.a.b
    public final <T> T a(Class<T> cls) {
        T t;
        synchronized (this) {
            t = (T) a(this.f7456b.a(8, cls), cls);
        }
        return t;
    }

    @Override // com.bumptech.glide.load.engine.a.b
    public final void a() {
        synchronized (this) {
            b(0);
        }
    }

    @Override // com.bumptech.glide.load.engine.a.b
    public final void a(int i) {
        synchronized (this) {
            if (i >= 40) {
                a();
                return;
            }
            if (i >= 20 || i == 15) {
                b(this.e / 2);
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.a.b
    public final <T> void a(T t) {
        synchronized (this) {
            Class<?> cls = t.getClass();
            com.bumptech.glide.load.engine.a.a<T> c2 = c(cls);
            int a2 = c2.a((com.bumptech.glide.load.engine.a.a<T>) t);
            int b2 = c2.b() * a2;
            int i = 1;
            if (b2 <= this.e / 2) {
                a a3 = this.f7456b.a(a2, cls);
                this.f7455a.a(a3, t);
                NavigableMap<Integer, Integer> b3 = b(cls);
                Integer num = (Integer) b3.get(Integer.valueOf(a3.f7459a));
                int i2 = a3.f7459a;
                if (num != null) {
                    i = 1 + num.intValue();
                }
                b3.put(Integer.valueOf(i2), Integer.valueOf(i));
                this.f += b2;
                b(this.e);
            }
        }
    }
}
