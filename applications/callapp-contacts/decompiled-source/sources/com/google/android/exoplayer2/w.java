package com.google.android.exoplayer2;

import android.os.Handler;
import com.google.android.exoplayer2.a.a;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.source.r;
import com.google.common.collect.v;
import java.util.Collection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/w.class */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    int f22423a;

    /* renamed from: b  reason: collision with root package name */
    boolean f22424b;

    /* renamed from: c  reason: collision with root package name */
    u f22425c;

    /* renamed from: d  reason: collision with root package name */
    u f22426d;
    u e;
    int f;
    Object g;
    private final al.a h = new al.a();
    private final al.b i = new al.b();
    private final a j;
    private final Handler k;
    private long l;
    private long m;

    public w(a aVar, Handler handler) {
        this.j = aVar;
        this.k = handler;
    }

    private long a(al alVar, Object obj) {
        int c2;
        int i = alVar.a(obj, this.h).f20677c;
        Object obj2 = this.g;
        if (!(obj2 == null || (c2 = alVar.c(obj2)) == -1 || alVar.a(c2, this.h, false).f20677c != i)) {
            return this.m;
        }
        for (u uVar = this.f22425c; uVar != null; uVar = uVar.h) {
            if (uVar.f21951b.equals(obj)) {
                return uVar.f.f22354a.f21640d;
            }
        }
        for (u uVar2 = this.f22425c; uVar2 != null; uVar2 = uVar2.h) {
            int c3 = alVar.c(uVar2.f21951b);
            if (c3 != -1 && alVar.a(c3, this.h, false).f20677c == i) {
                return uVar2.f.f22354a.f21640d;
            }
        }
        long j = this.l;
        this.l = 1 + j;
        if (this.f22425c == null) {
            this.g = obj;
            this.m = j;
        }
        return j;
    }

    private static r.a a(al alVar, Object obj, long j, long j2, al.a aVar) {
        alVar.a(obj, aVar);
        int a2 = aVar.a(j);
        return a2 == -1 ? new r.a(obj, j2, aVar.b(j)) : new r.a(obj, a2, aVar.b(a2), j2);
    }

    private v a(al alVar, Object obj, int i, int i2, long j, long j2) {
        r.a aVar = new r.a(obj, i, i2, j2);
        long b2 = alVar.a(aVar.f21637a, this.h).b(aVar.f21638b, aVar.f21639c);
        long j3 = i2 == this.h.b(i) ? this.h.f.f : 0L;
        if (b2 != -9223372036854775807L && j3 >= b2) {
            j3 = Math.max(0L, b2 - 1);
        }
        return new v(aVar, j3, j, -9223372036854775807L, b2, false, false, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v0, types: [long] */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r22v1, types: [long] */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r30v0 */
    /* JADX WARN: Type inference failed for: r30v1, types: [long] */
    /* JADX WARN: Type inference failed for: r30v2 */
    /* JADX WARN: Type inference failed for: r30v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.android.exoplayer2.v a(com.google.android.exoplayer2.al r16, java.lang.Object r17, long r18, long r20, long r22) {
        /*
            r15 = this;
            r0 = r18
            r24 = r0
            r0 = r16
            r1 = r17
            r2 = r15
            com.google.android.exoplayer2.al$a r2 = r2.h
            com.google.android.exoplayer2.al$a r0 = r0.a(r1, r2)
            r0 = r15
            com.google.android.exoplayer2.al$a r0 = r0.h
            r1 = r24
            int r0 = r0.b(r1)
            r26 = r0
            com.google.android.exoplayer2.source.r$a r0 = new com.google.android.exoplayer2.source.r$a
            r1 = r0
            r2 = r17
            r3 = r22
            r4 = r26
            r1.<init>(r2, r3, r4)
            r17 = r0
            r0 = r17
            boolean r0 = a(r0)
            r27 = r0
            r0 = r15
            r1 = r16
            r2 = r17
            boolean r0 = r0.a(r1, r2)
            r28 = r0
            r0 = r15
            r1 = r16
            r2 = r17
            r3 = r27
            boolean r0 = r0.a(r1, r2, r3)
            r29 = r0
            r0 = r26
            r1 = -1
            if (r0 == r1) goto L_0x0050
            r0 = r15
            com.google.android.exoplayer2.al$a r0 = r0.h
            r1 = r26
            long r0 = r0.a(r1)
            r18 = r0
            goto L_0x0054
        L_0x0050:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r18 = r0
        L_0x0054:
            r0 = r18
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x006d
            r0 = r18
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0067
            goto L_0x006d
        L_0x0067:
            r0 = r18
            r22 = r0
            goto L_0x0076
        L_0x006d:
            r0 = r15
            com.google.android.exoplayer2.al$a r0 = r0.h
            long r0 = r0.f20678d
            r22 = r0
        L_0x0076:
            r0 = r24
            r30 = r0
            r0 = r22
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0099
            r0 = r24
            r30 = r0
            r0 = r24
            r1 = r22
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0099
            r0 = 0
            r1 = r22
            r2 = 1
            long r1 = r1 - r2
            long r0 = java.lang.Math.max(r0, r1)
            r30 = r0
        L_0x0099:
            com.google.android.exoplayer2.v r0 = new com.google.android.exoplayer2.v
            r1 = r0
            r2 = r17
            r3 = r30
            r4 = r20
            r5 = r18
            r6 = r22
            r7 = r27
            r8 = r28
            r9 = r29
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.w.a(com.google.android.exoplayer2.al, java.lang.Object, long, long, long):com.google.android.exoplayer2.v");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(v.a aVar, r.a aVar2) {
        a aVar3 = this.j;
        v a2 = aVar.a();
        a.C0419a aVar4 = aVar3.f20633a;
        ac acVar = (ac) com.google.android.exoplayer2.util.a.b(aVar3.f20634b);
        aVar4.f20638b = v.a((Collection) a2);
        if (!a2.isEmpty()) {
            aVar4.f20640d = (r.a) a2.get(0);
            aVar4.e = (r.a) com.google.android.exoplayer2.util.a.b(aVar2);
        }
        if (aVar4.f20639c == null) {
            aVar4.f20639c = a.C0419a.a(acVar, aVar4.f20638b, aVar4.f20640d, aVar4.f20637a);
        }
        aVar4.a(acVar.K());
    }

    private boolean a(al alVar, r.a aVar) {
        if (!a(aVar)) {
            return false;
        }
        return alVar.a(alVar.a(aVar.f21637a, this.h).f20677c, this.i, 0L).o == alVar.c(aVar.f21637a);
    }

    private boolean a(al alVar, r.a aVar, boolean z) {
        int c2 = alVar.c(aVar.f21637a);
        return !alVar.a(alVar.a(c2, this.h, false).f20677c, this.i, 0L).j && alVar.b(c2, this.h, this.i, this.f22423a, this.f22424b) && z;
    }

    private static boolean a(r.a aVar) {
        return !aVar.a() && aVar.e == -1;
    }

    public final r.a a(al alVar, Object obj, long j) {
        return a(alVar, obj, j, a(alVar, obj), this.h);
    }

    public final u a() {
        u uVar = this.f22425c;
        if (uVar == null) {
            return null;
        }
        if (uVar == this.f22426d) {
            this.f22426d = uVar.h;
        }
        this.f22425c.e();
        int i = this.f - 1;
        this.f = i;
        if (i == 0) {
            this.e = null;
            this.g = this.f22425c.f21951b;
            this.m = this.f22425c.f.f22354a.f21640d;
        }
        this.f22425c = this.f22425c.h;
        c();
        return this.f22425c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final v a(al alVar, r.a aVar, long j, long j2) {
        alVar.a(aVar.f21637a, this.h);
        return aVar.a() ? a(alVar, aVar.f21637a, aVar.f21638b, aVar.f21639c, j, aVar.f21640d) : a(alVar, aVar.f21637a, j2, j, aVar.f21640d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.android.exoplayer2.w] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2, types: [long] */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.v a(com.google.android.exoplayer2.al r12, com.google.android.exoplayer2.u r13, long r14) {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.w.a(com.google.android.exoplayer2.al, com.google.android.exoplayer2.u, long):com.google.android.exoplayer2.v");
    }

    public final v a(al alVar, v vVar) {
        r.a aVar = vVar.f22354a;
        boolean a2 = a(aVar);
        boolean a3 = a(alVar, aVar);
        boolean a4 = a(alVar, aVar, a2);
        alVar.a(vVar.f22354a.f21637a, this.h);
        return new v(aVar, vVar.f22355b, vVar.f22356c, vVar.f22357d, aVar.a() ? this.h.b(aVar.f21638b, aVar.f21639c) : (vVar.f22357d == -9223372036854775807L || vVar.f22357d == Long.MIN_VALUE) ? this.h.f20678d : vVar.f22357d, a2, a3, a4);
    }

    public final void a(long j) {
        u uVar = this.e;
        if (uVar != null) {
            uVar.a(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(al alVar) {
        u uVar = this.f22425c;
        if (uVar == null) {
            return true;
        }
        int c2 = alVar.c(uVar.f21951b);
        while (true) {
            c2 = alVar.a(c2, this.h, this.i, this.f22423a, this.f22424b);
            while (uVar.h != null && !uVar.f.f) {
                uVar = uVar.h;
            }
            u uVar2 = uVar.h;
            if (c2 == -1 || uVar2 == null || alVar.c(uVar2.f21951b) != c2) {
                break;
            }
            uVar = uVar2;
        }
        boolean a2 = a(uVar);
        uVar.f = a(alVar, uVar.f);
        return !a2;
    }

    public final boolean a(p pVar) {
        u uVar = this.e;
        return uVar != null && uVar.f21950a == pVar;
    }

    public final boolean a(u uVar) {
        boolean z = false;
        com.google.android.exoplayer2.util.a.b(uVar != null);
        if (uVar.equals(this.e)) {
            return false;
        }
        this.e = uVar;
        while (uVar.h != null) {
            uVar = uVar.h;
            if (uVar == this.f22426d) {
                this.f22426d = this.f22425c;
                z = true;
            }
            uVar.e();
            this.f--;
        }
        this.e.a((u) null);
        c();
        return z;
    }

    public final void b() {
        if (this.f != 0) {
            u uVar = (u) com.google.android.exoplayer2.util.a.a(this.f22425c);
            this.g = uVar.f21951b;
            this.m = uVar.f.f22354a.f21640d;
            while (uVar != null) {
                uVar.e();
                uVar = uVar.h;
            }
            this.f22425c = null;
            this.e = null;
            this.f22426d = null;
            this.f = 0;
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        if (this.j != null) {
            final v.a i = v.i();
            for (u uVar = this.f22425c; uVar != null; uVar = uVar.h) {
                i.b(uVar.f.f22354a);
            }
            u uVar2 = this.f22426d;
            final r.a aVar = uVar2 == null ? null : uVar2.f.f22354a;
            this.k.post(new Runnable() { // from class: com.google.android.exoplayer2._$$Lambda$w$VPEmLSD6CVHb_HerMpsUb0yzRig
                @Override // java.lang.Runnable
                public final void run() {
                    w.this.a(i, aVar);
                }
            });
        }
    }
}
