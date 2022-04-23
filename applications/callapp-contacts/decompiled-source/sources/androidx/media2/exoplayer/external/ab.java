package androidx.media2.exoplayer.external;

import android.util.Pair;
import androidx.media2.exoplayer.external.al;
import androidx.media2.exoplayer.external.source.s;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.util.a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ab.class */
final class ab {

    /* renamed from: b  reason: collision with root package name */
    int f2802b;

    /* renamed from: c  reason: collision with root package name */
    boolean f2803c;

    /* renamed from: d  reason: collision with root package name */
    z f2804d;
    z e;
    z f;
    int g;
    Object h;
    private long k;
    private long l;
    private final al.a i = new al.a();
    private final al.b j = new al.b();

    /* renamed from: a  reason: collision with root package name */
    al f2801a = al.f2829a;

    private long a(Object obj) {
        int a2;
        int i = this.f2801a.a(obj, this.i).f2832c;
        Object obj2 = this.h;
        if (!(obj2 == null || (a2 = this.f2801a.a(obj2)) == -1 || this.f2801a.a(a2, this.i, false).f2832c != i)) {
            return this.l;
        }
        for (z zVar = this.f2804d; zVar != null; zVar = zVar.g) {
            if (zVar.f4259b.equals(obj)) {
                return zVar.f.f2797a.f3751d;
            }
        }
        for (z zVar2 = this.f2804d; zVar2 != null; zVar2 = zVar2.g) {
            int a3 = this.f2801a.a(zVar2.f4259b);
            if (a3 != -1 && this.f2801a.a(a3, this.i, false).f2832c == i) {
                return zVar2.f.f2797a.f3751d;
            }
        }
        long j = this.k;
        this.k = 1 + j;
        return j;
    }

    private aa a(Object obj, int i, int i2, long j, long j2) {
        t.a aVar = new t.a(obj, i, i2, j2);
        return new aa(aVar, i2 == this.i.b(i) ? this.i.f.e : 0L, j, -9223372036854775807L, this.f2801a.a(aVar.f3748a, this.i).c(aVar.f3749b, aVar.f3750c), false, false);
    }

    private t.a a(Object obj, long j, long j2) {
        this.f2801a.a(obj, this.i);
        int a2 = this.i.a(j);
        return a2 == -1 ? new t.a(obj, j2, this.i.b(j)) : new t.a(obj, a2, this.i.b(a2), j2);
    }

    private static boolean a(t.a aVar) {
        return !aVar.a() && aVar.e == -1;
    }

