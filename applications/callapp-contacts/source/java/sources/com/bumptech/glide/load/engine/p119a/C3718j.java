package com.bumptech.glide.load.engine.p119a;

import android.util.Log;
import com.bumptech.glide.p116g.C3643j;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* renamed from: com.bumptech.glide.load.engine.a.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/j.class */
public final class C3718j implements AbstractC3707b {

    /* renamed from: a */
    private final C3715h<C3719a, Object> f13887a;

    /* renamed from: b */
    private final C3720b f13888b;

    /* renamed from: c */
    private final Map<Class<?>, NavigableMap<Integer, Integer>> f13889c;

    /* renamed from: d */
    private final Map<Class<?>, AbstractC3706a<?>> f13890d;

    /* renamed from: e */
    private final int f13891e;

    /* renamed from: f */
    private int f13892f;

    /* renamed from: com.bumptech.glide.load.engine.a.j$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/j$a.class */
    public static final class C3719a implements AbstractC3725m {

        /* renamed from: a */
        int f13893a;

        /* renamed from: b */
        private final C3720b f13894b;

        /* renamed from: c */
        private Class<?> f13895c;

        C3719a(C3720b c3720b) {
            this.f13894b = c3720b;
        }

        @Override // com.bumptech.glide.load.engine.p119a.AbstractC3725m
        /* renamed from: a */
        public final void mo37443a() {
            this.f13894b.m37492a(this);
        }

        /* renamed from: a */
        final void m37464a(int i, Class<?> cls) {
            this.f13893a = i;
            this.f13895c = cls;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof C3719a) {
                C3719a c3719a = (C3719a) obj;
                return this.f13893a == c3719a.f13893a && this.f13895c == c3719a.f13895c;
            }
            return false;
        }

        public final int hashCode() {
            int i = this.f13893a;
            Class<?> cls = this.f13895c;
            return (i * 31) + (cls != null ? cls.hashCode() : 0);
        }

