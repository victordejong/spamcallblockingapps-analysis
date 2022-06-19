package com.google.api.client.util;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
/* renamed from: com.google.api.client.util.k */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/k.class */
public final class C8713k extends AbstractMap<String, Object> {

    /* renamed from: d */
    final Object f38530d;

    /* renamed from: e */
    final C8710i f38531e;

    /* renamed from: com.google.api.client.util.k$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/k$a.class */
    public final class C8714a implements Map.Entry<String, Object> {

        /* renamed from: d */
        private Object f38532d;

        /* renamed from: e */
        private final C8717l f38533e;

        C8714a(C8717l c8717l, Object obj) {
            C8713k.this = r4;
            this.f38533e = c8717l;
            this.f38532d = C8731w.m2836d(obj);
        }

        /* renamed from: a */
        public String getKey() {
            String m2862e = this.f38533e.m2862e();
            String str = m2862e;
            if (C8713k.this.f38531e.m2887d()) {
                str = m2862e.toLowerCase(Locale.US);
            }
            return str;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (!getKey().equals(entry.getKey()) || !getValue().equals(entry.getValue())) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f38532d;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return getKey().hashCode() ^ getValue().hashCode();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Object obj2 = this.f38532d;
            this.f38532d = C8731w.m2836d(obj);
            this.f38533e.m2854m(C8713k.this.f38530d, obj);
            return obj2;
        }
    }

    /* renamed from: com.google.api.client.util.k$b */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/k$b.class */
    public final class C8715b implements Iterator<Map.Entry<String, Object>> {

        /* renamed from: d */
        private int f38535d = -1;

        /* renamed from: e */
        private C8717l f38536e;

        /* renamed from: f */
        private Object f38537f;

        /* renamed from: g */
        private boolean f38538g;

        /* renamed from: h */
        private boolean f38539h;

        /* renamed from: i */
        private C8717l f38540i;

        C8715b() {
            C8713k.this = r4;
        }

        /* renamed from: a */
        public Map.Entry<String, Object> next() {
            if (hasNext()) {
                C8717l c8717l = this.f38536e;
                this.f38540i = c8717l;
                Object obj = this.f38537f;
                this.f38539h = false;
                this.f38538g = false;
                this.f38536e = null;
                this.f38537f = null;
                return new C8714a(c8717l, obj);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            boolean z = true;
            if (!this.f38539h) {
                this.f38539h = true;
                this.f38537f = null;
                while (this.f38537f == null) {
                    int i = this.f38535d + 1;
                    this.f38535d = i;
                    if (i >= C8713k.this.f38531e.f38515f.size()) {
                        break;
                    }
                    C8710i c8710i = C8713k.this.f38531e;
                    C8717l m2889b = c8710i.m2889b(c8710i.f38515f.get(this.f38535d));
                    this.f38536e = m2889b;
                    this.f38537f = m2889b.m2860g(C8713k.this.f38530d);
                }
            }
            if (this.f38537f == null) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Iterator
        public void remove() {
            C8731w.m2833g(this.f38540i != null && !this.f38538g);
            this.f38538g = true;
            this.f38540i.m2854m(C8713k.this.f38530d, null);
        }
    }

    /* renamed from: com.google.api.client.util.k$c */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/k$c.class */
    public final class C8716c extends AbstractSet<Map.Entry<String, Object>> {
        C8716c() {
            C8713k.this = r4;
        }

        /* renamed from: c */
        public C8715b iterator() {
            return new C8715b();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            for (String str : C8713k.this.f38531e.f38515f) {
                C8713k.this.f38531e.m2889b(str).m2854m(C8713k.this.f38530d, null);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            for (String str : C8713k.this.f38531e.f38515f) {
                if (C8713k.this.f38531e.m2889b(str).m2860g(C8713k.this.f38530d) != null) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int i = 0;
            for (String str : C8713k.this.f38531e.f38515f) {
                if (C8713k.this.f38531e.m2889b(str).m2860g(C8713k.this.f38530d) != null) {
                    i++;
                }
            }
            return i;
        }
    }

    public C8713k(Object obj, boolean z) {
        this.f38530d = obj;
        this.f38531e = C8710i.m2885f(obj.getClass(), z);
    }

    /* renamed from: a */
    public C8716c entrySet() {
        return new C8716c();
    }

    /* renamed from: b */
    public Object put(String str, Object obj) {
        C8717l m2889b = this.f38531e.m2889b(str);
        C8731w.m2835e(m2889b, "no field of key " + str);
        Object m2860g = m2889b.m2860g(this.f38530d);
        m2889b.m2854m(this.f38530d, C8731w.m2836d(obj));
        return m2860g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        C8717l m2889b;
        if ((obj instanceof String) && (m2889b = this.f38531e.m2889b((String) obj)) != null) {
            return m2889b.m2860g(this.f38530d);
        }
        return null;
    }
}
