package p131c.p161d.p170b.p188c.p210w0.p217x;

import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3042g;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
import p131c.p161d.p170b.p188c.p210w0.C3049n;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.f */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/f.class */
public final class C3148f implements AbstractC3042g {

    /* renamed from: a */
    public final C3150g f11467a = new C3150g();

    /* renamed from: b */
    public final C2904v f11468b = new C2904v(2786);

    /* renamed from: c */
    public boolean f11469c;

    static {
        C3137a aVar = C3137a.f11448a;
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC3042g[] m27722b() {
        return new AbstractC3042g[]{new C3148f()};
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public int mo27551a(AbstractC3043h hVar, C3049n nVar) throws IOException, InterruptedException {
        int read = hVar.read(this.f11468b.f10530a, 0, 2786);
        if (read == -1) {
            return -1;
        }
        this.f11468b.m28538e(0);
        this.f11468b.m28540d(read);
        if (!this.f11469c) {
            this.f11467a.mo27598a(0L, 4);
            this.f11469c = true;
        }
        this.f11467a.mo27597a(this.f11468b);
        return 0;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27554a() {
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27553a(long j, long j2) {
        this.f11469c = false;
        this.f11467a.mo27599a();
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27550a(AbstractC3044i iVar) {
        this.f11467a.mo27596a(iVar, new AbstractC3155h0.C3159d(0, 1));
        iVar.mo28046e();
        iVar.mo28047a(new AbstractC3050o.C3052b(-9223372036854775807L));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0066, code lost:
        if ((r9 - r8) < 8192) goto L_0x006b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0069, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0056, code lost:
        r6.mo28050c();
        r9 = r9 + 1;
     */
    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo27552a(p131c.p161d.p170b.p188c.p210w0.AbstractC3043h r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r5 = this;
            c.d.b.c.g1.v r0 = new c.d.b.c.g1.v
            r1 = r0
            r2 = 10
            r1.<init>(r2)
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x000c:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f10530a
            r2 = 0
            r3 = 10
            r0.mo28055a(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.m28538e(r1)
            r0 = r7
            int r0 = r0.m28521u()
            r1 = 4801587(0x494433, float:6.728456E-39)
            if (r0 == r1) goto L_0x00a0
            r0 = r6
            r0.mo28050c()
            r0 = r6
            r1 = r8
            r0.mo28057a(r1)
            r0 = r8
            r9 = r0
        L_0x0037:
            r0 = 0
            r10 = r0
        L_0x003a:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f10530a
            r2 = 0
            r3 = 6
            r0.mo28055a(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.m28538e(r1)
            r0 = r7
            int r0 = r0.m28518x()
            r1 = 2935(0xb77, float:4.113E-42)
            if (r0 == r1) goto L_0x0076
            r0 = r6
            r0.mo28050c()
            int r9 = r9 + 1
            r0 = r9
            r1 = r8
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L_0x006b
            r0 = 0
            return r0
        L_0x006b:
            r0 = r6
            r1 = r9
            r0.mo28057a(r1)
            goto L_0x0037
        L_0x0076:
            int r10 = r10 + 1
            r0 = r10
            r1 = 4
            if (r0 < r1) goto L_0x0081
            r0 = 1
            return r0
        L_0x0081:
            r0 = r7
            byte[] r0 = r0.f10530a
            int r0 = p131c.p161d.p170b.p188c.p206s0.C2976g.m28310a(r0)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto L_0x0092
            r0 = 0
            return r0
        L_0x0092:
            r0 = r6
            r1 = r11
            r2 = 6
            int r1 = r1 - r2
            r0.mo28057a(r1)
            goto L_0x003a
        L_0x00a0:
            r0 = r7
            r1 = 3
            r0.m28536f(r1)
            r0 = r7
            int r0 = r0.m28525q()
            r9 = r0
            r0 = r8
            r1 = r9
            r2 = 10
            int r1 = r1 + r2
            int r0 = r0 + r1
            r8 = r0
            r0 = r6
            r1 = r9
            r0.mo28057a(r1)
            goto L_0x000c
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p217x.C3148f.mo27552a(c.d.b.c.w0.h):boolean");
    }
}
