package p131c.p161d.p170b.p188c.p210w0.p217x;

import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2881f0;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3029a;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
/* renamed from: c.d.b.c.w0.x.x */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/x.class */
public final class C3182x extends AbstractC3029a {

    /* renamed from: c.d.b.c.w0.x.x$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/x$b.class */
    public static final class C3184b implements AbstractC3029a.AbstractC3036g {

        /* renamed from: a */
        public final C2881f0 f11750a;

        /* renamed from: b */
        public final C2904v f11751b;

        public C3184b(C2881f0 f0Var) {
            this.f11750a = f0Var;
            this.f11751b = new C2904v();
        }

        /* renamed from: a */
        public static void m27576a(C2904v vVar) {
            int b;
            int d = vVar.m28541d();
            if (vVar.m28552a() < 10) {
                vVar.m28538e(d);
                return;
            }
            vVar.m28536f(9);
            int r = vVar.m28524r() & 7;
            if (vVar.m28552a() < r) {
                vVar.m28538e(d);
                return;
            }
            vVar.m28536f(r);
            if (vVar.m28552a() < 4) {
                vVar.m28538e(d);
                return;
            }
            if (C3182x.m27578b(vVar.f10530a, vVar.m28543c()) == 443) {
                vVar.m28536f(4);
                int x = vVar.m28518x();
                if (vVar.m28552a() < x) {
                    vVar.m28538e(d);
                    return;
                }
                vVar.m28536f(x);
            }
            while (vVar.m28552a() >= 4 && (b = C3182x.m27578b(vVar.f10530a, vVar.m28543c())) != 442 && b != 441 && (b >>> 8) == 1) {
                vVar.m28536f(4);
                if (vVar.m28552a() < 2) {
                    vVar.m28538e(d);
                    return;
                }
                vVar.m28538e(Math.min(vVar.m28541d(), vVar.m28543c() + vVar.m28518x()));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v1, types: [long] */
        /* JADX WARN: Type inference failed for: r14v2 */
        /* JADX WARN: Type inference failed for: r14v3 */
        /* JADX WARN: Type inference failed for: r20v0 */
        /* JADX WARN: Type inference failed for: r20v3 */
        /* JADX WARN: Unknown variable types count: 1 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final p131c.p161d.p170b.p188c.p210w0.AbstractC3029a.C3035f m27575a(p131c.p161d.p170b.p188c.p203g1.C2904v r8, long r9, long r11) {
            /*
                r7 = this;
                r0 = -1
                r13 = r0
                r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                r14 = r0
                r0 = -1
                r16 = r0
            L_0x000b:
                r0 = r8
                int r0 = r0.m28552a()
                r1 = 4
                if (r0 < r1) goto L_0x00a7
                r0 = r8
                byte[] r0 = r0.f10530a
                r1 = r8
                int r1 = r1.m28543c()
                int r0 = p131c.p161d.p170b.p188c.p210w0.p217x.C3182x.m27579a(r0, r1)
                r1 = 442(0x1ba, float:6.2E-43)
                if (r0 == r1) goto L_0x002c
                r0 = r8
                r1 = 1
                r0.m28536f(r1)
                goto L_0x000b
            L_0x002c:
                r0 = r8
                r1 = 4
                r0.m28536f(r1)
                r0 = r8
                long r0 = p131c.p161d.p170b.p188c.p210w0.p217x.C3185y.m27562c(r0)
                r17 = r0
                r0 = r16
                r19 = r0
                r0 = r14
                r20 = r0
                r0 = r17
                r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0092
                r0 = r7
                c.d.b.c.g1.f0 r0 = r0.f11750a
                r1 = r17
                long r0 = r0.m28711b(r1)
                r20 = r0
                r0 = r20
                r1 = r9
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0075
                r0 = r14
                r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x006b
                r0 = r20
                r1 = r11
                c.d.b.c.w0.a$f r0 = p131c.p161d.p170b.p188c.p210w0.AbstractC3029a.C3035f.m28074a(r0, r1)
                return r0
            L_0x006b:
                r0 = r11
                r1 = r16
                long r1 = (long) r1
                long r0 = r0 + r1
                c.d.b.c.w0.a$f r0 = p131c.p161d.p170b.p188c.p210w0.AbstractC3029a.C3035f.m28075a(r0)
                return r0
            L_0x0075:
                r0 = 100000(0x186a0, double:4.94066E-319)
                r1 = r20
                long r0 = r0 + r1
                r1 = r9
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x008c
                r0 = r11
                r1 = r8
                int r1 = r1.m28543c()
                long r1 = (long) r1
                long r0 = r0 + r1
                c.d.b.c.w0.a$f r0 = p131c.p161d.p170b.p188c.p210w0.AbstractC3029a.C3035f.m28075a(r0)
                return r0
            L_0x008c:
                r0 = r8
                int r0 = r0.m28543c()
                r19 = r0
            L_0x0092:
                r0 = r8
                m27576a(r0)
                r0 = r8
                int r0 = r0.m28543c()
                r13 = r0
                r0 = r19
                r16 = r0
                r0 = r20
                r14 = r0
                goto L_0x000b
            L_0x00a7:
                r0 = r14
                r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x00bc
                r0 = r14
                r1 = r11
                r2 = r13
                long r2 = (long) r2
                long r1 = r1 + r2
                c.d.b.c.w0.a$f r0 = p131c.p161d.p170b.p188c.p210w0.AbstractC3029a.C3035f.m28072b(r0, r1)
                return r0
            L_0x00bc:
                c.d.b.c.w0.a$f r0 = p131c.p161d.p170b.p188c.p210w0.AbstractC3029a.C3035f.f10938d
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p217x.C3182x.C3184b.m27575a(c.d.b.c.g1.v, long, long):c.d.b.c.w0.a$f");
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3029a.AbstractC3036g
        /* renamed from: a */
        public AbstractC3029a.C3035f mo27574a(AbstractC3043h hVar, long j, AbstractC3029a.C3032c cVar) throws IOException, InterruptedException {
            long position = hVar.getPosition();
            int min = (int) Math.min(20000L, hVar.mo28058a() - position);
            this.f11751b.m28542c(min);
            hVar.mo28055a(this.f11751b.f10530a, 0, min);
            return m27575a(this.f11751b, j, position);
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3029a.AbstractC3036g
        /* renamed from: a */
        public void mo27577a() {
            this.f11751b.m28548a(C2885h0.f10482f);
        }
    }

    public C3182x(C2881f0 f0Var, long j, long j2) {
        super(new AbstractC3029a.C3031b(), new C3184b(f0Var), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    /* renamed from: b */
    public static int m27578b(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
