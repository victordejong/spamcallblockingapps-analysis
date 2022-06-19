package org.apache.commons.lang3.p587d;

import java.io.Serializable;
import java.util.Map;
import java.util.Objects;
import org.apache.commons.lang3.builder.C20732a;
/* renamed from: org.apache.commons.lang3.d.b */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/d/b.class */
public abstract class AbstractC20755b<L, R> implements Serializable, Comparable<AbstractC20755b<L, R>>, Map.Entry<L, R> {

    /* renamed from: d */
    public static final AbstractC20755b<?, ?>[] f67253d = new C20756a[0];

    /* renamed from: org.apache.commons.lang3.d.b$a */
    /* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/d/b$a.class */
    static final class C20756a<L, R> extends AbstractC20755b<L, R> {
        private C20756a() {
        }

        @Override // org.apache.commons.lang3.p587d.AbstractC20755b
        /* renamed from: a */
        public final L mo525a() {
            return null;
        }

        @Override // org.apache.commons.lang3.p587d.AbstractC20755b
        /* renamed from: b */
        public final R mo524b() {
            return null;
        }

        @Override // org.apache.commons.lang3.p587d.AbstractC20755b, java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            return AbstractC20755b.super.compareTo((AbstractC20755b) obj);
        }

        @Override // java.util.Map.Entry
        public final R setValue(R r) {
            return null;
        }
    }

    /* renamed from: b */
    public static <L, R> AbstractC20755b<L, R> m526b(L l, R r) {
        return C20754a.m528a(l, r);
    }

    /* renamed from: a */
    public final int compareTo(AbstractC20755b<L, R> abstractC20755b) {
        return new C20732a().m591a(mo525a(), abstractC20755b.mo525a(), null).m591a(mo524b(), abstractC20755b.mo524b(), null).f67202a;
    }

    /* renamed from: a */
    public abstract L mo525a();

    /* renamed from: b */
    public abstract R mo524b();

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
        return mo525a();
    }

    @Override // java.util.Map.Entry
    public R getValue() {
        return mo524b();
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        return Objects.hashCode(getKey()) ^ Objects.hashCode(getValue());
    }

    public String toString() {
        return "(" + mo525a() + ',' + mo524b() + ')';
    }
}
