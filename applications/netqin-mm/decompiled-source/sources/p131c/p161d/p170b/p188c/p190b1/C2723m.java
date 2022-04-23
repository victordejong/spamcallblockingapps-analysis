package p131c.p161d.p170b.p188c.p190b1;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.io.IOException;
import p131c.p161d.p170b.p188c.C2692b0;
import p131c.p161d.p170b.p188c.C2963q0;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2735s;
import p131c.p161d.p170b.p188c.p198d1.AbstractC2780f;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2897r;
import p131c.p161d.p170b.p188c.p208u0.C3016d;
/* renamed from: c.d.b.c.b1.m */
/* loaded from: classes-dex2jar.jar:c/d/b/c/b1/m.class */
public final class C2723m implements AbstractC2735s, AbstractC2735s.AbstractC2736a {

    /* renamed from: a */
    public final AbstractC2735s f9898a;

    /* renamed from: b */
    public AbstractC2735s.AbstractC2736a f9899b;

    /* renamed from: c */
    public C2724a[] f9900c = new C2724a[0];

    /* renamed from: d */
    public long f9901d;

    /* renamed from: e */
    public long f9902e;

    /* renamed from: f */
    public long f9903f;

    /* renamed from: c.d.b.c.b1.m$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/m$a.class */
    public final class C2724a implements AbstractC2758z {

        /* renamed from: a */
        public final AbstractC2758z f9904a;

        /* renamed from: b */
        public boolean f9905b;

        public C2724a(AbstractC2758z zVar) {
            this.f9904a = zVar;
        }

        @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2758z
        /* renamed from: a */
        public int mo29086a(long j) {
            if (C2723m.this.m29268c()) {
                return -3;
            }
            return this.f9904a.mo29086a(j);
        }

        @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2758z
        /* renamed from: a */
        public int mo29085a(C2692b0 b0Var, C3016d dVar, boolean z) {
            if (C2723m.this.m29268c()) {
                return -3;
            }
            if (this.f9905b) {
                dVar.m28144c(4);
                return -4;
            }
            int a = this.f9904a.mo29085a(b0Var, dVar, z);
            if (a == -5) {
                Format format = b0Var.f9832c;
                C2877e.m28737a(format);
                Format format2 = format;
                if (format2.f21968y == 0 && format2.f21969z == 0) {
                    return -5;
                }
                int i = 0;
                int i2 = C2723m.this.f9902e != 0 ? 0 : format2.f21968y;
                if (C2723m.this.f9903f == Long.MIN_VALUE) {
                    i = format2.f21969z;
                }
                b0Var.f9832c = format2.m18711a(i2, i);
                return -5;
            }
            long j = C2723m.this.f9903f;
            if (j == Long.MIN_VALUE || ((a != -4 || dVar.f10904d < j) && (a != -3 || C2723m.this.mo29192b() != Long.MIN_VALUE))) {
                return a;
            }
            dVar.mo28136a();
            dVar.m28144c(4);
            this.f9905b = true;
            return -4;
        }

        @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2758z
        /* renamed from: a */
        public void mo29087a() throws IOException {
            this.f9904a.mo29087a();
        }

        @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2758z
        /* renamed from: b */
        public boolean mo29084b() {
            return !C2723m.this.m29268c() && this.f9904a.mo29084b();
        }

