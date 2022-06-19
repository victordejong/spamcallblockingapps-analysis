package org.p579a.p580a.p581a;
/* renamed from: org.a.a.a.b */
/* loaded from: classes5-dex2jar.jar:org/a/a/a/b.class */
public final class C20716b<T> {

    /* renamed from: a */
    public C20717a<T>[] f67168a;

    /* renamed from: b */
    public int f67169b;

    /* renamed from: c */
    public volatile int f67170c;

    /* renamed from: d */
    private int f67171d;

    /* renamed from: org.a.a.a.b$a */
    /* loaded from: classes5-dex2jar.jar:org/a/a/a/b$a.class */
    public static final class C20717a<T> {

        /* renamed from: a */
        public final long f67172a;

        /* renamed from: b */
        public T f67173b;

        /* renamed from: c */
        public C20717a<T> f67174c;

        C20717a(long j, T t, C20717a<T> c20717a) {
            this.f67172a = j;
            this.f67173b = t;
            this.f67174c = c20717a;
        }
    }

    public C20716b() {
        this(16);
    }

    public C20716b(int i) {
        this.f67169b = i;
        this.f67171d = (i * 4) / 3;
        this.f67168a = new C20717a[i];
    }

    /* renamed from: a */
    public final T m609a(long j, T t) {
        C20717a<T>[] c20717aArr;
        int i = ((((int) j) ^ ((int) (j >>> 32))) & Integer.MAX_VALUE) % this.f67169b;
        C20717a<T> c20717a = this.f67168a[i];
        C20717a<T> c20717a2 = c20717a;
        while (true) {
            C20717a<T> c20717a3 = c20717a2;
            if (c20717a3 == null) {
                this.f67168a[i] = new C20717a<>(j, t, c20717a);
                this.f67170c++;
                if (this.f67170c <= this.f67171d) {
                    return null;
                }
                int i2 = this.f67169b * 2;
                C20717a<T>[] c20717aArr2 = new C20717a[i2];
                for (C20717a<T> c20717a4 : this.f67168a) {
                    while (true) {
                        C20717a<T> c20717a5 = c20717a4;
                        if (c20717a5 != null) {
                            long j2 = c20717a5.f67172a;
                            int i3 = ((((int) (j2 >>> 32)) ^ ((int) j2)) & Integer.MAX_VALUE) % i2;
                            C20717a<T> c20717a6 = c20717a5.f67174c;
                            c20717a5.f67174c = c20717aArr2[i3];
                            c20717aArr2[i3] = c20717a5;
                            c20717a4 = c20717a6;
                        }
                    }
                }
                this.f67168a = c20717aArr2;
                this.f67169b = i2;
                this.f67171d = (i2 * 4) / 3;
                return null;
            } else if (c20717a3.f67172a == j) {
                T t2 = c20717a3.f67173b;
                c20717a3.f67173b = t;
                return t2;
            } else {
                c20717a2 = c20717a3.f67174c;
            }
        }
    }

    /* renamed from: a */
    public final long[] m610a() {
        long[] jArr = new long[this.f67170c];
        C20717a<T>[] c20717aArr = this.f67168a;
        int length = c20717aArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            C20717a<T> c20717a = c20717aArr[i2];
            while (c20717a != null) {
                jArr[i] = c20717a.f67172a;
                c20717a = c20717a.f67174c;
                i++;
            }
        }
        return jArr;
    }
}
