package p012b.p076s.p078b.p079a.p102w0;
/* renamed from: b.s.b.a.w0.f */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/f.class */
public class C1555f implements AbstractC1573i0 {

    /* renamed from: a */
    public final AbstractC1573i0[] f6360a;

    public C1555f(AbstractC1573i0[] i0VarArr) {
        this.f6360a = i0VarArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v5, types: [long] */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo32521a() {
        /*
            r5 = this;
            r0 = r5
            b.s.b.a.w0.i0[] r0 = r0.f6360a
            r6 = r0
            r0 = r6
            int r0 = r0.length
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r0
        L_0x000f:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x003e
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            long r0 = r0.mo32521a()
            r11 = r0
            r0 = r9
            r13 = r0
            r0 = r11
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0034
            r0 = r9
            r1 = r11
            long r0 = java.lang.Math.min(r0, r1)
            r13 = r0
        L_0x0034:
            int r8 = r8 + 1
            r0 = r13
            r9 = r0
            goto L_0x000f
        L_0x003e:
            r0 = r9
            r13 = r0
            r0 = r9
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0050
            r0 = -9223372036854775808
            r13 = r0
        L_0x0050:
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.C1555f.mo32521a():long");
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: a */
    public boolean mo32520a(long j) {
        AbstractC1573i0[] i0VarArr;
        boolean z = false;
        while (true) {
            long a = mo32521a();
            if (a == Long.MIN_VALUE) {
                break;
            }
            boolean z2 = false;
            for (AbstractC1573i0 i0Var : this.f6360a) {
                long a2 = i0Var.mo32521a();
                boolean z3 = a2 != Long.MIN_VALUE && a2 <= j;
                if (a2 != a) {
                    z2 = z2;
                    if (!z3) {
                    }
                }
                z2 |= i0Var.mo32520a(j);
            }
            boolean z4 = z | z2;
            z = z4;
            if (!z2) {
                z = z4;
                break;
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v5, types: [long] */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo32515b() {
        /*
            r5 = this;
            r0 = r5
            b.s.b.a.w0.i0[] r0 = r0.f6360a
            r6 = r0
            r0 = r6
            int r0 = r0.length
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r0
        L_0x000f:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x003e
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            long r0 = r0.mo32515b()
            r11 = r0
            r0 = r9
            r13 = r0
            r0 = r11
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0034
            r0 = r9
            r1 = r11
            long r0 = java.lang.Math.min(r0, r1)
            r13 = r0
        L_0x0034:
            int r8 = r8 + 1
            r0 = r13
            r9 = r0
            goto L_0x000f
        L_0x003e:
            r0 = r9
            r13 = r0
            r0 = r9
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0050
            r0 = -9223372036854775808
            r13 = r0
        L_0x0050:
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.C1555f.mo32515b():long");
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: b */
    public final void mo32514b(long j) {
        for (AbstractC1573i0 i0Var : this.f6360a) {
            i0Var.mo32514b(j);
        }
    }
}
