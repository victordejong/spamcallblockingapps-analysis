package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
import p081h.p203i.p204a.p224e.p259j.p266g.C7683r4;
/* renamed from: h.i.a.e.j.g.r4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/r4.class */
public class C7683r4<M extends C7683r4<M>> extends C7718w4 {

    /* renamed from: b */
    public C7697t4 f18023b;

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7718w4
    /* renamed from: a */
    public void mo19697a(C7669p4 p4Var) throws IOException {
        if (this.f18023b != null) {
            for (int i = 0; i < this.f18023b.m19789e(); i++) {
                this.f18023b.m19791a(i).m19774a(p4Var);
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7718w4
    /* renamed from: e */
    public int mo19694e() {
        if (this.f18023b == null) {
            return 0;
        }
        for (int i = 0; i < this.f18023b.m19789e(); i++) {
            this.f18023b.m19791a(i).m19772e();
        }
        return 0;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.C7718w4
    /* renamed from: f */
    public /* synthetic */ C7718w4 mo19693f() throws CloneNotSupportedException {
        return (C7683r4) clone();
    }

    /* renamed from: g */
    public M clone() throws CloneNotSupportedException {
        M m = (M) ((C7683r4) super.clone());
        C7711v4.m19736a(this, m);
        return m;
    }
}
