package org.a.a.a;
/* loaded from: classes5-dex2jar.jar:org/a/a/a/b.class */
public final class b<T> {

    /* renamed from: a  reason: collision with root package name */
    public a<T>[] f39121a;

    /* renamed from: b  reason: collision with root package name */
    public int f39122b;

    /* renamed from: c  reason: collision with root package name */
    public volatile int f39123c;

    /* renamed from: d  reason: collision with root package name */
    private int f39124d;

    /* loaded from: classes5-dex2jar.jar:org/a/a/a/b$a.class */
    public static final class a<T> {

        /* renamed from: a  reason: collision with root package name */
        public final long f39125a;

        /* renamed from: b  reason: collision with root package name */
        public T f39126b;

        /* renamed from: c  reason: collision with root package name */
        public a<T> f39127c;

        a(long j, T t, a<T> aVar) {
            this.f39125a = j;
            this.f39126b = t;
            this.f39127c = aVar;
        }
    }

    public b() {
        this(16);
    }

    public b(int i) {
        this.f39122b = i;
        this.f39124d = (i * 4) / 3;
        this.f39121a = new a[i];
    }

    public final T a(long j, T t) {
        int i = ((((int) j) ^ ((int) (j >>> 32))) & Integer.MAX_VALUE) % this.f39122b;
        a<T> aVar = this.f39121a[i];
        for (a<T> aVar2 = aVar; aVar2 != null; aVar2 = aVar2.f39127c) {
            if (aVar2.f39125a == j) {
                T t2 = aVar2.f39126b;
                aVar2.f39126b = t;
                return t2;
            }
        }
        this.f39121a[i] = new a<>(j, t, aVar);
        this.f39123c++;
        if (this.f39123c <= this.f39124d) {
            return null;
        }
        int i2 = this.f39122b * 2;
        a<T>[] aVarArr = new a[i2];
        a<T>[] aVarArr2 = this.f39121a;
        int length = aVarArr2.length;
        for (int i3 = 0; i3 < length; i3++) {
            a<T> aVar3 = aVarArr2[i3];
            while (aVar3 != null) {
                long j2 = aVar3.f39125a;
                int i4 = ((((int) (j2 >>> 32)) ^ ((int) j2)) & Integer.MAX_VALUE) % i2;
                aVar3 = aVar3.f39127c;
                aVar3.f39127c = aVarArr[i4];
                aVarArr[i4] = aVar3;
            }
        }
        this.f39121a = aVarArr;
        this.f39122b = i2;
        this.f39124d = (i2 * 4) / 3;
        return null;
    }

    public final long[] a() {
        long[] jArr = new long[this.f39123c];
        a<T>[] aVarArr = this.f39121a;
        int length = aVarArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            a<T> aVar = aVarArr[i2];
            while (aVar != null) {
                jArr[i] = aVar.f39125a;
                aVar = aVar.f39127c;
                i++;
            }
        }
        return jArr;
    }
}
