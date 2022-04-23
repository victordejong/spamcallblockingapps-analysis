package com.google.api.client.a;

import com.google.api.client.a.k;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/n.class */
public class n extends AbstractMap<String, Object> implements Cloneable {
    final h classInfo;
    Map<String, Object> unknownFields;

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/n$a.class */
    final class a implements Iterator<Map.Entry<String, Object>> {

        /* renamed from: b  reason: collision with root package name */
        private boolean f31653b;

        /* renamed from: c  reason: collision with root package name */
        private final Iterator<Map.Entry<String, Object>> f31654c;

        /* renamed from: d  reason: collision with root package name */
        private final Iterator<Map.Entry<String, Object>> f31655d;

        a(k.c cVar) {
            this.f31654c = cVar.iterator();
            this.f31655d = n.this.unknownFields.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f31654c.hasNext() || this.f31655d.hasNext();
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Map.Entry<String, Object> next() {
            if (!this.f31653b) {
                if (this.f31654c.hasNext()) {
                    return this.f31654c.next();
                }
                this.f31653b = true;
            }
            return this.f31655d.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.f31653b) {
                this.f31655d.remove();
            }
            this.f31654c.remove();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/n$b.class */
    final class b extends AbstractSet<Map.Entry<String, Object>> {

        /* renamed from: b  reason: collision with root package name */
        private final k.c f31657b;

        b() {
            this.f31657b = new k(n.this, n.this.classInfo.f31621a).entrySet();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            n.this.unknownFields.clear();
            this.f31657b.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<String, Object>> iterator() {
            return new a(this.f31657b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return n.this.unknownFields.size() + this.f31657b.size();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/n$c.class */
    public enum c {
        IGNORE_CASE
    }

    public n() {
        this(EnumSet.noneOf(c.class));
    }

    public n(EnumSet<c> enumSet) {
        this.unknownFields = com.google.api.client.a.a.a();
        this.classInfo = h.a(getClass(), enumSet.contains(c.IGNORE_CASE));
    }

    @Override // java.util.AbstractMap
    public n clone() {
        try {
            n nVar = (n) super.clone();
            j.a(this, nVar);
            nVar.unknownFields = (Map) j.c(this.unknownFields);
            return nVar;
        } catch (CloneNotSupportedException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<String, Object>> entrySet() {
        return new b();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return super.equals(nVar) && Objects.equals(this.classInfo, nVar.classInfo);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        m a2 = this.classInfo.a(str);
        if (a2 != null) {
            return a2.a(this);
        }
        String str2 = str;
        if (this.classInfo.f31621a) {
            str2 = str.toLowerCase(Locale.US);
        }
        return this.unknownFields.get(str2);
    }

    public final h getClassInfo() {
        return this.classInfo;
    }

    public final Map<String, Object> getUnknownKeys() {
        return this.unknownFields;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.classInfo);
    }

    public final Object put(String str, Object obj) {
        m a2 = this.classInfo.a(str);
        if (a2 != null) {
            Object a3 = a2.a(this);
            a2.a(this, obj);
            return a3;
        }
        String str2 = str;
        if (this.classInfo.f31621a) {
            str2 = str.toLowerCase(Locale.US);
        }
        return this.unknownFields.put(str2, obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends String, ?> map) {
        for (Map.Entry<? extends String, ?> entry : map.entrySet()) {
            set((String) entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        if (this.classInfo.a(str) == null) {
            String str2 = str;
            if (this.classInfo.f31621a) {
                str2 = str.toLowerCase(Locale.US);
            }
            return this.unknownFields.remove(str2);
        }
        throw new UnsupportedOperationException();
    }

    public n set(String str, Object obj) {
        m a2 = this.classInfo.a(str);
        if (a2 != null) {
            a2.a(this, obj);
        } else {
            String str2 = str;
            if (this.classInfo.f31621a) {
                str2 = str.toLowerCase(Locale.US);
            }
            this.unknownFields.put(str2, obj);
        }
        return this;
    }

    public final void setUnknownKeys(Map<String, Object> map) {
        this.unknownFields = map;
    }

    @Override // java.util.AbstractMap
    public String toString() {
        return "GenericData{classInfo=" + this.classInfo.f31623c + ", " + super.toString() + "}";
    }
}