        /* renamed from: c */
        public void m29267c() {
            this.f9905b = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    public C2723m(AbstractC2735s sVar, boolean z, long j, long j2) {
        this.f9898a = sVar;
        this.f9901d = z ? j : -9223372036854775807;
        this.f9902e = j;
        this.f9903f = j2;
    }

    /* renamed from: a */
    public static boolean m29271a(long j, AbstractC2780f[] fVarArr) {
        if (j == 0) {
            return false;
        }
        for (AbstractC2780f fVar : fVarArr) {
            if (!(fVar == null || C2897r.m28581i(fVar.mo29024d().f21952i))) {
                return true;
            }
        }
        return false;
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: a */
    public long mo29210a() {
        long a = this.f9898a.mo29210a();
        if (a == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        long j = this.f9903f;
        if (j == Long.MIN_VALUE || a < j) {
            return a;
        }
        return Long.MIN_VALUE;
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: a */
    public long mo29205a(long j, C2963q0 q0Var) {
        long j2 = this.f9902e;
        if (j == j2) {
            return j2;
        }
        return this.f9898a.mo29205a(j, m29270b(j, q0Var));
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00be, code lost:
        if (r0 > r0) goto L_0x00c4;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00dd  */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo29194a(p131c.p161d.p170b.p188c.p198d1.AbstractC2780f[] r9, boolean[] r10, p131c.p161d.p170b.p188c.p190b1.AbstractC2758z[] r11, boolean[] r12, long r13) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p190b1.C2723m.mo29194a(c.d.b.c.d1.f[], boolean[], c.d.b.c.b1.z[], boolean[], long):long");
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: a */
    public void mo29204a(long j, boolean z) {
        this.f9898a.mo29204a(j, z);
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: a */
    public void mo29203a(AbstractC2735s.AbstractC2736a aVar, long j) {
        this.f9899b = aVar;
        this.f9898a.mo29203a(this, j);
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s.AbstractC2736a
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo27403a(AbstractC2735s sVar) {
        AbstractC2735s.AbstractC2736a aVar = this.f9899b;
        C2877e.m28737a(aVar);
        aVar.mo27403a((AbstractC2735s) this);
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: a */
    public boolean mo29206a(long j) {
        return this.f9898a.mo29206a(j);
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: b */
    public long mo29192b() {
        long b = this.f9898a.mo29192b();
        if (b == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        long j = this.f9903f;
        if (j == Long.MIN_VALUE || b < j) {
            return b;
        }
        return Long.MIN_VALUE;
    }

    /* renamed from: b */
    public final C2963q0 m29270b(long j, C2963q0 q0Var) {
        long b = C2885h0.m28649b(q0Var.f10672a, 0L, j - this.f9902e);
        long j2 = q0Var.f10673b;
        long j3 = this.f9903f;
        long b2 = C2885h0.m28649b(j2, 0L, j3 == Long.MIN_VALUE ? Long.MAX_VALUE : j3 - j);
        return (b == q0Var.f10672a && b2 == q0Var.f10673b) ? q0Var : new C2963q0(b, b2);
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: b */
    public void mo29190b(long j) {
        this.f9898a.mo29190b(j);
    }

    /* renamed from: b */
    public void mo27404a(AbstractC2735s sVar) {
        AbstractC2735s.AbstractC2736a aVar = this.f9899b;
        C2877e.m28737a(aVar);
        aVar.mo27404a((AbstractC2735s.AbstractC2736a) this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0069, code lost:
        if (r0 <= r0) goto L_0x006c;
     */
    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo29187c(long r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f9901d = r1
            r0 = r5
            c.d.b.c.b1.m$a[] r0 = r0.f9900c
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x0016:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L_0x0033
            r0 = r8
            r1 = r11
            r0 = r0[r1]
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x002d
            r0 = r12
            r0.m29267c()
        L_0x002d:
            int r11 = r11 + 1
            goto L_0x0016
        L_0x0033:
            r0 = r5
            c.d.b.c.b1.s r0 = r0.f9898a
            r1 = r6
            long r0 = r0.mo29187c(r1)
            r13 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x006c
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r5
            long r1 = r1.f9902e
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x006f
            r0 = r5
            long r0 = r0.f9903f
            r6 = r0
            r0 = r6
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x006c
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x006f
        L_0x006c:
            r0 = 1
            r15 = r0
        L_0x006f:
            r0 = r15
            p131c.p161d.p170b.p188c.p203g1.C2877e.m28731b(r0)
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p190b1.C2723m.mo29187c(long):long");
    }

    /* renamed from: c */
    public boolean m29268c() {
        return this.f9901d != -9223372036854775807L;
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: d */
    public void mo29185d() throws IOException {
        this.f9898a.mo29185d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r6v2, types: [long] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo29181f() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.m29268c()
            if (r0 == 0) goto L_0x0024
            r0 = r5
            long r0 = r0.f9901d
            r6 = r0
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f9901d = r1
            r0 = r5
            long r0 = r0.mo29181f()
            r8 = r0
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0022
            r0 = r8
            r6 = r0
        L_0x0022:
            r0 = r6
            return r0
        L_0x0024:
            r0 = r5
            c.d.b.c.b1.s r0 = r0.f9898a
            long r0 = r0.mo29181f()
            r6 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003a
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            return r0
        L_0x003a:
            r0 = r5
            long r0 = r0.f9902e
            r8 = r0
            r0 = 1
            r10 = r0
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x004e
            r0 = 1
            r11 = r0
            goto L_0x0051
        L_0x004e:
            r0 = 0
            r11 = r0
        L_0x0051:
            r0 = r11
            p131c.p161d.p170b.p188c.p203g1.C2877e.m28731b(r0)
            r0 = r5
            long r0 = r0.f9903f
            r8 = r0
            r0 = r10
            r11 = r0
            r0 = r8
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0077
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0074
            r0 = r10
            r11 = r0
            goto L_0x0077
        L_0x0074:
            r0 = 0
            r11 = r0
        L_0x0077:
            r0 = r11
            p131c.p161d.p170b.p188c.p203g1.C2877e.m28731b(r0)
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p190b1.C2723m.mo29181f():long");
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: g */
    public TrackGroupArray mo29179g() {
        return this.f9898a.mo29179g();
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: n */
    public boolean mo29172n() {
        return this.f9898a.mo29172n();
    }
}
