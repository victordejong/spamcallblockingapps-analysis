package com.bumptech.glide.load.engine.p090a;

import android.util.Log;
import com.bumptech.glide.p077h.C1456i;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* renamed from: com.bumptech.glide.load.engine.a.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/j.class */
public final class C1684j implements AbstractC1673b {

    /* renamed from: a */
    private final C1681h<C1685a, Object> f5128a;

    /* renamed from: b */
    private final C1686b f5129b;

    /* renamed from: c */
    private final Map<Class<?>, NavigableMap<Integer, Integer>> f5130c;

    /* renamed from: d */
    private final Map<Class<?>, AbstractC1672a<?>> f5131d;

    /* renamed from: e */
    private final int f5132e;

    /* renamed from: f */
    private int f5133f;

    /* renamed from: com.bumptech.glide.load.engine.a.j$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/j$a.class */
    public static final class C1685a implements AbstractC1691m {

        /* renamed from: a */
        int f5134a;

        /* renamed from: b */
        private final C1686b f5135b;

        /* renamed from: c */
        private Class<?> f5136c;

        C1685a(C1686b c1686b) {
            this.f5135b = c1686b;
        }

        @Override // com.bumptech.glide.load.engine.p090a.AbstractC1691m
        /* renamed from: a */
        public void mo16515a() {
            this.f5135b.m16584a(this);
        }

