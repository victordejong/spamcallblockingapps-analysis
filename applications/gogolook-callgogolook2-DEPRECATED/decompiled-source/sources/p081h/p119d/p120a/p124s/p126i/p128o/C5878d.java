package p081h.p119d.p120a.p124s.p126i.p128o;

import java.io.File;
import p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5870a;
/* renamed from: h.d.a.s.i.o.d */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/o/d.class */
public class C5878d implements AbstractC5870a.AbstractC5871a {

    /* renamed from: a */
    public final int f14800a;

    /* renamed from: b */
    public final AbstractC5879a f14801b;

    /* renamed from: h.d.a.s.i.o.d$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/o/d$a.class */
    public interface AbstractC5879a {
        /* renamed from: a */
        File mo24183a();
    }

    public C5878d(AbstractC5879a aVar, int i) {
        this.f14800a = i;
        this.f14801b = aVar;
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5870a.AbstractC5871a
    public AbstractC5870a build() {
        File a = this.f14801b.mo24183a();
        if (a == null) {
            return null;
        }
        if (a.mkdirs() || (a.exists() && a.isDirectory())) {
            return C5880e.m24186a(a, this.f14800a);
        }
        return null;
    }
}
