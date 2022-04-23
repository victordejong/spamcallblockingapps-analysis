package com.google.android.exoplayer2;

import android.net.Uri;
import android.util.Pair;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.source.ads.a;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/al.class */
public abstract class al {

    /* renamed from: b  reason: collision with root package name */
    public static final al f20674b = new al() { // from class: com.google.android.exoplayer2.al.1
        @Override // com.google.android.exoplayer2.al
        public final int a() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.al
        public final a a(int i, a aVar, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.al
        public final b a(int i, b bVar, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.al
        public final Object a(int i) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.al
        public final int b() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.al
        public final int c(Object obj) {
            return -1;
        }
    };

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/al$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public Object f20675a;

        /* renamed from: b  reason: collision with root package name */
        public Object f20676b;

        /* renamed from: c  reason: collision with root package name */
        public int f20677c;

        /* renamed from: d  reason: collision with root package name */
        public long f20678d;
        public long e;
        public com.google.android.exoplayer2.source.ads.a f = com.google.android.exoplayer2.source.ads.a.f21560a;

        public final int a(int i, int i2) {
            return this.f.e[i].a(i2);
        }

        public final int a(long j) {
            return this.f.a(j, this.f20678d);
        }

        public final long a(int i) {
            return this.f.f21563d[i];
        }

        public final a a(Object obj, Object obj2, int i, long j, long j2, com.google.android.exoplayer2.source.ads.a aVar) {
            this.f20675a = obj;
            this.f20676b = obj2;
            this.f20677c = i;
            this.f20678d = j;
            this.e = j2;
            this.f = aVar;
            return this;
        }

        public final a a(Object obj, Object obj2, long j, long j2) {
            return a(obj, obj2, 0, j, j2, com.google.android.exoplayer2.source.ads.a.f21560a);
        }

        public final int b(int i) {
            return this.f.e[i].a(-1);
        }

        public final int b(long j) {
            return this.f.b(j, this.f20678d);
        }

        public final long b(int i, int i2) {
            a.C0435a aVar = this.f.e[i];
            if (aVar.f21564a != -1) {
                return aVar.f21567d[i2];
            }
            return -9223372036854775807L;
        }

        public final boolean c(int i) {
            return !this.f.e[i].a();
        }

        public final int d(int i) {
            return this.f.e[i].f21564a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !getClass().equals(obj.getClass())) {
                return false;
            }
            a aVar = (a) obj;
            return af.a(this.f20675a, aVar.f20675a) && af.a(this.f20676b, aVar.f20676b) && this.f20677c == aVar.f20677c && this.f20678d == aVar.f20678d && this.e == aVar.e && af.a(this.f, aVar.f);
        }

        public final int hashCode() {
            Object obj = this.f20675a;
            int i = 0;
            int hashCode = obj == null ? 0 : obj.hashCode();
            Object obj2 = this.f20676b;
            if (obj2 != null) {
                i = obj2.hashCode();
            }
            int i2 = this.f20677c;
            long j = this.f20678d;
            int i3 = (int) (j ^ (j >>> 32));
            long j2 = this.e;
            return ((((((((((hashCode + 217) * 31) + i) * 31) + i2) * 31) + i3) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.f.hashCode();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/al$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final Object f20679a = new Object();
        private static final MediaItem s;
        @Deprecated

        /* renamed from: c  reason: collision with root package name */
        public Object f20681c;
        public Object e;
        public long f;
        public long g;
        public long h;
        public boolean i;
        public boolean j;
        @Deprecated
        public boolean k;
        public MediaItem.LiveConfiguration l;
        public boolean m;
        public int n;
        public int o;
        public long p;
        public long q;
        public long r;

        /* renamed from: b  reason: collision with root package name */
        public Object f20680b = f20679a;

        /* renamed from: d  reason: collision with root package name */
        public MediaItem f20682d = s;

        static {
            MediaItem.a aVar = new MediaItem.a();
            aVar.f20614a = "com.google.android.exoplayer2.Timeline";
            aVar.f20615b = Uri.EMPTY;
            s = aVar.a();
        }

        public final b a(Object obj, MediaItem mediaItem, Object obj2, long j, long j2, long j3, boolean z, boolean z2, MediaItem.LiveConfiguration liveConfiguration, long j4, long j5, long j6) {
            this.f20680b = obj;
            this.f20682d = mediaItem != null ? mediaItem : s;
            this.f20681c = (mediaItem == null || mediaItem.f20611b == null) ? null : mediaItem.f20611b.h;
            this.e = obj2;
            this.f = j;
            this.g = j2;
            this.h = j3;
            this.i = z;
            this.j = z2;
            this.k = liveConfiguration != null;
            this.l = liveConfiguration;
            this.p = j4;
            this.q = j5;
            this.n = 0;
            this.o = 0;
            this.r = j6;
            this.m = false;
            return this;
        }

        public final boolean a() {
            com.google.android.exoplayer2.util.a.b(this.k == (this.l != null));
            return this.l != null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !getClass().equals(obj.getClass())) {
                return false;
            }
            b bVar = (b) obj;
            return af.a(this.f20680b, bVar.f20680b) && af.a(this.f20682d, bVar.f20682d) && af.a(this.e, bVar.e) && af.a(this.l, bVar.l) && this.f == bVar.f && this.g == bVar.g && this.h == bVar.h && this.i == bVar.i && this.j == bVar.j && this.m == bVar.m && this.p == bVar.p && this.q == bVar.q && this.n == bVar.n && this.o == bVar.o && this.r == bVar.r;
        }

        public final int hashCode() {
            int hashCode = this.f20680b.hashCode();
            int hashCode2 = this.f20682d.hashCode();
            Object obj = this.e;
            int i = 0;
            int hashCode3 = obj == null ? 0 : obj.hashCode();
            MediaItem.LiveConfiguration liveConfiguration = this.l;
            if (liveConfiguration != null) {
                i = liveConfiguration.hashCode();
            }
            long j = this.f;
            int i2 = (int) (j ^ (j >>> 32));
            long j2 = this.g;
            int i3 = (int) (j2 ^ (j2 >>> 32));
            long j3 = this.h;
            int i4 = (int) (j3 ^ (j3 >>> 32));
            boolean z = this.i;
            boolean z2 = this.j;
            boolean z3 = this.m;
            long j4 = this.p;
            int i5 = (int) (j4 ^ (j4 >>> 32));
            long j5 = this.q;
            int i6 = (int) (j5 ^ (j5 >>> 32));
            int i7 = this.n;
            int i8 = this.o;
            long j6 = this.r;
            return ((((((((((((((((((((((((((((hashCode + 217) * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + ((int) (j6 ^ (j6 >>> 32)));
        }
    }

    public abstract int a();

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
        int i3 = a(i, aVar, false).f20677c;
        if (a(i3, bVar, 0L).o != i) {
            return i + 1;
        }
        int a2 = a(i3, i2, z);
        if (a2 == -1) {
            return -1;
        }
        return a(a2, bVar, 0L).n;
    }

    public int a(boolean z) {
        if (c()) {
            return -1;
        }
        return a() - 1;
    }

    public final Pair<Object, Long> a(b bVar, a aVar, int i, long j) {
        return (Pair) com.google.android.exoplayer2.util.a.b(a(bVar, aVar, i, j, 0L));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<java.lang.Object, java.lang.Long> a(com.google.android.exoplayer2.al.b r7, com.google.android.exoplayer2.al.a r8, int r9, long r10, long r12) {
        /*
            r6 = this;
            r0 = r9
            r1 = r6
            int r1 = r1.a()
            int r0 = com.google.android.exoplayer2.util.a.a(r0, r1)
            r0 = r6
            r1 = r9
            r2 = r7
            r3 = r12
            com.google.android.exoplayer2.al$b r0 = r0.a(r1, r2, r3)
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0034
            r0 = r7
            long r0 = r0.p
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
            int r0 = r0.n
            r9 = r0
            r0 = r7
            long r0 = r0.r
            r1 = r12
            long r0 = r0 + r1
            r12 = r0
            r0 = r6
            r1 = r9
            r2 = r8
            r3 = 1
            com.google.android.exoplayer2.al$a r0 = r0.a(r1, r2, r3)
            long r0 = r0.f20678d
            r10 = r0
        L_0x004e:
            r0 = r10
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0080
            r0 = r12
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0080
            r0 = r9
            r1 = r7
            int r1 = r1.o
            if (r0 >= r1) goto L_0x0080
            r0 = r12
            r1 = r10
            long r0 = r0 - r1
            r12 = r0
            int r9 = r9 + 1
            r0 = r6
            r1 = r9
            r2 = r8
            r3 = 1
            com.google.android.exoplayer2.al$a r0 = r0.a(r1, r2, r3)
            long r0 = r0.f20678d
            r10 = r0
            goto L_0x004e
        L_0x0080:
            r0 = r8
            java.lang.Object r0 = r0.f20676b
            java.lang.Object r0 = com.google.android.exoplayer2.util.a.b(r0)
            r1 = r12
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            android.util.Pair r0 = android.util.Pair.create(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.al.a(com.google.android.exoplayer2.al$b, com.google.android.exoplayer2.al$a, int, long, long):android.util.Pair");
    }

    public abstract a a(int i, a aVar, boolean z);

    public a a(Object obj, a aVar) {
        return a(c(obj), aVar, true);
    }

    public abstract b a(int i, b bVar, long j);

    public abstract Object a(int i);

    public abstract int b();

    public int b(int i, int i2, boolean z) {
        if (i2 != 0) {
            if (i2 == 1) {
                return i;
            }
            if (i2 == 2) {
                return i == b(z) ? a(z) : i - 1;
            }
            throw new IllegalStateException();
        } else if (i == b(z)) {
            return -1;
        } else {
            return i - 1;
        }
    }

    public int b(boolean z) {
        return c() ? -1 : 0;
    }

    public final boolean b(int i, a aVar, b bVar, int i2, boolean z) {
        return a(i, aVar, bVar, i2, z) == -1;
    }

    public abstract int c(Object obj);

    public final boolean c() {
        return a() == 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof al)) {
            return false;
        }
        al alVar = (al) obj;
        if (!(alVar.a() == a() && alVar.b() == b())) {
            return false;
        }
        b bVar = new b();
        a aVar = new a();
        b bVar2 = new b();
        a aVar2 = new a();
        for (int i = 0; i < a(); i++) {
            if (!a(i, bVar, 0L).equals(alVar.a(i, bVar2, 0L))) {
                return false;
            }
        }
        for (int i2 = 0; i2 < b(); i2++) {
            if (!a(i2, aVar, true).equals(alVar.a(i2, aVar2, true))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        b bVar = new b();
        a aVar = new a();
        int a2 = a() + 217;
        for (int i = 0; i < a(); i++) {
            a2 = (a2 * 31) + a(i, bVar, 0L).hashCode();
        }
        int b2 = (a2 * 31) + b();
        for (int i2 = 0; i2 < b(); i2++) {
            b2 = (b2 * 31) + a(i2, aVar, true).hashCode();
        }
        return b2;
    }
}
