package com.google.api.client.p379a;

import com.google.common.base.C15391m;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
/* renamed from: com.google.api.client.a.k */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/k.class */
public final class C15233k extends AbstractMap<String, Object> {

    /* renamed from: a */
    final Object f55091a;

    /* renamed from: b */
    final C15228h f55092b;

    /* renamed from: com.google.api.client.a.k$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/k$a.class */
    final class C15234a implements Map.Entry<String, Object> {

        /* renamed from: b */
        private Object f55094b;

        /* renamed from: c */
        private final C15240m f55095c;

        C15234a(C15240m c15240m, Object obj) {
            C15233k.this = r4;
            this.f55095c = c15240m;
            this.f55094b = C15391m.m8946a(obj);
        }

        /* renamed from: a */
        public String getKey() {
            String str = this.f55095c.f55116c;
            String str2 = str;
            if (C15233k.this.f55092b.f55072a) {
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
            return this.f55094b;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return getKey().hashCode() ^ getValue().hashCode();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            Object obj2 = this.f55094b;
            this.f55094b = C15391m.m8946a(obj);
            this.f55095c.m9220a(C15233k.this.f55091a, obj);
            return obj2;
        }
    }

    /* renamed from: com.google.api.client.a.k$b */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/k$b.class */
    public final class C15235b implements Iterator<Map.Entry<String, Object>> {

        /* renamed from: b */
        private int f55097b = -1;

        /* renamed from: c */
        private C15240m f55098c;

        /* renamed from: d */
        private Object f55099d;

        /* renamed from: e */
        private boolean f55100e;

        /* renamed from: f */
        private boolean f55101f;

        /* renamed from: g */
        private C15240m f55102g;

        C15235b() {
            C15233k.this = r4;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (!this.f55101f) {
                this.f55101f = true;
                this.f55099d = null;
                while (this.f55099d == null) {
                    int i = this.f55097b + 1;
                    this.f55097b = i;
                    if (i >= C15233k.this.f55092b.f55074c.size()) {
                        break;
                    }
                    C15240m m9244a = C15233k.this.f55092b.m9244a(C15233k.this.f55092b.f55074c.get(this.f55097b));
                    this.f55098c = m9244a;
                    this.f55099d = m9244a.m9221a(C15233k.this.f55091a);
                }
            }
            return this.f55099d != null;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Map.Entry<String, Object> next() {
            if (hasNext()) {
                C15240m c15240m = this.f55098c;
                this.f55102g = c15240m;
                Object obj = this.f55099d;
                this.f55101f = false;
                this.f55100e = false;
                this.f55098c = null;
                this.f55099d = null;
                return new C15234a(c15240m, obj);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            C15391m.m8934b(this.f55102g != null && !this.f55100e);
            this.f55100e = true;
            this.f55102g.m9220a(C15233k.this.f55091a, (Object) null);
        }
    }

    /* renamed from: com.google.api.client.a.k$c */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/k$c.class */
    public final class C15236c extends AbstractSet<Map.Entry<String, Object>> {
        C15236c() {
            C15233k.this = r4;
        }

        /* renamed from: a */
        public final C15235b iterator() {
            return new C15235b();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            for (String str : C15233k.this.f55092b.f55074c) {
                C15233k.this.f55092b.m9244a(str).m9220a(C15233k.this.f55091a, (Object) null);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            for (String str : C15233k.this.f55092b.f55074c) {
                if (C15233k.this.f55092b.m9244a(str).m9221a(C15233k.this.f55091a) != null) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            int i = 0;
            for (String str : C15233k.this.f55092b.f55074c) {
                if (C15233k.this.f55092b.m9244a(str).m9221a(C15233k.this.f55091a) != null) {
                    i++;
                }
            }
            return i;
        }
    }

    public C15233k(Object obj, boolean z) {
        this.f55091a = obj;
        this.f55092b = C15228h.m9245a(obj.getClass(), z);
    }

    /* renamed from: a */
    public final C15236c entrySet() {
        return new C15236c();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        C15240m m9244a;
        if ((obj instanceof String) && (m9244a = this.f55092b.m9244a((String) obj)) != null) {
            return m9244a.m9221a(this.f55091a);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* synthetic */ Object put(Object obj, Object obj2) {
        String str = (String) obj;
        C15240m m9244a = this.f55092b.m9244a(str);
        C15391m.m8945a(m9244a, "no field of key ".concat(String.valueOf(str)));
        Object m9221a = m9244a.m9221a(this.f55091a);
        m9244a.m9220a(this.f55091a, C15391m.m8946a(obj2));
        return m9221a;
    }
}
