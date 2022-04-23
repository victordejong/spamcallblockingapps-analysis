package com.google.common.base;

import java.io.Serializable;
/* loaded from: classes4-dex2jar.jar:com/google/common/base/e.class */
public abstract class e<T> {

    /* loaded from: classes4-dex2jar.jar:com/google/common/base/e$a.class */
    public static final class a extends e<Object> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        public static final a f31922a = new a();

        a() {
        }

        private Object readResolve() {
            return f31922a;
        }

        @Override // com.google.common.base.e
        protected final int b(Object obj) {
            return obj.hashCode();
        }

        @Override // com.google.common.base.e
        protected final boolean b(Object obj, Object obj2) {
            return obj.equals(obj2);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/base/e$b.class */
    public static final class b extends e<Object> implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        public static final b f31923a = new b();

        b() {
        }

        private Object readResolve() {
            return f31923a;
        }

        @Override // com.google.common.base.e
        protected final int b(Object obj) {
            return System.identityHashCode(obj);
        }

        @Override // com.google.common.base.e
        protected final boolean b(Object obj, Object obj2) {
            return false;
        }
    }

    protected e() {
    }

    public final int a(T t) {
        if (t == null) {
            return 0;
        }
        return b(t);
    }

    public final boolean a(T t, T t2) {
        if (t == t2) {
            return true;
        }
        if (t == null || t2 == null) {
            return false;
        }
        return b(t, t2);
    }

    protected abstract int b(T t);

    protected abstract boolean b(T t, T t2);
}
