package com.google.api.client.p379a;

import com.google.api.client.p379a.C15233k;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* renamed from: com.google.api.client.a.n */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/n.class */
public class C15241n extends AbstractMap<String, Object> implements Cloneable {
    final C15228h classInfo;
    Map<String, Object> unknownFields;

    /* renamed from: com.google.api.client.a.n$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/n$a.class */
    final class C15242a implements Iterator<Map.Entry<String, Object>> {

        /* renamed from: b */
        private boolean f55119b;

        /* renamed from: c */
        private final Iterator<Map.Entry<String, Object>> f55120c;

        /* renamed from: d */
        private final Iterator<Map.Entry<String, Object>> f55121d;

        C15242a(C15233k.C15236c c15236c) {
            C15241n.this = r4;
            this.f55120c = c15236c.iterator();
            this.f55121d = r4.unknownFields.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f55120c.hasNext() || this.f55121d.hasNext();
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Map.Entry<String, Object> next() {
            if (!this.f55119b) {
                if (this.f55120c.hasNext()) {
                    return this.f55120c.next();
                }
                this.f55119b = true;
            }
            return this.f55121d.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.f55119b) {
                this.f55121d.remove();
            }
            this.f55120c.remove();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.api.client.a.n$b */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/n$b.class */
    public final class C15243b extends AbstractSet<Map.Entry<String, Object>> {

        /* renamed from: b */
        private final C15233k.C15236c f55123b;

        C15243b() {
            C15241n.this = r7;
            this.f55123b = new C15233k(r7, r7.classInfo.f55072a).entrySet();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            C15241n.this.unknownFields.clear();
            this.f55123b.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<String, Object>> iterator() {
            return new C15242a(this.f55123b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return C15241n.this.unknownFields.size() + this.f55123b.size();
        }
    }

    /* renamed from: com.google.api.client.a.n$c */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/n$c.class */
    public enum EnumC15244c {
        IGNORE_CASE
    }

    public C15241n() {
        this(EnumSet.noneOf(EnumC15244c.class));
    }

    public C15241n(EnumSet<EnumC15244c> enumSet) {
        this.unknownFields = C15197a.m9306a();
        this.classInfo = C15228h.m9245a(getClass(), enumSet.contains(EnumC15244c.IGNORE_CASE));
    }

    @Override // java.util.AbstractMap
    public C15241n clone() {
        try {
            C15241n c15241n = (C15241n) super.clone();
            C15232j.m9240a(this, c15241n);
            c15241n.unknownFields = (Map) C15232j.m9233c(this.unknownFields);
            return c15241n;
        } catch (CloneNotSupportedException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<String, Object>> entrySet() {
        return new C15243b();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C15241n)) {
            return false;
        }
        C15241n c15241n = (C15241n) obj;
        return super.equals(c15241n) && Objects.equals(this.classInfo, c15241n.classInfo);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        C15240m m9244a = this.classInfo.m9244a(str);
        if (m9244a != null) {
            return m9244a.m9221a(this);
        }
        String str2 = str;
        if (this.classInfo.f55072a) {
            str2 = str.toLowerCase(Locale.US);
        }
        return this.unknownFields.get(str2);
    }

    public final C15228h getClassInfo() {
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
        C15240m m9244a = this.classInfo.m9244a(str);
        if (m9244a != null) {
            Object m9221a = m9244a.m9221a(this);
            m9244a.m9220a(this, obj);
            return m9221a;
        }
        String str2 = str;
        if (this.classInfo.f55072a) {
            str2 = str.toLowerCase(Locale.US);
        }
        return this.unknownFields.put(str2, obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends String, ?> map) {
        for (Map.Entry<? extends String, ?> entry : map.entrySet()) {
            set(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        if (this.classInfo.m9244a(str) != null) {
            throw new UnsupportedOperationException();
        }
        String str2 = str;
        if (this.classInfo.f55072a) {
            str2 = str.toLowerCase(Locale.US);
        }
        return this.unknownFields.remove(str2);
    }

    public C15241n set(String str, Object obj) {
        C15240m m9244a = this.classInfo.m9244a(str);
        if (m9244a != null) {
            m9244a.m9220a(this, obj);
        } else {
            String str2 = str;
            if (this.classInfo.f55072a) {
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
        return "GenericData{classInfo=" + this.classInfo.f55074c + ", " + super.toString() + "}";
    }
}
