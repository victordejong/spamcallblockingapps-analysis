package com.google.common.base;

import java.io.Serializable;
/* renamed from: com.google.common.base.e */
/* loaded from: classes4-dex2jar.jar:com/google/common/base/e.class */
public abstract class AbstractC15375e<T> {

    /* renamed from: com.google.common.base.e$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/base/e$a.class */
    public static final class C15376a extends AbstractC15375e<Object> implements Serializable {

        /* renamed from: a */
        public static final C15376a f55624a = new C15376a();

        C15376a() {
        }

        private Object readResolve() {
            return f55624a;
        }

        @Override // com.google.common.base.AbstractC15375e
        /* renamed from: b */
        protected final int mo8964b(Object obj) {
            return obj.hashCode();
        }

        @Override // com.google.common.base.AbstractC15375e
        /* renamed from: b */
        protected final boolean mo8963b(Object obj, Object obj2) {
            return obj.equals(obj2);
        }
    }

    /* renamed from: com.google.common.base.e$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/base/e$b.class */
    public static final class C15377b extends AbstractC15375e<Object> implements Serializable {

        /* renamed from: a */
        public static final C15377b f55625a = new C15377b();

        C15377b() {
        }

        private Object readResolve() {
            return f55625a;
        }

        @Override // com.google.common.base.AbstractC15375e
        /* renamed from: b */
        protected final int mo8964b(Object obj) {
            return System.identityHashCode(obj);
        }

        @Override // com.google.common.base.AbstractC15375e
        /* renamed from: b */
        protected final boolean mo8963b(Object obj, Object obj2) {
            return false;
        }
    }

    protected AbstractC15375e() {
    }

    /* renamed from: a */
    public final int m8966a(T t) {
        if (t == null) {
            return 0;
        }
        return mo8964b(t);
    }

    /* renamed from: a */
    public final boolean m8965a(T t, T t2) {
        if (t == t2) {
            return true;
        }
        if (t != null && t2 != null) {
            return mo8963b(t, t2);
        }
        return false;
    }

    /* renamed from: b */
    protected abstract int mo8964b(T t);

    /* renamed from: b */
    protected abstract boolean mo8963b(T t, T t2);
}
