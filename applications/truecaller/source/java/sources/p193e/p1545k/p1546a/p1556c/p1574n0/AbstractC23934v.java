package p193e.p1545k.p1546a.p1556c.p1574n0;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.k.a.c.n0.v */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/v.class */
public abstract class AbstractC23934v<T> {

    /* renamed from: a */
    public T f66195a;

    /* renamed from: b */
    public C23935a<T> f66196b;

    /* renamed from: c */
    public C23935a<T> f66197c;

    /* renamed from: d */
    public int f66198d;

    /* renamed from: e.k.a.c.n0.v$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/v$a.class */
    public static final class C23935a<T> {

        /* renamed from: a */
        public final T f66199a;

        /* renamed from: b */
        public final int f66200b;

        /* renamed from: c */
        public C23935a<T> f66201c;

        public C23935a(T t, int i) {
            this.f66199a = t;
            this.f66200b = i;
        }
    }

    /* renamed from: a */
    public abstract T mo5719a(int i);

    /* renamed from: b */
    public final T m5718b(T t, int i) {
        C23935a<T> c23935a = new C23935a<>(t, i);
        if (this.f66196b == null) {
            this.f66197c = c23935a;
            this.f66196b = c23935a;
        } else {
            C23935a<T> c23935a2 = this.f66197c;
            if (c23935a2.f66201c != null) {
                throw new IllegalStateException();
            }
            c23935a2.f66201c = c23935a;
            this.f66197c = c23935a;
        }
        this.f66198d += i;
        return mo5719a(i < 16384 ? i + i : i + (i >> 2));
    }

    /* renamed from: c */
    public T m5717c(T t, int i) {
        int i2 = this.f66198d + i;
        T mo5719a = mo5719a(i2);
        int i3 = 0;
        for (C23935a<T> c23935a = this.f66196b; c23935a != null; c23935a = c23935a.f66201c) {
            System.arraycopy(c23935a.f66199a, 0, mo5719a, i3, c23935a.f66200b);
            i3 += c23935a.f66200b;
        }
        System.arraycopy(t, 0, mo5719a, i3, i);
        int i4 = i3 + i;
        if (i4 == i2) {
            return mo5719a;
        }
        throw new IllegalStateException(C22128a.m8595m2("Should have gotten ", i2, " entries, got ", i4));
    }

    /* renamed from: d */
    public T m5716d() {
        C23935a<T> c23935a = this.f66197c;
        if (c23935a != null) {
            this.f66195a = c23935a.f66199a;
        }
        this.f66197c = null;
        this.f66196b = null;
        this.f66198d = 0;
        T t = this.f66195a;
        T t2 = t;
        if (t == null) {
            t2 = mo5719a(12);
        }
        return t2;
    }
}