        /* renamed from: a */
        void m16548a(int i, Class<?> cls) {
            this.f5134a = i;
            this.f5136c = cls;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C1685a) {
                C1685a c1685a = (C1685a) obj;
                z = false;
                if (this.f5134a == c1685a.f5134a) {
                    z = false;
                    if (this.f5136c == c1685a.f5136c) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return (this.f5136c != null ? this.f5136c.hashCode() : 0) + (this.f5134a * 31);
        }

        public String toString() {
            return "Key{size=" + this.f5134a + "array=" + this.f5136c + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.engine.a.j$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/j$b.class */
    public static final class C1686b extends AbstractC1677d<C1685a> {
        C1686b() {
        }

        /* renamed from: a */
        public C1685a mo16511b() {
            return new C1685a(this);
        }

        /* renamed from: a */
        C1685a m16546a(int i, Class<?> cls) {
            C1685a c = m16583c();
            c.m16548a(i, cls);
            return c;
        }
    }

    public C1684j() {
        this.f5128a = new C1681h<>();
        this.f5129b = new C1686b();
        this.f5130c = new HashMap();
        this.f5131d = new HashMap();
        this.f5132e = 4194304;
    }

    public C1684j(int i) {
        this.f5128a = new C1681h<>();
        this.f5129b = new C1686b();
        this.f5130c = new HashMap();
        this.f5131d = new HashMap();
        this.f5132e = i;
    }

    /* renamed from: a */
    private <T> T m16560a(C1685a c1685a) {
        return (T) this.f5128a.m16578a((C1681h<C1685a, Object>) c1685a);
    }

    /* renamed from: a */
    private <T> T m16559a(C1685a c1685a, Class<T> cls) {
        AbstractC1672a<T> m16553b = m16553b((Class) cls);
        T t = (T) m16560a(c1685a);
        if (t != null) {
            this.f5133f -= m16553b.mo16568a((AbstractC1672a<T>) t) * m16553b.mo16566b();
            m16549c(m16553b.mo16568a((AbstractC1672a<T>) t), cls);
        }
        T t2 = t;
        if (t == null) {
            if (Log.isLoggable(m16553b.mo16570a(), 2)) {
                Log.v(m16553b.mo16570a(), "Allocated " + c1685a.f5134a + " bytes");
            }
            t2 = m16553b.mo16569a(c1685a.f5134a);
        }
        return t2;
    }

    /* renamed from: a */
    private NavigableMap<Integer, Integer> m16558a(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f5130c.get(cls);
        TreeMap treeMap = navigableMap;
        if (navigableMap == null) {
            treeMap = new TreeMap();
            this.f5130c.put(cls, treeMap);
        }
        return treeMap;
    }

    /* renamed from: a */
    private boolean m16561a(int i, Integer num) {
        return num != null && (m16556b() || num.intValue() <= i * 8);
    }

    /* renamed from: b */
    private <T> AbstractC1672a<T> m16553b(Class<T> cls) {
        AbstractC1672a<?> abstractC1672a = this.f5131d.get(cls);
        C1683i c1683i = abstractC1672a;
        if (abstractC1672a == null) {
            if (cls.equals(int[].class)) {
                c1683i = new C1683i();
            } else if (!cls.equals(byte[].class)) {
                throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
            } else {
                c1683i = new C1680g();
            }
            this.f5131d.put(cls, c1683i);
        }
        return (AbstractC1672a<T>) c1683i;
    }

    /* renamed from: b */
    private <T> AbstractC1672a<T> m16552b(T t) {
        return m16553b((Class) t.getClass());
    }

    /* renamed from: b */
    private boolean m16556b() {
        return this.f5133f == 0 || this.f5132e / this.f5133f >= 2;
    }

    /* renamed from: b */
    private boolean m16555b(int i) {
        return i <= this.f5132e / 2;
    }

    /* renamed from: c */
    private void m16551c() {
        m16550c(this.f5132e);
    }

    /* renamed from: c */
    private void m16550c(int i) {
        while (this.f5133f > i) {
            Object m16580a = this.f5128a.m16580a();
            C1456i.m16989a(m16580a);
            AbstractC1672a m16552b = m16552b((C1684j) m16580a);
            this.f5133f -= m16552b.mo16568a((AbstractC1672a) m16580a) * m16552b.mo16566b();
            m16549c(m16552b.mo16568a((AbstractC1672a) m16580a), m16580a.getClass());
            if (Log.isLoggable(m16552b.mo16570a(), 2)) {
                Log.v(m16552b.mo16570a(), "evicted: " + m16552b.mo16568a((AbstractC1672a) m16580a));
            }
        }
    }

    /* renamed from: c */
    private void m16549c(int i, Class<?> cls) {
        NavigableMap<Integer, Integer> m16558a = m16558a(cls);
        Integer num = (Integer) m16558a.get(Integer.valueOf(i));
        if (num == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
        }
        if (num.intValue() == 1) {
            m16558a.remove(Integer.valueOf(i));
        } else {
            m16558a.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
        }
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1673b
    /* renamed from: a */
    public <T> T mo16562a(int i, Class<T> cls) {
        T t;
        synchronized (this) {
            Integer ceilingKey = m16558a((Class<?>) cls).ceilingKey(Integer.valueOf(i));
            t = (T) m16559a(m16561a(i, ceilingKey) ? this.f5129b.m16546a(ceilingKey.intValue(), cls) : this.f5129b.m16546a(i, cls), cls);
        }
        return t;
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1673b
    /* renamed from: a */
    public void mo16564a() {
        synchronized (this) {
            m16550c(0);
        }
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1673b
    /* renamed from: a */
    public void mo16563a(int i) {
        synchronized (this) {
            if (i >= 40) {
                mo16564a();
            } else if (i >= 20 || i == 15) {
                m16550c(this.f5132e / 2);
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1673b
    /* renamed from: a */
    public <T> void mo16557a(T t) {
        synchronized (this) {
            Class<?> cls = t.getClass();
            AbstractC1672a<T> m16553b = m16553b((Class) cls);
            int mo16568a = m16553b.mo16568a((AbstractC1672a<T>) t);
            int mo16566b = m16553b.mo16566b() * mo16568a;
            if (m16555b(mo16566b)) {
                C1685a m16546a = this.f5129b.m16546a(mo16568a, cls);
                this.f5128a.m16577a(m16546a, t);
                NavigableMap<Integer, Integer> m16558a = m16558a(cls);
                Integer num = (Integer) m16558a.get(Integer.valueOf(m16546a.f5134a));
                m16558a.put(Integer.valueOf(m16546a.f5134a), Integer.valueOf(num == null ? 1 : num.intValue() + 1));
                this.f5133f += mo16566b;
                m16551c();
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1673b
    /* renamed from: b */
    public <T> T mo16554b(int i, Class<T> cls) {
        T t;
        synchronized (this) {
            t = (T) m16559a(this.f5129b.m16546a(i, cls), cls);
        }
        return t;
    }
}
