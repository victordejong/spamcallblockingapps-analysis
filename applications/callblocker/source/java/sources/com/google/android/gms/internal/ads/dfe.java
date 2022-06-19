package com.google.android.gms.internal.ads;

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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dfe.class */
public class dfe<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    private final int f14195a;

    /* renamed from: b */
    private List<dfn> f14196b;

    /* renamed from: c */
    private Map<K, V> f14197c;

    /* renamed from: d */
    private boolean f14198d;

    /* renamed from: e */
    private volatile dfp f14199e;

    /* renamed from: f */
    private Map<K, V> f14200f;

    /* renamed from: g */
    private volatile dfj f14201g;

    private dfe(int i) {
        this.f14195a = i;
        this.f14196b = Collections.emptyList();
        this.f14197c = Collections.emptyMap();
        this.f14200f = Collections.emptyMap();
    }

    public /* synthetic */ dfe(int i, dfh dfhVar) {
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
    private final int m9833a(K r5) {
        /*
            r4 = this;
            r0 = 0
            r6 = r0
            r0 = r4
            java.util.List<com.google.android.gms.internal.ads.dfn> r0 = r0.f14196b
            int r0 = r0.size()
            r1 = 1
            int r0 = r0 - r1
            r7 = r0
            r0 = r7
            if (r0 < 0) goto L91
            r0 = r5
            r1 = r4
            java.util.List<com.google.android.gms.internal.ads.dfn> r1 = r1.f14196b
            r2 = r7
            java.lang.Object r1 = r1.get(r2)
            com.google.android.gms.internal.ads.dfn r1 = (com.google.android.gms.internal.ads.dfn) r1
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
            java.util.List<com.google.android.gms.internal.ads.dfn> r1 = r1.f14196b
            r2 = r8
            java.lang.Object r1 = r1.get(r2)
            com.google.android.gms.internal.ads.dfn r1 = (com.google.android.gms.internal.ads.dfn) r1
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dfe.m9833a(java.lang.Comparable):int");
    }

    /* renamed from: a */
    public static <FieldDescriptorType extends dcn<FieldDescriptorType>> dfe<FieldDescriptorType, Object> m9836a(int i) {
        return new dfh(i);
    }

    /* renamed from: c */
    public final V m9827c(int i) {
        m9822f();
        V v = (V) this.f14196b.remove(i).getValue();
        if (!this.f14197c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m9821g().entrySet().iterator();
            this.f14196b.add(new dfn(this, it.next()));
            it.remove();
        }
        return v;
    }

    /* renamed from: f */
    public final void m9822f() {
        if (this.f14198d) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: g */
    private final SortedMap<K, V> m9821g() {
        m9822f();
        if (this.f14197c.isEmpty() && !(this.f14197c instanceof TreeMap)) {
            this.f14197c = new TreeMap();
            this.f14200f = ((TreeMap) this.f14197c).descendingMap();
        }
        return (SortedMap) this.f14197c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final V m9832a(K k, V v) {
        V v2;
        m9822f();
        int m9833a = m9833a((dfe<K, V>) k);
        if (m9833a >= 0) {
            v2 = this.f14196b.get(m9833a).setValue(v);
        } else {
            m9822f();
            if (this.f14196b.isEmpty() && !(this.f14196b instanceof ArrayList)) {
                this.f14196b = new ArrayList(this.f14195a);
            }
            int i = -(m9833a + 1);
            if (i >= this.f14195a) {
                v2 = m9821g().put(k, v);
            } else {
                if (this.f14196b.size() == this.f14195a) {
                    dfn remove = this.f14196b.remove(this.f14195a - 1);
                    m9821g().put((K) remove.getKey(), (V) remove.getValue());
                }
                this.f14196b.add(i, new dfn(this, k, v));
                v2 = null;
            }
        }
        return v2;
    }

    /* renamed from: a */
    public void mo9763a() {
        if (!this.f14198d) {
            this.f14197c = this.f14197c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f14197c);
            this.f14200f = this.f14200f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f14200f);
            this.f14198d = true;
        }
    }

    /* renamed from: b */
    public final Map.Entry<K, V> m9830b(int i) {
        return this.f14196b.get(i);
    }

    /* renamed from: b */
    public final boolean m9831b() {
        return this.f14198d;
    }

    /* renamed from: c */
    public final int m9828c() {
        return this.f14196b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m9822f();
        if (!this.f14196b.isEmpty()) {
            this.f14196b.clear();
        }
        if (!this.f14197c.isEmpty()) {
            this.f14197c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m9833a((dfe<K, V>) comparable) >= 0 || this.f14197c.containsKey(comparable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Iterable] */
    /* renamed from: d */
    public final Iterable<Map.Entry<K, V>> m9825d() {
        return this.f14197c.isEmpty() ? dfi.m9762a() : this.f14197c.entrySet();
    }

    /* renamed from: e */
    public final Set<Map.Entry<K, V>> m9823e() {
        if (this.f14201g == null) {
            this.f14201g = new dfj(this, null);
        }
        return this.f14201g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f14199e == null) {
            this.f14199e = new dfp(this, null);
        }
        return this.f14199e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (!(obj instanceof dfe)) {
                z = super.equals(obj);
            } else {
                dfe dfeVar = (dfe) obj;
                int size = size();
                if (size != dfeVar.size()) {
                    z = false;
                } else {
                    int m9828c = m9828c();
                    if (m9828c != dfeVar.m9828c()) {
                        z = entrySet().equals(dfeVar.entrySet());
                    } else {
                        int i = 0;
                        while (true) {
                            if (i < m9828c) {
                                if (!m9830b(i).equals(dfeVar.m9830b(i))) {
                                    z = false;
                                    break;
                                }
                                i++;
                            } else if (m9828c != size) {
                                z = this.f14197c.equals(dfeVar.f14197c);
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
        int m9833a = m9833a((dfe<K, V>) comparable);
        return m9833a >= 0 ? this.f14196b.get(m9833a).getValue() : this.f14197c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int m9828c = m9828c();
        int i = 0;
        for (int i2 = 0; i2 < m9828c; i2++) {
            i += this.f14196b.get(i2).hashCode();
        }
        if (this.f14197c.size() > 0) {
            i = this.f14197c.hashCode() + i;
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return m9832a((dfe<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m9822f();
        Comparable comparable = (Comparable) obj;
        int m9833a = m9833a((dfe<K, V>) comparable);
        return m9833a >= 0 ? m9827c(m9833a) : this.f14197c.isEmpty() ? null : this.f14197c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f14196b.size() + this.f14197c.size();
    }
}