        public final String toString() {
            return "Key{size=" + this.f13893a + "array=" + this.f13895c + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.a.j$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/j$b.class */
    public static final class C3720b extends AbstractC3711d<C3719a> {
        C3720b() {
        }

        /* renamed from: a */
        final C3719a m37463a(int i, Class<?> cls) {
            C3719a b = m37491b();
            b.m37464a(i, cls);
            return b;
        }

        @Override // com.bumptech.glide.load.engine.p119a.AbstractC3711d
        /* renamed from: a */
        protected final /* synthetic */ C3719a mo37441a() {
            return new C3719a(this);
        }
    }

    public C3718j() {
        this.f13887a = new C3715h<>();
        this.f13888b = new C3720b();
        this.f13889c = new HashMap();
        this.f13890d = new HashMap();
        this.f13891e = 4194304;
    }

    public C3718j(int i) {
        this.f13887a = new C3715h<>();
        this.f13888b = new C3720b();
        this.f13889c = new HashMap();
        this.f13890d = new HashMap();
        this.f13891e = i;
    }

    /* renamed from: a */
    private <T> T m37473a(C3719a c3719a) {
        return (T) this.f13887a.m37488a((C3715h<C3719a, Object>) c3719a);
    }

    /* renamed from: a */
    private <T> T m37472a(C3719a c3719a, Class<T> cls) {
        AbstractC3706a<T> m37465c = m37465c(cls);
        T t = (T) m37473a(c3719a);
        if (t != null) {
            this.f13892f -= m37465c.mo37478a((AbstractC3706a<T>) t) * m37465c.mo37477b();
            m37468b(m37465c.mo37478a((AbstractC3706a<T>) t), cls);
        }
        T t2 = t;
        if (t == null) {
            if (Log.isLoggable(m37465c.mo37480a(), 2)) {
                m37465c.mo37480a();
                StringBuilder sb = new StringBuilder("Allocated ");
                sb.append(c3719a.f13893a);
                sb.append(" bytes");
            }
            t2 = m37465c.mo37479a(c3719a.f13893a);
        }
        return t2;
    }

    /* renamed from: b */
    private <T> AbstractC3706a<T> m37466b(T t) {
        return m37465c(t.getClass());
    }

    /* renamed from: b */
    private NavigableMap<Integer, Integer> m37467b(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f13889c.get(cls);
        TreeMap treeMap = navigableMap;
        if (navigableMap == null) {
            treeMap = new TreeMap();
            this.f13889c.put(cls, treeMap);
        }
        return treeMap;
    }

    /* renamed from: b */
    private void m37469b(int i) {
        while (this.f13892f > i) {
            Object m37490a = this.f13887a.m37490a();
            C3643j.m37588a(m37490a, "Argument must not be null");
            AbstractC3706a m37466b = m37466b((C3718j) m37490a);
            this.f13892f -= m37466b.mo37478a((AbstractC3706a) m37490a) * m37466b.mo37477b();
            m37468b(m37466b.mo37478a((AbstractC3706a) m37490a), m37490a.getClass());
            if (Log.isLoggable(m37466b.mo37480a(), 2)) {
                m37466b.mo37480a();
                new StringBuilder("evicted: ").append(m37466b.mo37478a((AbstractC3706a) m37490a));
            }
        }
    }

    /* renamed from: b */
    private void m37468b(int i, Class<?> cls) {
        NavigableMap<Integer, Integer> m37467b = m37467b(cls);
        Integer num = (Integer) m37467b.get(Integer.valueOf(i));
        if (num != null) {
            if (num.intValue() == 1) {
                m37467b.remove(Integer.valueOf(i));
                return;
            } else {
                m37467b.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
    }

    /* renamed from: c */
    private <T> AbstractC3706a<T> m37465c(Class<T> cls) {
        AbstractC3706a<?> abstractC3706a = this.f13890d.get(cls);
        C3717i c3717i = abstractC3706a;
        if (abstractC3706a == null) {
            if (cls.equals(int[].class)) {
                c3717i = new C3717i();
            } else if (!cls.equals(byte[].class)) {
                throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
            } else {
                c3717i = new C3714g();
            }
            this.f13890d.put(cls, c3717i);
        }
        return (AbstractC3706a<T>) c3717i;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0046 A[Catch: all -> 0x0085, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x001b, B:9:0x0026, B:16:0x0046, B:23:0x0060, B:24:0x0070, B:26:0x007b), top: B:34:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0060 A[Catch: all -> 0x0085, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x001b, B:9:0x0026, B:16:0x0046, B:23:0x0060, B:24:0x0070, B:26:0x007b), top: B:34:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0070 A[Catch: all -> 0x0085, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x001b, B:9:0x0026, B:16:0x0046, B:23:0x0060, B:24:0x0070, B:26:0x007b), top: B:34:0x0002 }] */
    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3707b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> T mo37474a(int r5, java.lang.Class<T> r6) {
        /*
            r4 = this;
            r0 = r4
            monitor-enter(r0)
            r0 = r4
            r1 = r6
            java.util.NavigableMap r0 = r0.m37467b(r1)     // Catch: java.lang.Throwable -> L85
            r1 = r5
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L85
            java.lang.Object r0 = r0.ceilingKey(r1)     // Catch: java.lang.Throwable -> L85
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.Throwable -> L85
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L58
            r0 = r4
            int r0 = r0.f13892f     // Catch: java.lang.Throwable -> L85
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L3a
            r0 = r4
            int r0 = r0.f13891e     // Catch: java.lang.Throwable -> L85
            r1 = r9
            int r0 = r0 / r1
            r1 = 2
            if (r0 < r1) goto L34
            goto L3a
        L34:
            r0 = 0
            r9 = r0
            goto L3d
        L3a:
            r0 = 1
            r9 = r0
        L3d:
            r0 = r8
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L5b
            r0 = r7
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L85
            r1 = r5
            r2 = 8
            int r1 = r1 * r2
            if (r0 > r1) goto L58
            r0 = r8
            r10 = r0
            goto L5b
        L58:
            r0 = 0
            r10 = r0
        L5b:
            r0 = r10
            if (r0 == 0) goto L70
            r0 = r4
            com.bumptech.glide.load.engine.a.j$b r0 = r0.f13888b     // Catch: java.lang.Throwable -> L85
            r1 = r7
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L85
            r2 = r6
            com.bumptech.glide.load.engine.a.j$a r0 = r0.m37463a(r1, r2)     // Catch: java.lang.Throwable -> L85
            r7 = r0
            goto L7a
        L70:
            r0 = r4
            com.bumptech.glide.load.engine.a.j$b r0 = r0.f13888b     // Catch: java.lang.Throwable -> L85
            r1 = r5
            r2 = r6
            com.bumptech.glide.load.engine.a.j$a r0 = r0.m37463a(r1, r2)     // Catch: java.lang.Throwable -> L85
            r7 = r0
        L7a:
            r0 = r4
            r1 = r7
            r2 = r6
            java.lang.Object r0 = r0.m37472a(r1, r2)     // Catch: java.lang.Throwable -> L85
            r6 = r0
            r0 = r4
            monitor-exit(r0)
            r0 = r6
            return r0
        L85:
            r6 = move-exception
            r0 = r4
            monitor-exit(r0)
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.p119a.C3718j.mo37474a(int, java.lang.Class):java.lang.Object");
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3707b
    /* renamed from: a */
    public final <T> T mo37471a(Class<T> cls) {
        T t;
        synchronized (this) {
            t = (T) m37472a(this.f13888b.m37463a(8, cls), cls);
        }
        return t;
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3707b
    /* renamed from: a */
    public final void mo37476a() {
        synchronized (this) {
            m37469b(0);
        }
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3707b
    /* renamed from: a */
    public final void mo37475a(int i) {
        synchronized (this) {
            if (i >= 40) {
                mo37476a();
                return;
            }
            if (i >= 20 || i == 15) {
                m37469b(this.f13891e / 2);
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.p119a.AbstractC3707b
    /* renamed from: a */
    public final <T> void mo37470a(T t) {
        synchronized (this) {
            Class<?> cls = t.getClass();
            AbstractC3706a<T> m37465c = m37465c(cls);
            int mo37478a = m37465c.mo37478a((AbstractC3706a<T>) t);
            int mo37477b = m37465c.mo37477b() * mo37478a;
            if (!(mo37477b <= this.f13891e / 2)) {
                return;
            }
            C3719a m37463a = this.f13888b.m37463a(mo37478a, cls);
            this.f13887a.m37487a(m37463a, t);
            NavigableMap<Integer, Integer> m37467b = m37467b(cls);
            Integer num = (Integer) m37467b.get(Integer.valueOf(m37463a.f13893a));
            m37467b.put(Integer.valueOf(m37463a.f13893a), Integer.valueOf(num == null ? 1 : 1 + num.intValue()));
            this.f13892f += mo37477b;
            m37469b(this.f13891e);
        }
    }
}
