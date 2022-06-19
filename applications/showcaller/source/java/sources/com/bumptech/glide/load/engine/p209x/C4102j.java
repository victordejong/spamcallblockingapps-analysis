package com.bumptech.glide.load.engine.p209x;

import android.util.Log;
import com.bumptech.glide.p223p.C4382j;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* renamed from: com.bumptech.glide.load.engine.x.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/j.class */
public final class C4102j implements AbstractC4091b {

    /* renamed from: a */
    private final C4099h<C4103a, Object> f12924a = new C4099h<>();

    /* renamed from: b */
    private final C4104b f12925b = new C4104b();

    /* renamed from: c */
    private final Map<Class<?>, NavigableMap<Integer, Integer>> f12926c = new HashMap();

    /* renamed from: d */
    private final Map<Class<?>, AbstractC4090a<?>> f12927d = new HashMap();

    /* renamed from: e */
    private final int f12928e;

    /* renamed from: f */
    private int f12929f;

    /* renamed from: com.bumptech.glide.load.engine.x.j$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/j$a.class */
    public static final class C4103a implements AbstractC4109m {

        /* renamed from: a */
        private final C4104b f12930a;

        /* renamed from: b */
        int f12931b;

        /* renamed from: c */
        private Class<?> f12932c;

        C4103a(C4104b c4104b) {
            this.f12930a = c4104b;
        }

        @Override // com.bumptech.glide.load.engine.p209x.AbstractC4109m
        /* renamed from: a */
        public void mo23231a() {
            this.f12930a.m23296c(this);
        }

