package p226s;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import p226s.AbstractC4257f;
/* renamed from: s.a */
/* loaded from: classes-dex2jar.jar:s/a.class */
public class C4251a<K, V> extends C4263g<K, V> implements Map<K, V> {

    /* renamed from: h */
    public AbstractC4257f<K, V> f13326h;

    /* renamed from: s.a$a */
    /* loaded from: classes-dex2jar.jar:s/a$a.class */
    public class C4252a extends AbstractC4257f<K, V> {
        public C4252a() {
            C4251a.this = r4;
        }

        @Override // p226s.AbstractC4257f
        /* renamed from: a */
        public void mo1215a() {
            C4251a.this.clear();
        }

        @Override // p226s.AbstractC4257f
        /* renamed from: b */
        public Object mo1214b(int i, int i2) {
            return C4251a.this.f13364b[(i << 1) + i2];
        }

        @Override // p226s.AbstractC4257f
        /* renamed from: c */
        public Map<K, V> mo1213c() {
            return C4251a.this;
        }

        @Override // p226s.AbstractC4257f
        /* renamed from: d */
        public int mo1212d() {
            return C4251a.this.f13365c;
        }

        @Override // p226s.AbstractC4257f
        /* renamed from: e */
        public int mo1211e(Object obj) {
            return C4251a.this.m1198e(obj);
        }

        @Override // p226s.AbstractC4257f
        /* renamed from: f */
        public int mo1210f(Object obj) {
            return C4251a.this.m1196g(obj);
        }

        @Override // p226s.AbstractC4257f
        /* renamed from: g */
        public void mo1209g(K k, V v) {
            C4251a.this.put(k, v);
        }

        @Override // p226s.AbstractC4257f
        /* renamed from: h */
        public void mo1208h(int i) {
            C4251a.this.m1194i(i);
        }

        @Override // p226s.AbstractC4257f
        /* renamed from: i */
        public V mo1207i(int i, V v) {
            int i2 = (i << 1) + 1;
            Object[] objArr = C4251a.this.f13364b;
            V v2 = (V) objArr[i2];
            objArr[i2] = v;
            return v2;
        }
    }

    public C4251a() {
    }

    public C4251a(int i) {
        super(i);
    }

    public C4251a(C4263g c4263g) {
        super(c4263g);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        AbstractC4257f<K, V> m1230l = m1230l();
        if (m1230l.f13344a == null) {
            m1230l.f13344a = new AbstractC4257f.C4259b();
        }
        return m1230l.f13344a;
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        AbstractC4257f<K, V> m1230l = m1230l();
        if (m1230l.f13345b == null) {
            m1230l.f13345b = new AbstractC4257f.C4260c();
        }
        return m1230l.f13345b;
    }

    /* renamed from: l */
    public final AbstractC4257f<K, V> m1230l() {
        if (this.f13326h == null) {
            this.f13326h = new C4252a();
        }
        return this.f13326h;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m1201b(map.size() + this.f13365c);
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        AbstractC4257f<K, V> m1230l = m1230l();
        if (m1230l.f13346c == null) {
            m1230l.f13346c = new AbstractC4257f.C4262e();
        }
        return m1230l.f13346c;
    }
}
