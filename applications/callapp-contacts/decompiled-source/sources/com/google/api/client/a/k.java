package com.google.api.client.a;

import com.google.common.base.m;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/k.class */
public final class k extends AbstractMap<String, Object> {

    /* renamed from: a  reason: collision with root package name */
    final Object f31630a;

    /* renamed from: b  reason: collision with root package name */
    final h f31631b;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/k$a.class */
    final class a implements Map.Entry<String, Object> {

        /* renamed from: b  reason: collision with root package name */
        private Object f31633b;

        /* renamed from: c  reason: collision with root package name */
        private final m f31634c;

        a(m mVar, Object obj) {
            this.f31634c = mVar;
            this.f31633b = m.a(obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public String getKey() {
            String str = this.f31634c.f31651c;
            String str2 = str;
            if (k.this.f31631b.f31621a) {
                str2 = str.toLowerCase(Locale.US);
            }
            return str2;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return getKey().equals(entry.getKey()) && getValue().equals(entry.getValue());
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f31633b;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return getKey().hashCode() ^ getValue().hashCode();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            Object obj2 = this.f31633b;
            this.f31633b = m.a(obj);
            this.f31634c.a(k.this.f31630a, obj);
            return obj2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/k$b.class */
    public final class b implements Iterator<Map.Entry<String, Object>> {

        /* renamed from: b  reason: collision with root package name */
        private int f31636b = -1;

        /* renamed from: c  reason: collision with root package name */
        private m f31637c;

        /* renamed from: d  reason: collision with root package name */
        private Object f31638d;
        private boolean e;
        private boolean f;
        private m g;

        b() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (!this.f) {
                this.f = true;
                this.f31638d = null;
                while (this.f31638d == null) {
                    int i = this.f31636b + 1;
                    this.f31636b = i;
                    if (i >= k.this.f31631b.f31623c.size()) {
                        break;
                    }
                    m a2 = k.this.f31631b.a(k.this.f31631b.f31623c.get(this.f31636b));
                    this.f31637c = a2;
                    this.f31638d = a2.a(k.this.f31630a);
                }
            }
            return this.f31638d != null;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Map.Entry<String, Object> next() {
            if (hasNext()) {
                m mVar = this.f31637c;
                this.g = mVar;
                Object obj = this.f31638d;
                this.f = false;
                this.e = false;
                this.f31637c = null;
                this.f31638d = null;
                return new a(mVar, obj);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            m.b(this.g != null && !this.e);
            this.e = true;
            this.g.a(k.this.f31630a, (Object) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/k$c.class */
    public final class c extends AbstractSet<Map.Entry<String, Object>> {
        c() {
        }

        /* renamed from: a */
        public final b iterator() {
            return new b();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            for (String str : k.this.f31631b.f31623c) {
                k.this.f31631b.a(str).a(k.this.f31630a, (Object) null);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            for (String str : k.this.f31631b.f31623c) {
                if (k.this.f31631b.a(str).a(k.this.f31630a) != null) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            int i = 0;
            for (String str : k.this.f31631b.f31623c) {
                if (k.this.f31631b.a(str).a(k.this.f31630a) != null) {
                    i++;
                }
            }
            return i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Object obj, boolean z) {
        this.f31630a = obj;
        this.f31631b = h.a(obj.getClass(), z);
    }

    /* renamed from: a */
    public final c entrySet() {
        return new c();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        m a2;
        if ((obj instanceof String) && (a2 = this.f31631b.a((String) obj)) != null) {
            return a2.a(this.f31630a);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* synthetic */ Object put(Object obj, Object obj2) {
        String str = (String) obj;
        m a2 = this.f31631b.a(str);
        m.a(a2, "no field of key ".concat(String.valueOf(str)));
        Object a3 = a2.a(this.f31630a);
        a2.a(this.f31630a, m.a(obj2));
        return a3;
    }
}
