package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5;
/* renamed from: h.i.a.e.j.j.d5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/d5.class */
public abstract class AbstractC7788d5<M extends AbstractC7788d5<M>> extends AbstractC7843j5 {

    /* renamed from: b */
    public C7805f5 f18218b;

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public int mo18862a() {
        int i;
        int i2 = 0;
        if (this.f18218b != null) {
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= this.f18218b.m19400e()) {
                    break;
                }
                i3 += this.f18218b.m19404b(i2).m19370e();
                i2++;
            }
        } else {
            i = 0;
        }
        return i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public void mo18861a(C7764a5 a5Var) throws IOException {
        if (this.f18218b != null) {
            for (int i = 0; i < this.f18218b.m19400e(); i++) {
                this.f18218b.m19404b(i).m19373a(a5Var);
            }
        }
    }

    /* renamed from: a */
    public final boolean m19482a(C7970z4 z4Var, int i) throws IOException {
        int a = z4Var.m18735a();
        if (!z4Var.m18725c(i)) {
            return false;
        }
        int i2 = i >>> 3;
        C7859l5 l5Var = new C7859l5(i, z4Var.m18733a(a, z4Var.m18735a() - a));
        C7813g5 g5Var = null;
        C7805f5 f5Var = this.f18218b;
        if (f5Var == null) {
            this.f18218b = new C7805f5();
        } else {
            g5Var = f5Var.m19406a(i2);
        }
        C7813g5 g5Var2 = g5Var;
        if (g5Var == null) {
            g5Var2 = new C7813g5();
            this.f18218b.m19405a(i2, g5Var2);
        }
        g5Var2.m19372a(l5Var);
        return true;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: c */
    public final /* synthetic */ AbstractC7843j5 mo19272c() throws CloneNotSupportedException {
        return (AbstractC7788d5) clone();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        AbstractC7788d5 d5Var = (AbstractC7788d5) super.clone();
        C7822h5.m19358a(this, d5Var);
        return d5Var;
    }
}
