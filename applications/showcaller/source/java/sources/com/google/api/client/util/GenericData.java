package com.google.api.client.util;

import com.google.api.client.util.C8713k;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/GenericData.class */
public class GenericData extends AbstractMap<String, Object> implements Cloneable {
    final C8710i classInfo;
    Map<String, Object> unknownFields;

    /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/GenericData$Flags.class */
    public enum Flags {
        IGNORE_CASE
    }

    /* renamed from: com.google.api.client.util.GenericData$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/GenericData$a.class */
    final class C8682a implements Iterator<Map.Entry<String, Object>> {

        /* renamed from: d */
        private boolean f38470d;

        /* renamed from: e */
        private final Iterator<Map.Entry<String, Object>> f38471e;

        /* renamed from: f */
        private final Iterator<Map.Entry<String, Object>> f38472f;

        C8682a(C8713k.C8716c c8716c) {
            GenericData.this = r4;
            this.f38471e = c8716c.iterator();
            this.f38472f = r4.unknownFields.entrySet().iterator();
        }

        /* renamed from: a */
        public Map.Entry<String, Object> next() {
            if (!this.f38470d) {
                if (this.f38471e.hasNext()) {
                    return this.f38471e.next();
                }
                this.f38470d = true;
            }
            return this.f38472f.next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f38471e.hasNext() || this.f38472f.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f38470d) {
                this.f38472f.remove();
            }
            this.f38471e.remove();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.api.client.util.GenericData$b */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/GenericData$b.class */
    public final class C8683b extends AbstractSet<Map.Entry<String, Object>> {

        /* renamed from: d */
        private final C8713k.C8716c f38474d;

        C8683b() {
            GenericData.this = r7;
            this.f38474d = new C8713k(r7, r7.classInfo.m2887d()).entrySet();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            GenericData.this.unknownFields.clear();
            this.f38474d.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<String, Object>> iterator() {
            return new C8682a(this.f38474d);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return GenericData.this.unknownFields.size() + this.f38474d.size();
        }
    }

    public GenericData() {
        this(EnumSet.noneOf(Flags.class));
    }

    public GenericData(EnumSet<Flags> enumSet) {
        this.unknownFields = C8684a.m2951b();
        this.classInfo = C8710i.m2885f(getClass(), enumSet.contains(Flags.IGNORE_CASE));
    }

    @Override // java.util.AbstractMap
    public GenericData clone() {
        try {
            GenericData genericData = (GenericData) super.clone();
            C8712j.m2881c(this, genericData);
            genericData.unknownFields = (Map) C8712j.m2883a(this.unknownFields);
            return genericData;
        } catch (CloneNotSupportedException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<String, Object>> entrySet() {
        return new C8683b();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GenericData)) {
            return false;
        }
        GenericData genericData = (GenericData) obj;
        if (!super.equals(genericData) || !Objects.equals(this.classInfo, genericData.classInfo)) {
            z = false;
        }
        return z;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        C8717l m2889b = this.classInfo.m2889b(str);
        if (m2889b != null) {
            return m2889b.m2860g(this);
        }
        String str2 = str;
        if (this.classInfo.m2887d()) {
            str2 = str.toLowerCase(Locale.US);
        }
        return this.unknownFields.get(str2);
    }

    public final C8710i getClassInfo() {
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
        C8717l m2889b = this.classInfo.m2889b(str);
        if (m2889b != null) {
            Object m2860g = m2889b.m2860g(this);
            m2889b.m2854m(this, obj);
            return m2860g;
        }
        String str2 = str;
        if (this.classInfo.m2887d()) {
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
        if (this.classInfo.m2889b(str) != null) {
            throw new UnsupportedOperationException();
        }
        String str2 = str;
        if (this.classInfo.m2887d()) {
            str2 = str.toLowerCase(Locale.US);
        }
        return this.unknownFields.remove(str2);
    }

    public GenericData set(String str, Object obj) {
        C8717l m2889b = this.classInfo.m2889b(str);
        if (m2889b != null) {
            m2889b.m2854m(this, obj);
        } else {
            String str2 = str;
            if (this.classInfo.m2887d()) {
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
        return "GenericData{classInfo=" + this.classInfo.f38515f + ", " + super.toString() + "}";
    }
}
