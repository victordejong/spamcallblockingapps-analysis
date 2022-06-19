package com.allinone.callerid.util.p205t9;
/* renamed from: com.allinone.callerid.util.t9.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/t9/b.class */
final class C3857b<T> {

    /* renamed from: a */
    private final Object f12173a = new Object();

    /* renamed from: b */
    private final Object[] f12174b;

    /* renamed from: c */
    private int f12175c;

    public C3857b(int i) {
        if (i > 0) {
            this.f12174b = new Object[i];
            return;
        }
        throw new IllegalArgumentException("The max pool size must be > 0");
    }

    /* renamed from: b */
    private boolean m23947b(T t) {
        for (int i = 0; i < this.f12175c; i++) {
            if (this.f12174b[i] == t) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public T m23948a() {
        synchronized (this.f12173a) {
            int i = this.f12175c;
            if (i > 0) {
                int i2 = i - 1;
                Object[] objArr = this.f12174b;
                T t = (T) objArr[i2];
                objArr[i2] = null;
                this.f12175c = i - 1;
                return t;
            }
            return null;
        }
    }

    /* renamed from: c */
    public boolean m23946c(T t) {
        synchronized (this.f12173a) {
            if (!m23947b(t)) {
                int i = this.f12175c;
                Object[] objArr = this.f12174b;
                if (i >= objArr.length) {
                    return false;
                }
                objArr[i] = t;
                this.f12175c = i + 1;
                return true;
            }
            throw new IllegalStateException("Already in the pool!");
        }
    }
}