        /* renamed from: b */
        void m23263b(int i, Class<?> cls) {
            this.f12931b = i;
            this.f12932c = cls;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C4103a) {
                C4103a c4103a = (C4103a) obj;
                z = false;
                if (this.f12931b == c4103a.f12931b) {
                    z = false;
                    if (this.f12932c == c4103a.f12932c) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            int i = this.f12931b;
            Class<?> cls = this.f12932c;
            return (i * 31) + (cls != null ? cls.hashCode() : 0);
        }

        public String toString() {
            return "Key{size=" + this.f12931b + "array=" + this.f12932c + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.engine.x.j$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/j$b.class */
    public static final class C4104b extends AbstractC4095d<C4103a> {
        C4104b() {
        }

        /* renamed from: d */
        public C4103a mo23229a() {
            return new C4103a(this);
        }

        /* renamed from: e */
        C4103a m23261e(int i, Class<?> cls) {
            C4103a m23297b = m23297b();
            m23297b.m23263b(i, cls);
            return m23297b;
        }
    }

    public C4102j(int i) {
        this.f12928e = i;
    }

    /* renamed from: f */
    private void m23274f(int i, Class<?> cls) {
        NavigableMap<Integer, Integer> m23267m = m23267m(cls);
        Integer num = (Integer) m23267m.get(Integer.valueOf(i));
        if (num != null) {
            if (num.intValue() == 1) {
                m23267m.remove(Integer.valueOf(i));
                return;
            } else {
                m23267m.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
    }

    /* renamed from: g */
    private void m23273g() {
        m23272h(this.f12928e);
    }

    /* renamed from: h */
    private void m23272h(int i) {
        while (this.f12929f > i) {
            Object m23288f = this.f12924a.m23288f();
            C4382j.m22719d(m23288f);
            AbstractC4090a m23271i = m23271i(m23288f);
            this.f12929f -= m23271i.mo23282b(m23288f) * m23271i.mo23283a();
            m23274f(m23271i.mo23282b(m23288f), m23288f.getClass());
            if (Log.isLoggable(m23271i.getTag(), 2)) {
                Log.v(m23271i.getTag(), "evicted: " + m23271i.mo23282b(m23288f));
            }
        }
    }

    /* renamed from: i */
    private <T> AbstractC4090a<T> m23271i(T t) {
        return m23270j(t.getClass());
    }

    /* renamed from: j */
    private <T> AbstractC4090a<T> m23270j(Class<T> cls) {
        AbstractC4090a<?> abstractC4090a = this.f12927d.get(cls);
        C4101i c4101i = abstractC4090a;
        if (abstractC4090a == null) {
            if (cls.equals(int[].class)) {
                c4101i = new C4101i();
            } else if (!cls.equals(byte[].class)) {
                throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
            } else {
                c4101i = new C4098g();
            }
            this.f12927d.put(cls, c4101i);
        }
        return (AbstractC4090a<T>) c4101i;
    }

    /* renamed from: k */
    private <T> T m23269k(C4103a c4103a) {
        return (T) this.f12924a.m23293a(c4103a);
    }

    /* renamed from: l */
    private <T> T m23268l(C4103a c4103a, Class<T> cls) {
        AbstractC4090a<T> m23270j = m23270j(cls);
        T t = (T) m23269k(c4103a);
        if (t != null) {
            this.f12929f -= m23270j.mo23282b(t) * m23270j.mo23283a();
            m23274f(m23270j.mo23282b(t), cls);
        }
        T t2 = t;
        if (t == null) {
            if (Log.isLoggable(m23270j.getTag(), 2)) {
                Log.v(m23270j.getTag(), "Allocated " + c4103a.f12931b + " bytes");
            }
            t2 = m23270j.newArray(c4103a.f12931b);
        }
        return t2;
    }

    /* renamed from: m */
    private NavigableMap<Integer, Integer> m23267m(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f12926c.get(cls);
        TreeMap treeMap = navigableMap;
        if (navigableMap == null) {
            treeMap = new TreeMap();
            this.f12926c.put(cls, treeMap);
        }
        return treeMap;
    }

    /* renamed from: n */
    private boolean m23266n() {
        int i = this.f12929f;
        return i == 0 || this.f12928e / i >= 2;
    }

    /* renamed from: o */
    private boolean m23265o(int i) {
        return i <= this.f12928e / 2;
    }

    /* renamed from: p */
    private boolean m23264p(int i, Integer num) {
        return num != null && (m23266n() || num.intValue() <= i * 8);
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4091b
    /* renamed from: a */
    public void mo23279a(int i) {
        synchronized (this) {
            if (i >= 40) {
                mo23278b();
            } else if (i >= 20 || i == 15) {
                m23272h(this.f12928e / 2);
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4091b
    /* renamed from: b */
    public void mo23278b() {
        synchronized (this) {
            m23272h(0);
        }
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4091b
    /* renamed from: c */
    public <T> T mo23277c(int i, Class<T> cls) {
        T t;
        synchronized (this) {
            t = (T) m23268l(this.f12925b.m23261e(i, cls), cls);
        }
        return t;
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4091b
    /* renamed from: d */
    public <T> void mo23276d(T t) {
        synchronized (this) {
            Class<?> cls = t.getClass();
            AbstractC4090a<T> m23270j = m23270j(cls);
            int mo23282b = m23270j.mo23282b(t);
            int mo23283a = m23270j.mo23283a() * mo23282b;
            if (!m23265o(mo23283a)) {
                return;
            }
            C4103a m23261e = this.f12925b.m23261e(mo23282b, cls);
            this.f12924a.m23290d(m23261e, t);
            NavigableMap<Integer, Integer> m23267m = m23267m(cls);
            Integer num = (Integer) m23267m.get(Integer.valueOf(m23261e.f12931b));
            int i = m23261e.f12931b;
            int i2 = 1;
            if (num != null) {
                i2 = 1 + num.intValue();
            }
            m23267m.put(Integer.valueOf(i), Integer.valueOf(i2));
            this.f12929f += mo23283a;
            m23273g();
        }
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4091b
    /* renamed from: e */
    public <T> T mo23275e(int i, Class<T> cls) {
        T t;
        synchronized (this) {
            Integer ceilingKey = m23267m(cls).ceilingKey(Integer.valueOf(i));
            t = (T) m23268l(m23264p(i, ceilingKey) ? this.f12925b.m23261e(ceilingKey.intValue(), cls) : this.f12925b.m23261e(i, cls), cls);
        }
        return t;
    }
}
