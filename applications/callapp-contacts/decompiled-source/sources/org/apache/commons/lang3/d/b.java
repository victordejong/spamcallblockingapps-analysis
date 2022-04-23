package org.apache.commons.lang3.d;

import java.io.Serializable;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/d/b.class */
public abstract class b<L, R> implements Serializable, Comparable<b<L, R>>, Map.Entry<L, R> {

    /* renamed from: d  reason: collision with root package name */
    public static final b<?, ?>[] f39175d = new a[0];

    /* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/d/b$a.class */
    static final class a<L, R> extends b<L, R> {
        private a() {
        }

        @Override // org.apache.commons.lang3.d.b
        public final L a() {
            return null;
        }

        @Override // org.apache.commons.lang3.d.b
        public final R b() {
            return null;
        }

        @Override // org.apache.commons.lang3.d.b, java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            return b.super.compareTo((b) obj);
        }

        @Override // java.util.Map.Entry
        public final R setValue(R r) {
            return null;
        }
    }

    public static <L, R> b<L, R> b(L l, R r) {
        return org.apache.commons.lang3.d.a.a(l, r);
    }

    /* renamed from: a */
    public final int compareTo(b<L, R> bVar) {
        return new org.apache.commons.lang3.builder.a().a(a(), bVar.a(), null).a(b(), bVar.b(), null).f39138a;
    }

    public abstract L a();

    public abstract R b();

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return Objects.equals(getKey(), entry.getKey()) && Objects.equals(getValue(), entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final L getKey() {
        return a();
    }

    @Override // java.util.Map.Entry
    public R getValue() {
        return b();
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        return Objects.hashCode(getKey()) ^ Objects.hashCode(getValue());
    }

    public String toString() {
        return "(" + a() + ',' + b() + ')';
    }
}
