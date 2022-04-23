package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.upstream.v;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/n.class */
public final class n extends d<Void> {

    /* renamed from: a  reason: collision with root package name */
    public a f21626a;

    /* renamed from: b  reason: collision with root package name */
    private final r f21627b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f21628c;

    /* renamed from: d  reason: collision with root package name */
    private final al.b f21629d = new al.b();
    private final al.a e = new al.a();
    private m f;
    private boolean g;
    private boolean h;
    private boolean i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/n$a.class */
    public static final class a extends j {

        /* renamed from: c  reason: collision with root package name */
        public static final Object f21630c = new Object();

        /* renamed from: d  reason: collision with root package name */
        private final Object f21631d;
        private final Object e;

        private a(al alVar, Object obj, Object obj2) {
            super(alVar);
            this.f21631d = obj;
            this.e = obj2;
        }

        public static a a(MediaItem mediaItem) {
            return new a(new b(mediaItem), al.b.f20679a, f21630c);
        }

        public static a a(al alVar, Object obj, Object obj2) {
            return new a(alVar, obj, obj2);
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.al
        public final al.a a(int i, al.a aVar, boolean z) {
            this.f21613a.a(i, aVar, z);
            if (af.a(aVar.f20676b, this.e) && z) {
                aVar.f20676b = f21630c;
            }
            return aVar;
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.al
        public final al.b a(int i, al.b bVar, long j) {
            this.f21613a.a(i, bVar, j);
            if (af.a(bVar.f20680b, this.f21631d)) {
                bVar.f20680b = al.b.f20679a;
            }
            return bVar;
        }

        public final a a(al alVar) {
            return new a(alVar, this.f21631d, this.e);
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.al
        public final Object a(int i) {
            Object a2 = this.f21613a.a(i);
            Object obj = a2;
            if (af.a(a2, this.e)) {
                obj = f21630c;
            }
            return obj;
        }

        @Override // com.google.android.exoplayer2.source.j, com.google.android.exoplayer2.al
        public final int c(Object obj) {
            al alVar = this.f21613a;
            Object obj2 = obj;
            if (f21630c.equals(obj)) {
                Object obj3 = this.e;
                obj2 = obj;
                if (obj3 != null) {
                    obj2 = obj3;
                }
            }
            return alVar.c(obj2);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/n$b.class */
    public static final class b extends al {

        /* renamed from: a  reason: collision with root package name */
        private final MediaItem f21632a;

        public b(MediaItem mediaItem) {
            this.f21632a = mediaItem;
        }

        @Override // com.google.android.exoplayer2.al
        public final int a() {
            return 1;
        }

        @Override // com.google.android.exoplayer2.al
        public final al.a a(int i, al.a aVar, boolean z) {
            Object obj = null;
            Integer num = z ? 0 : null;
            if (z) {
                obj = a.f21630c;
            }
            return aVar.a(num, obj, -9223372036854775807L, 0L);
        }

        @Override // com.google.android.exoplayer2.al
        public final al.b a(int i, al.b bVar, long j) {
            bVar.a(al.b.f20679a, this.f21632a, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, false, true, null, 0L, -9223372036854775807L, 0L);
            bVar.m = true;
            return bVar;
        }

        @Override // com.google.android.exoplayer2.al
        public final Object a(int i) {
            return a.f21630c;
        }

        @Override // com.google.android.exoplayer2.al
        public final int b() {
            return 1;
        }

        @Override // com.google.android.exoplayer2.al
        public final int c(Object obj) {
            return obj == a.f21630c ? 0 : -1;
        }
    }

    public n(r rVar, boolean z) {
        this.f21627b = rVar;
        this.f21628c = z;
        this.f21626a = a.a(rVar.e());
    }

    private Object b(Object obj) {
        Object obj2 = obj;
        if (this.f21626a.e != null) {
            obj2 = obj;
            if (obj.equals(a.f21630c)) {
                obj2 = this.f21626a.e;
            }
        }
        return obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"unpreparedMaskingMediaPeriod"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(long r8) {
        /*
            r7 = this;
            r0 = r7
            com.google.android.exoplayer2.source.m r0 = r0.f
            r10 = r0
            r0 = r7
            com.google.android.exoplayer2.source.n$a r0 = r0.f21626a
            r1 = r10
            com.google.android.exoplayer2.source.r$a r1 = r1.f21622a
            java.lang.Object r1 = r1.f21637a
            int r0 = r0.c(r1)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto L_0x001c
            return
        L_0x001c:
            r0 = r7
            com.google.android.exoplayer2.source.n$a r0 = r0.f21626a
            r1 = r11
            r2 = r7
            com.google.android.exoplayer2.al$a r2 = r2.e
            r3 = 0
            com.google.android.exoplayer2.al$a r0 = r0.a(r1, r2, r3)
            long r0 = r0.f20678d
            r12 = r0
            r0 = r8
            r14 = r0
            r0 = r12
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x004f
            r0 = r8
            r14 = r0
            r0 = r8
            r1 = r12
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x004f
            r0 = 0
            r1 = r12
            r2 = 1
            long r1 = r1 - r2
            long r0 = java.lang.Math.max(r0, r1)
            r14 = r0
        L_0x004f:
            r0 = r10
            r1 = r14
            r0.f21625d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.n.b(long):void");
    }

    @Override // com.google.android.exoplayer2.source.d
    protected final /* synthetic */ r.a a(Void r4, r.a aVar) {
        Object obj = aVar.f21637a;
        Object obj2 = obj;
        if (this.f21626a.e != null) {
            obj2 = obj;
            if (this.f21626a.e.equals(obj)) {
                obj2 = a.f21630c;
            }
        }
        return aVar.a(obj2);
    }

    @Override // com.google.android.exoplayer2.source.r
    public final void a(p pVar) {
        ((m) pVar).g();
        if (pVar == this.f) {
            this.f = null;
        }
    }

    @Override // com.google.android.exoplayer2.source.d, com.google.android.exoplayer2.source.a
    public final void a(v vVar) {
        super.a(vVar);
        if (!this.f21628c) {
            this.g = true;
            a((n) null, this.f21627b);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.exoplayer2.source.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final /* synthetic */ void a(java.lang.Void r9, com.google.android.exoplayer2.source.r r10, com.google.android.exoplayer2.al r11) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.n.a(java.lang.Object, com.google.android.exoplayer2.source.r, com.google.android.exoplayer2.al):void");
    }

    /* renamed from: b */
    public final m a(r.a aVar, com.google.android.exoplayer2.upstream.b bVar, long j) {
        m mVar = new m(aVar, bVar, j);
        mVar.a(this.f21627b);
        if (this.h) {
            mVar.a(aVar.a(b(aVar.f21637a)));
        } else {
            this.f = mVar;
            if (!this.g) {
                this.g = true;
                a((n) null, this.f21627b);
            }
        }
        return mVar;
    }

    @Override // com.google.android.exoplayer2.source.d, com.google.android.exoplayer2.source.a
    public final void c() {
        this.h = false;
        this.g = false;
        super.c();
    }

    @Override // com.google.android.exoplayer2.source.r
    public final MediaItem e() {
        return this.f21627b.e();
    }

    @Override // com.google.android.exoplayer2.source.d, com.google.android.exoplayer2.source.r
    public final void f() {
    }
}
