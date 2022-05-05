package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.g.p2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/p2.class */
public final class C7667p2<T> implements AbstractC7554b3<T> {

    /* renamed from: a */
    public final AbstractC7627k2 f18011a;

    /* renamed from: b */
    public final AbstractC7696t3<?, ?> f18012b;

    /* renamed from: c */
    public final boolean f18013c;

    /* renamed from: d */
    public final AbstractC7686s0<?> f18014d;

    public C7667p2(AbstractC7696t3<?, ?> t3Var, AbstractC7686s0<?> s0Var, AbstractC7627k2 k2Var) {
        this.f18012b = t3Var;
        this.f18013c = s0Var.mo19802a(k2Var);
        this.f18014d = s0Var;
        this.f18011a = k2Var;
    }

    /* renamed from: a */
    public static <T> C7667p2<T> m19866a(AbstractC7696t3<?, ?> t3Var, AbstractC7686s0<?> s0Var, AbstractC7627k2 k2Var) {
        return new C7667p2<>(t3Var, s0Var, k2Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: a */
    public final int mo19865a(T t) {
        int hashCode = this.f18012b.mo19739c(t).hashCode();
        int i = hashCode;
        if (this.f18013c) {
            i = (hashCode * 53) + this.f18014d.mo19800a(t).hashCode();
        }
        return i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: a */
    public final T mo19867a() {
        return (T) this.f18011a.mo20086f().mo20074a();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: a */
    public final void mo19864a(T t, AbstractC7662o4 o4Var) throws IOException {
        Iterator<Map.Entry<?, Object>> e = this.f18014d.mo19800a(t).m19706e();
        while (e.hasNext()) {
            Map.Entry<?, Object> next = e.next();
            AbstractC7735z0 z0Var = (AbstractC7735z0) next.getKey();
            if (z0Var.mo19638P() != EnumC7655n4.MESSAGE || z0Var.mo19637Q() || z0Var.mo19639G()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            o4Var.mo19916a(z0Var.mo19640C(), next instanceof C7673q1 ? ((C7673q1) next).m19824a().m19808b() : next.getValue());
        }
        AbstractC7696t3<?, ?> t3Var = this.f18012b;
        t3Var.mo19741b((AbstractC7696t3<?, ?>) t3Var.mo19739c(t), o4Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00eb A[EDGE_INSN: B:55:0x00eb->B:29:0x00eb ?: BREAK  , SYNTHETIC] */
    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo19862a(T r8, byte[] r9, int r10, int r11, p081h.p203i.p204a.p224e.p259j.p266g.C7713w r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.C7667p2.mo19862a(java.lang.Object, byte[], int, int, h.i.a.e.j.g.w):void");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: a */
    public final boolean mo19863a(T t, T t2) {
        if (!this.f18012b.mo19739c(t).equals(this.f18012b.mo19739c(t2))) {
            return false;
        }
        if (this.f18013c) {
            return this.f18014d.mo19800a(t).equals(this.f18014d.mo19800a(t2));
        }
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: b */
    public final void mo19861b(T t) {
        this.f18012b.mo19747a(t);
        this.f18014d.mo19796c(t);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: b */
    public final void mo19860b(T t, T t2) {
        C7571d3.m20262a(this.f18012b, t, t2);
        if (this.f18013c) {
            C7571d3.m20263a(this.f18014d, t, t2);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: c */
    public final int mo19859c(T t) {
        AbstractC7696t3<?, ?> t3Var = this.f18012b;
        int d = t3Var.mo19737d(t3Var.mo19739c(t)) + 0;
        int i = d;
        if (this.f18013c) {
            i = d + this.f18014d.mo19800a(t).m19704g();
        }
        return i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7554b3
    /* renamed from: d */
    public final boolean mo19858d(T t) {
        return this.f18014d.mo19800a(t).m19707d();
    }
}
