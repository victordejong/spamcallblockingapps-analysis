package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7;
/* renamed from: h.i.a.e.j.q.q7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/q7.class */
public abstract class AbstractC8714q7<M extends AbstractC8714q7<M>> extends AbstractC8768w7 {

    /* renamed from: b */
    public C8732s7 f19936b;

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public int mo16954a() {
        int i;
        int i2 = 0;
        if (this.f19936b != null) {
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= this.f19936b.m17183e()) {
                    break;
                }
                i3 += this.f19936b.m17187b(i2).m17124e();
                i2++;
            }
        } else {
            i = 0;
        }
        return i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public void mo16952a(C8696o7 o7Var) throws IOException {
        if (this.f19936b != null) {
            for (int i = 0; i < this.f19936b.m17183e(); i++) {
                this.f19936b.m17187b(i).m17127a(o7Var);
            }
        }
    }

    /* renamed from: a */
    public final boolean m17236a(C8686n7 n7Var, int i) throws IOException {
        int a = n7Var.m17309a();
        if (!n7Var.m17302b(i)) {
            return false;
        }
        int i2 = i >>> 3;
        C8790y7 y7Var = new C8790y7(i, n7Var.m17307a(a, n7Var.m17309a() - a));
        C8741t7 t7Var = null;
        C8732s7 s7Var = this.f19936b;
        if (s7Var == null) {
            this.f19936b = new C8732s7();
        } else {
            t7Var = s7Var.m17189a(i2);
        }
        C8741t7 t7Var2 = t7Var;
        if (t7Var == null) {
            t7Var2 = new C8741t7();
            this.f19936b.m17188a(i2, t7Var2);
        }
        t7Var2.m17126a(y7Var);
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: c */
    public final /* synthetic */ AbstractC8768w7 mo17076c() throws CloneNotSupportedException {
        return (AbstractC8714q7) clone();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        AbstractC8714q7 q7Var = (AbstractC8714q7) super.clone();
        C8750u7.m17113a(this, q7Var);
        return q7Var;
    }
}