    private boolean a(t.a aVar, boolean z) {
        int a2 = this.f2801a.a(aVar.f3748a);
        return !this.f2801a.a(this.f2801a.a(a2, this.i, false).f2832c, this.j, 0L).f && this.f2801a.b(a2, this.i, this.j, this.f2802b, this.f2803c) && z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r23v0, types: [long] */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private androidx.media2.exoplayer.external.aa b(java.lang.Object r15, long r16, long r18) {
        /*
            r14 = this;
            r0 = r14
            androidx.media2.exoplayer.external.al$a r0 = r0.i
            r1 = r16
            int r0 = r0.b(r1)
            r20 = r0
            androidx.media2.exoplayer.external.source.t$a r0 = new androidx.media2.exoplayer.external.source.t$a
            r1 = r0
            r2 = r15
            r3 = r18
            r4 = r20
            r1.<init>(r2, r3, r4)
            r15 = r0
            r0 = r15
            boolean r0 = a(r0)
            r21 = r0
            r0 = r14
            r1 = r15
            r2 = r21
            boolean r0 = r0.a(r1, r2)
            r22 = r0
            r0 = r20
            r1 = -1
            if (r0 == r1) goto L_0x003a
            r0 = r14
            androidx.media2.exoplayer.external.al$a r0 = r0.i
            r1 = r20
            long r0 = r0.a(r1)
            r18 = r0
            goto L_0x003f
        L_0x003a:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r18 = r0
        L_0x003f:
            r0 = r18
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x005b
            r0 = r18
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0054
            goto L_0x005b
        L_0x0054:
            r0 = r18
            r23 = r0
            goto L_0x0064
        L_0x005b:
            r0 = r14
            androidx.media2.exoplayer.external.al$a r0 = r0.i
            long r0 = r0.f2833d
            r23 = r0
        L_0x0064:
            androidx.media2.exoplayer.external.aa r0 = new androidx.media2.exoplayer.external.aa
            r1 = r0
            r2 = r15
            r3 = r16
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = r18
            r6 = r23
            r7 = r21
            r8 = r22
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.ab.b(java.lang.Object, long, long):androidx.media2.exoplayer.external.aa");
    }

    public final aa a(aa aaVar) {
        t.a aVar = aaVar.f2797a;
        boolean a2 = a(aVar);
        boolean a3 = a(aVar, a2);
        this.f2801a.a(aaVar.f2797a.f3748a, this.i);
        return new aa(aVar, aaVar.f2798b, aaVar.f2799c, aaVar.f2800d, aVar.a() ? this.i.c(aVar.f3749b, aVar.f3750c) : (aaVar.f2800d == -9223372036854775807L || aaVar.f2800d == Long.MIN_VALUE) ? this.i.f2833d : aaVar.f2800d, a2, a3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final aa a(t.a aVar, long j, long j2) {
        this.f2801a.a(aVar.f3748a, this.i);
        if (!aVar.a()) {
            return b(aVar.f3748a, j2, aVar.f3751d);
        }
        if (!this.i.b(aVar.f3749b, aVar.f3750c)) {
            return null;
        }
        return a(aVar.f3748a, aVar.f3749b, aVar.f3750c, j, aVar.f3751d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final aa a(z zVar, long j) {
        long j2;
        aa aaVar = zVar.f;
        long j3 = (zVar.j + aaVar.e) - j;
        long j4 = 0;
        if (aaVar.f) {
            int a2 = this.f2801a.a(this.f2801a.a(aaVar.f2797a.f3748a), this.i, this.j, this.f2802b, this.f2803c);
            if (a2 == -1) {
                return null;
            }
            int i = this.f2801a.a(a2, this.i, true).f2832c;
            Object obj = this.i.f2831b;
            long j5 = aaVar.f2797a.f3751d;
            if (this.f2801a.a(i, this.j, 0L).g == a2) {
                Pair<Object, Long> a3 = this.f2801a.a(this.j, this.i, i, -9223372036854775807L, Math.max(0L, j3));
                if (a3 == null) {
                    return null;
                }
                Object obj2 = a3.first;
                j2 = ((Long) a3.second).longValue();
                z zVar2 = zVar.g;
                if (zVar2 == null || !zVar2.f4259b.equals(obj2)) {
                    j5 = this.k;
                    this.k = 1 + j5;
                } else {
                    j5 = zVar2.f.f2797a.f3751d;
                }
                j4 = -9223372036854775807L;
                obj = obj2;
            } else {
                j2 = 0;
            }
            return a(a(obj, j2, j5), j4, j2);
        }
        t.a aVar = aaVar.f2797a;
        this.f2801a.a(aVar.f3748a, this.i);
        if (aVar.a()) {
            int i2 = aVar.f3749b;
            int c2 = this.i.c(i2);
            if (c2 == -1) {
                return null;
            }
            int a4 = this.i.a(i2, aVar.f3750c);
            if (a4 >= c2) {
                long j6 = aaVar.f2799c;
                if (j6 == -9223372036854775807L) {
                    al alVar = this.f2801a;
                    al.b bVar = this.j;
                    al.a aVar2 = this.i;
                    Pair<Object, Long> a5 = alVar.a(bVar, aVar2, aVar2.f2832c, -9223372036854775807L, Math.max(0L, j3));
                    if (a5 == null) {
                        return null;
                    }
                    j6 = ((Long) a5.second).longValue();
                }
                return b(aVar.f3748a, j6, aVar.f3751d);
            } else if (!this.i.b(i2, a4)) {
                return null;
            } else {
                return a(aVar.f3748a, i2, a4, aaVar.f2799c, aVar.f3751d);
            }
        } else {
            int a6 = this.i.a(aaVar.f2800d);
            if (a6 == -1) {
                return b(aVar.f3748a, aaVar.e, aVar.f3751d);
            }
            int b2 = this.i.b(a6);
            if (!this.i.b(a6, b2)) {
                return null;
            }
            return a(aVar.f3748a, a6, b2, aaVar.e, aVar.f3751d);
        }
    }

    public final t.a a(Object obj, long j) {
        return a(obj, j, a(obj));
    }

    public final z a() {
        z zVar = this.f2804d;
        if (zVar == null) {
            return null;
        }
        if (zVar == this.e) {
            this.e = zVar.g;
        }
        this.f2804d.e();
        int i = this.g - 1;
        this.g = i;
        if (i == 0) {
            this.f = null;
            this.h = this.f2804d.f4259b;
            this.l = this.f2804d.f.f2797a.f3751d;
        }
        z zVar2 = this.f2804d.g;
        this.f2804d = zVar2;
        return zVar2;
    }

    public final void a(long j) {
        z zVar = this.f;
        if (zVar != null) {
            zVar.a(j);
        }
    }

    public final void a(boolean z) {
        z zVar = this.f2804d;
        if (zVar != null) {
            this.h = z ? zVar.f4259b : null;
            this.l = zVar.f.f2797a.f3751d;
            a(zVar);
            zVar.e();
        } else if (!z) {
            this.h = null;
        }
        this.f2804d = null;
        this.f = null;
        this.e = null;
        this.g = 0;
    }

    public final boolean a(s sVar) {
        z zVar = this.f;
        return zVar != null && zVar.f4258a == sVar;
    }

    public final boolean a(z zVar) {
        boolean z = false;
        a.b(zVar != null);
        this.f = zVar;
        while (zVar.g != null) {
            zVar = zVar.g;
            if (zVar == this.e) {
                this.e = this.f2804d;
                z = true;
            }
            zVar.e();
            this.g--;
        }
        this.f.a((z) null);
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b() {
        z zVar = this.f2804d;
        if (zVar == null) {
            return true;
        }
        int a2 = this.f2801a.a(zVar.f4259b);
        while (true) {
            a2 = this.f2801a.a(a2, this.i, this.j, this.f2802b, this.f2803c);
            while (zVar.g != null && !zVar.f.f) {
                zVar = zVar.g;
            }
            z zVar2 = zVar.g;
            if (a2 == -1 || zVar2 == null || this.f2801a.a(zVar2.f4259b) != a2) {
                break;
            }
            zVar = zVar2;
        }
        boolean a3 = a(zVar);
        zVar.f = a(zVar.f);
        return !a3;
    }
}
