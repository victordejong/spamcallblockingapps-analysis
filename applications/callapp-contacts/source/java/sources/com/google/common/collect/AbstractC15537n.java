package com.google.common.collect;

import com.google.common.p386b.C15360a;
import java.util.Comparator;
/* renamed from: com.google.common.collect.n */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/n.class */
public abstract class AbstractC15537n {

    /* renamed from: a */
    private static final AbstractC15537n f55842a = new AbstractC15537n() { // from class: com.google.common.collect.n.1
        /* renamed from: a */
        private static AbstractC15537n m8742a(int i) {
            return i < 0 ? AbstractC15537n.f55843b : i > 0 ? AbstractC15537n.f55844c : AbstractC15537n.f55842a;
        }

        @Override // com.google.common.collect.AbstractC15537n
        /* renamed from: a */
        public final AbstractC15537n mo8741a(int i, int i2) {
            return m8742a(i < i2 ? -1 : i > i2 ? 1 : 0);
        }

        @Override // com.google.common.collect.AbstractC15537n
        /* renamed from: a */
        public final AbstractC15537n mo8740a(long j, long j2) {
            int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
            return m8742a(i < 0 ? -1 : i > 0 ? 1 : 0);
        }

        @Override // com.google.common.collect.AbstractC15537n
        /* renamed from: a */
        public final <T> AbstractC15537n mo8739a(T t, T t2, Comparator<T> comparator) {
            return m8742a(comparator.compare(t, t2));
        }

        @Override // com.google.common.collect.AbstractC15537n
        /* renamed from: a */
        public final AbstractC15537n mo8738a(boolean z, boolean z2) {
            return m8742a(C15360a.m8982a(z2, z));
        }

        @Override // com.google.common.collect.AbstractC15537n
        /* renamed from: b */
        public final int mo8737b() {
            return 0;
        }

        @Override // com.google.common.collect.AbstractC15537n
        /* renamed from: b */
        public final AbstractC15537n mo8736b(boolean z, boolean z2) {
            return m8742a(C15360a.m8982a(z, z2));
        }
    };

    /* renamed from: b */
    private static final AbstractC15537n f55843b = new C15539a(-1);

    /* renamed from: c */
    private static final AbstractC15537n f55844c = new C15539a(1);

    /* renamed from: com.google.common.collect.n$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/n$a.class */
    static final class C15539a extends AbstractC15537n {

        /* renamed from: a */
        final int f55845a;

        C15539a(int i) {
            super();
            this.f55845a = i;
        }

        @Override // com.google.common.collect.AbstractC15537n
        /* renamed from: a */
        public final AbstractC15537n mo8741a(int i, int i2) {
            return this;
        }

        @Override // com.google.common.collect.AbstractC15537n
        /* renamed from: a */
        public final AbstractC15537n mo8740a(long j, long j2) {
            return this;
        }

        @Override // com.google.common.collect.AbstractC15537n
        /* renamed from: a */
        public final <T> AbstractC15537n mo8739a(T t, T t2, Comparator<T> comparator) {
            return this;
        }

        @Override // com.google.common.collect.AbstractC15537n
        /* renamed from: a */
        public final AbstractC15537n mo8738a(boolean z, boolean z2) {
            return this;
        }

        @Override // com.google.common.collect.AbstractC15537n
        /* renamed from: b */
        public final int mo8737b() {
            return this.f55845a;
        }

        @Override // com.google.common.collect.AbstractC15537n
        /* renamed from: b */
        public final AbstractC15537n mo8736b(boolean z, boolean z2) {
            return this;
        }
    }

    private AbstractC15537n() {
    }

    /* renamed from: a */
    public static AbstractC15537n m8746a() {
        return f55842a;
    }

    /* renamed from: a */
    public abstract AbstractC15537n mo8741a(int i, int i2);

    /* renamed from: a */
    public abstract AbstractC15537n mo8740a(long j, long j2);

    /* renamed from: a */
    public abstract <T> AbstractC15537n mo8739a(T t, T t2, Comparator<T> comparator);

    /* renamed from: a */
    public abstract AbstractC15537n mo8738a(boolean z, boolean z2);

    /* renamed from: b */
    public abstract int mo8737b();

    /* renamed from: b */
    public abstract AbstractC15537n mo8736b(boolean z, boolean z2);
}
