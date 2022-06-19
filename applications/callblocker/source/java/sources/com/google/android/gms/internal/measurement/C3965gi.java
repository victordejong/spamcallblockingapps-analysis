package com.google.android.gms.internal.measurement;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
/* renamed from: com.google.android.gms.internal.measurement.gi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/gi.class */
public class C3965gi<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    private final int f18207a;

    /* renamed from: b */
    private List<C3970gn> f18208b;

    /* renamed from: c */
    private Map<K, V> f18209c;

    /* renamed from: d */
    private boolean f18210d;

    /* renamed from: e */
    private volatile C3972gp f18211e;

    /* renamed from: f */
    private Map<K, V> f18212f;

    /* renamed from: g */
    private volatile C3966gj f18213g;

    private C3965gi(int i) {
        this.f18207a = i;
        this.f18208b = Collections.emptyList();
        this.f18209c = Collections.emptyMap();
        this.f18212f = Collections.emptyMap();
    }

    public /* synthetic */ C3965gi(int i, C3964gh c3964gh) {
        this(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003b, code lost:
        if (r0 == 0) goto L7;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m5359a(K r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = r4
            java.util.List<com.google.android.gms.internal.measurement.gn> r0 = r0.f18208b
            int r0 = r0.size()
            r1 = 1
            int r0 = r0 - r1
            r7 = r0
            r0 = r7
            if (r0 < 0) goto L91
            r0 = r5
            r1 = r4
            java.util.List<com.google.android.gms.internal.measurement.gn> r1 = r1.f18208b
            r2 = r7
            java.lang.Object r1 = r1.get(r2)
            com.google.android.gms.internal.measurement.gn r1 = (com.google.android.gms.internal.measurement.C3970gn) r1
            java.lang.Object r1 = r1.getKey()
            java.lang.Comparable r1 = (java.lang.Comparable) r1
            int r0 = r0.compareTo(r1)
            r8 = r0
            r0 = r8
            if (r0 <= 0) goto L39
            r0 = r7
            r1 = 2
            int r0 = r0 + r1
            int r0 = -r0
            r7 = r0
        L37:
            r0 = r7
            return r0
        L39:
            r0 = r8
            if (r0 != 0) goto L91
            goto L37
        L41:
            r0 = r6
            r1 = r7
            if (r0 > r1) goto L89
            r0 = r6
            r1 = r7
            int r0 = r0 + r1
            r1 = 2
            int r0 = r0 / r1
            r8 = r0
            r0 = r5
            r1 = r4
            java.util.List<com.google.android.gms.internal.measurement.gn> r1 = r1.f18208b
            r2 = r8
            java.lang.Object r1 = r1.get(r2)
            com.google.android.gms.internal.measurement.gn r1 = (com.google.android.gms.internal.measurement.C3970gn) r1
            java.lang.Object r1 = r1.getKey()
            java.lang.Comparable r1 = (java.lang.Comparable) r1
            int r0 = r0.compareTo(r1)
            r9 = r0
            r0 = r9
            if (r0 >= 0) goto L76
            r0 = r8
            r1 = 1
            int r0 = r0 - r1
            r7 = r0
            goto L41
        L76:
            r0 = r9
            if (r0 <= 0) goto L83
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            goto L41
        L83:
            r0 = r8
            r7 = r0
            goto L37
        L89:
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            int r0 = -r0
            r7 = r0
            goto L37
        L91:
            goto L41
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C3965gi.m5359a(java.lang.Comparable):int");
    }

    /* renamed from: a */
    public static <FieldDescriptorType extends AbstractC3894dy<FieldDescriptorType>> C3965gi<FieldDescriptorType, Object> m5362a(int i) {
        return new C3964gh(i);
    }

    /* renamed from: c */
    public final V m5353c(int i) {
        m5348f();
        V v = (V) this.f18208b.remove(i).getValue();
        if (!this.f18209c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m5347g().entrySet().iterator();
            this.f18208b.add(new C3970gn(this, it.next()));
            it.remove();
        }
        return v;
    }

    /* renamed from: f */
    public final void m5348f() {
        if (this.f18210d) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: g */
    private final SortedMap<K, V> m5347g() {
        m5348f();
        if (this.f18209c.isEmpty() && !(this.f18209c instanceof TreeMap)) {
            this.f18209c = new TreeMap();
            this.f18212f = ((TreeMap) this.f18209c).descendingMap();
        }
        return (SortedMap) this.f18209c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final V m5358a(K k, V v) {
        V v2;
        m5348f();
        int m5359a = m5359a((C3965gi<K, V>) k);
        if (m5359a >= 0) {
            v2 = this.f18208b.get(m5359a).setValue(v);
        } else {
            m5348f();
            if (this.f18208b.isEmpty() && !(this.f18208b instanceof ArrayList)) {
                this.f18208b = new ArrayList(this.f18207a);
            }
            int i = -(m5359a + 1);
            if (i >= this.f18207a) {
                v2 = m5347g().put(k, v);
            } else {
                if (this.f18208b.size() == this.f18207a) {
                    C3970gn remove = this.f18208b.remove(this.f18207a - 1);
                    m5347g().put((K) remove.getKey(), (V) remove.getValue());
                }
                this.f18208b.add(i, new C3970gn(this, k, v));
                v2 = null;
            }
        }
        return v2;
    }

    /* renamed from: a */
    public void mo5363a() {
        if (!this.f18210d) {
            this.f18209c = this.f18209c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f18209c);
            this.f18212f = this.f18212f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f18212f);
            this.f18210d = true;
        }
    }

    /* renamed from: b */
    public final Map.Entry<K, V> m5356b(int i) {
        return this.f18208b.get(i);
    }

    /* renamed from: b */
    public final boolean m5357b() {
        return this.f18210d;
    }

    /* renamed from: c */
    public final int m5354c() {
        return this.f18208b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m5348f();
        if (!this.f18208b.isEmpty()) {
            this.f18208b.clear();
        }
        if (!this.f18209c.isEmpty()) {
            this.f18209c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m5359a((C3965gi<K, V>) comparable) >= 0 || this.f18209c.containsKey(comparable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Iterable] */
    /* renamed from: d */
    public final Iterable<Map.Entry<K, V>> m5351d() {
        return this.f18209c.isEmpty() ? C3969gm.m5345a() : this.f18209c.entrySet();
    }

    /* renamed from: e */
    public final Set<Map.Entry<K, V>> m5349e() {
        if (this.f18213g == null) {
            this.f18213g = new C3966gj(this, null);
        }
        return this.f18213g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f18211e == null) {
            this.f18211e = new C3972gp(this, null);
        }
        return this.f18211e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (!(obj instanceof C3965gi)) {
                z = super.equals(obj);
            } else {
                C3965gi c3965gi = (C3965gi) obj;
                int size = size();
                if (size != c3965gi.size()) {
                    z = false;
                } else {
                    int m5354c = m5354c();
                    if (m5354c != c3965gi.m5354c()) {
                        z = entrySet().equals(c3965gi.entrySet());
                    } else {
                        int i = 0;
                        while (true) {
                            if (i < m5354c) {
                                if (!m5356b(i).equals(c3965gi.m5356b(i))) {
                                    z = false;
                                    break;
                                }
                                i++;
                            } else if (m5354c != size) {
                                z = this.f18209c.equals(c3965gi.f18209c);
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m5359a = m5359a((C3965gi<K, V>) comparable);
        return m5359a >= 0 ? this.f18208b.get(m5359a).getValue() : this.f18209c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int m5354c = m5354c();
        int i = 0;
        for (int i2 = 0; i2 < m5354c; i2++) {
            i += this.f18208b.get(i2).hashCode();
        }
        if (this.f18209c.size() > 0) {
            i = this.f18209c.hashCode() + i;
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return m5358a((C3965gi<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m5348f();
        Comparable comparable = (Comparable) obj;
        int m5359a = m5359a((C3965gi<K, V>) comparable);
        return m5359a >= 0 ? m5353c(m5359a) : this.f18209c.isEmpty() ? null : this.f18209c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f18208b.size() + this.f18209c.size();
    }
}
