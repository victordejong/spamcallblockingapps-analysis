package androidx.media2.exoplayer.external;

import android.util.Pair;
import androidx.media2.exoplayer.external.source.ads.a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/al.class */
public abstract class al {

    /* renamed from: a  reason: collision with root package name */
    public static final al f2829a = new al() { // from class: androidx.media2.exoplayer.external.al.1
        @Override // androidx.media2.exoplayer.external.al
        public final int a(Object obj) {
            return -1;
        }

        @Override // androidx.media2.exoplayer.external.al
        public final a a(int i, a aVar, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media2.exoplayer.external.al
        public final b a(int i, b bVar, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media2.exoplayer.external.al
        public final Object a(int i) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media2.exoplayer.external.al
        public final int b() {
            return 0;
        }

        @Override // androidx.media2.exoplayer.external.al
        public final int c() {
            return 0;
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/al$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public Object f2830a;

        /* renamed from: b  reason: collision with root package name */
        public Object f2831b;

        /* renamed from: c  reason: collision with root package name */
        public int f2832c;

        /* renamed from: d  reason: collision with root package name */
        public long f2833d;
        public long e;
        androidx.media2.exoplayer.external.source.ads.a f = androidx.media2.exoplayer.external.source.ads.a.f3525a;

        public final int a(int i, int i2) {
            return this.f.f3528d[i].a(i2);
        }

        public final int a(long j) {
            return this.f.a(j);
        }

        public final long a(int i) {
            return this.f.f3527c[i];
        }

        public final a a(Object obj, Object obj2, int i, long j, long j2, androidx.media2.exoplayer.external.source.ads.a aVar) {
            this.f2830a = obj;
            this.f2831b = obj2;
            this.f2832c = i;
            this.f2833d = j;
            this.e = j2;
            this.f = aVar;
            return this;
        }

        public final a a(Object obj, Object obj2, long j, long j2) {
            return a(obj, obj2, 0, j, j2, androidx.media2.exoplayer.external.source.ads.a.f3525a);
        }

        public final int b(int i) {
            return this.f.f3528d[i].a(-1);
        }

        public final int b(long j) {
            return this.f.a(j, this.f2833d);
        }

        public final boolean b(int i, int i2) {
            a.C0084a aVar = this.f.f3528d[i];
            return (aVar.f3529a == -1 || aVar.f3531c[i2] == 0) ? false : true;
        }

        public final int c(int i) {
            return this.f.f3528d[i].f3529a;
        }

        public final long c(int i, int i2) {
            a.C0084a aVar = this.f.f3528d[i];
            if (aVar.f3529a != -1) {
                return aVar.f3532d[i2];
            }
            return -9223372036854775807L;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/al$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public Object f2834a;

        /* renamed from: b  reason: collision with root package name */
        public Object f2835b;

        /* renamed from: c  reason: collision with root package name */
        public long f2836c;

        /* renamed from: d  reason: collision with root package name */
        public long f2837d;
        public boolean e;
        public boolean f;
        public int g;
        public int h;
        public long i;
        public long j;
        public long k;

        public final b a(Object obj, Object obj2, long j, long j2, boolean z, boolean z2, long j3, long j4, long j5) {
            this.f2834a = obj;
            this.f2835b = obj2;
            this.f2836c = j;
            this.f2837d = j2;
            this.e = z;
            this.f = z2;
            this.i = j3;
            this.j = j4;
            this.g = 0;
            this.h = 0;
            this.k = j5;
            return this;
        }
    }

    public int a(int i, int i2, boolean z) {
        if (i2 != 0) {
            if (i2 == 1) {
                return i;
            }
            if (i2 == 2) {
                return i == a(z) ? b(z) : i + 1;
            }
            throw new IllegalStateException();
        } else if (i == a(z)) {
            return -1;
        } else {
            return i + 1;
        }
    }

    public final int a(int i, a aVar, b bVar, int i2, boolean z) {
        int i3 = a(i, aVar, false).f2832c;
        if (a(i3, bVar, 0L).h != i) {
            return i + 1;
        }
        int a2 = a(i3, i2, z);
        if (a2 == -1) {
            return -1;
        }
        return a(a2, bVar, 0L).g;
    }

    public abstract int a(Object obj);

    public int a(boolean z) {
        if (a()) {
            return -1;
        }
        return b() - 1;
    }

    public final Pair<Object, Long> a(b bVar, a aVar, int i, long j) {
        return (Pair) androidx.media2.exoplayer.external.util.a.a(a(bVar, aVar, i, j, 0L));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<java.lang.Object, java.lang.Long> a(androidx.media2.exoplayer.external.al.b r7, androidx.media2.exoplayer.external.al.a r8, int r9, long r10, long r12) {
        /*
            r6 = this;
            r0 = r9
            r1 = r6
            int r1 = r1.b()
            int r0 = androidx.media2.exoplayer.external.util.a.a(r0, r1)
            r0 = r6
            r1 = r9
            r2 = r7
            r3 = r12
            androidx.media2.exoplayer.external.al$b r0 = r0.a(r1, r2, r3)
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0034
            r0 = r7
            long r0 = r0.i
            r10 = r0
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0034
            r0 = 0
            return r0
        L_0x0034:
            r0 = r7
            int r0 = r0.g
            r9 = r0
            r0 = r7
            long r0 = r0.k
            r1 = r12
            long r0 = r0 + r1
            r10 = r0
            r0 = r6
            r1 = r9
            r2 = r8
            r3 = 1
            androidx.media2.exoplayer.external.al$a r0 = r0.a(r1, r2, r3)
            long r0 = r0.f2833d
            r12 = r0
        L_0x004e:
            r0 = r12
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0080
            r0 = r10
            r1 = r12
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0080
            r0 = r9
            r1 = r7
            int r1 = r1.h
            if (r0 >= r1) goto L_0x0080
            r0 = r10
            r1 = r12
            long r0 = r0 - r1
            r10 = r0
            int r9 = r9 + 1
            r0 = r6
            r1 = r9
            r2 = r8
            r3 = 1
            androidx.media2.exoplayer.external.al$a r0 = r0.a(r1, r2, r3)
            long r0 = r0.f2833d
            r12 = r0
            goto L_0x004e
        L_0x0080:
            r0 = r8
            java.lang.Object r0 = r0.f2831b
            java.lang.Object r0 = androidx.media2.exoplayer.external.util.a.a(r0)
            r1 = r10
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            android.util.Pair r0 = android.util.Pair.create(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.al.a(androidx.media2.exoplayer.external.al$b, androidx.media2.exoplayer.external.al$a, int, long, long):android.util.Pair");
    }

    public abstract a a(int i, a aVar, boolean z);

    public a a(Object obj, a aVar) {
        return a(a(obj), aVar, true);
    }

    public b a(int i, b bVar, long j) {
        return b(i, bVar, j);
    }

    public abstract Object a(int i);

    public final boolean a() {
        return b() == 0;
    }

    public abstract int b();

    public int b(boolean z) {
        return a() ? -1 : 0;
    }

    @Deprecated
    public b b(int i, b bVar, long j) {
        return a(i, bVar, j);
    }

    public final boolean b(int i, a aVar, b bVar, int i2, boolean z) {
        return a(i, aVar, bVar, i2, z) == -1;
    }

    public abstract int c();
}
