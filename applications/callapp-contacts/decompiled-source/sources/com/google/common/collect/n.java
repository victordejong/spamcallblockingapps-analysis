package com.google.common.collect;

import java.util.Comparator;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/n.class */
public abstract class n {

    /* renamed from: a  reason: collision with root package name */
    private static final n f32102a = new n() { // from class: com.google.common.collect.n.1
        private static n a(int i) {
            return i < 0 ? n.f32103b : i > 0 ? n.f32104c : n.f32102a;
        }

        @Override // com.google.common.collect.n
        public final n a(int i, int i2) {
            return a(i < i2 ? -1 : i > i2 ? 1 : 0);
        }

        @Override // com.google.common.collect.n
        public final n a(long j, long j2) {
            int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
            return a(i < 0 ? -1 : i > 0 ? 1 : 0);
        }

        @Override // com.google.common.collect.n
        public final <T> n a(T t, T t2, Comparator<T> comparator) {
            return a(comparator.compare(t, t2));
        }

        @Override // com.google.common.collect.n
        public final n a(boolean z, boolean z2) {
            return a(com.google.common.b.a.a(z2, z));
        }

        @Override // com.google.common.collect.n
        public final int b() {
            return 0;
        }

        @Override // com.google.common.collect.n
        public final n b(boolean z, boolean z2) {
            return a(com.google.common.b.a.a(z, z2));
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final n f32103b = new a(-1);

    /* renamed from: c  reason: collision with root package name */
    private static final n f32104c = new a(1);

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/n$a.class */
    static final class a extends n {

        /* renamed from: a  reason: collision with root package name */
        final int f32105a;

        a(int i) {
            super();
            this.f32105a = i;
        }

        @Override // com.google.common.collect.n
        public final n a(int i, int i2) {
            return this;
        }

        @Override // com.google.common.collect.n
        public final n a(long j, long j2) {
            return this;
        }

        @Override // com.google.common.collect.n
        public final <T> n a(T t, T t2, Comparator<T> comparator) {
            return this;
        }

        @Override // com.google.common.collect.n
        public final n a(boolean z, boolean z2) {
            return this;
        }

        @Override // com.google.common.collect.n
        public final int b() {
            return this.f32105a;
        }

        @Override // com.google.common.collect.n
        public final n b(boolean z, boolean z2) {
            return this;
        }
    }

    private n() {
    }

    public static n a() {
        return f32102a;
    }

    public abstract n a(int i, int i2);

    public abstract n a(long j, long j2);

    public abstract <T> n a(T t, T t2, Comparator<T> comparator);

    public abstract n a(boolean z, boolean z2);

    public abstract int b();

    public abstract n b(boolean z, boolean z2);
}
