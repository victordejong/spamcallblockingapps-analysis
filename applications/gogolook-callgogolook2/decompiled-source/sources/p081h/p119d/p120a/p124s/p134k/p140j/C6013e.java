package p081h.p119d.p120a.p124s.p134k.p140j;

import java.io.IOException;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p131j.C5909g;
/* renamed from: h.d.a.s.k.j.e */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/j/e.class */
public class C6013e implements AbstractC5808e<InputStream, C6007a> {

    /* renamed from: a */
    public final AbstractC5808e<C5909g, C6007a> f14998a;

    public C6013e(AbstractC5808e<C5909g, C6007a> eVar) {
        this.f14998a = eVar;
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public AbstractC5848l<C6007a> mo24025a(InputStream inputStream, int i, int i2) throws IOException {
        return this.f14998a.mo24025a(new C5909g(inputStream, null), i, i2);
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5808e
    public String getId() {
        return this.f14998a.getId();
    }
}
