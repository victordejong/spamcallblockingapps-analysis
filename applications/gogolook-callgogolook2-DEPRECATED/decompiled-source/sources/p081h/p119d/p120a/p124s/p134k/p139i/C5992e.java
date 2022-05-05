package p081h.p119d.p120a.p124s.p134k.p139i;

import android.graphics.Bitmap;
import p081h.p119d.p120a.p124s.AbstractC5810g;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p124s.p134k.p135e.C5955c;
/* renamed from: h.d.a.s.k.i.e */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/i/e.class */
public class C5992e implements AbstractC5810g<C5988b> {

    /* renamed from: a */
    public final AbstractC5810g<Bitmap> f14953a;

    /* renamed from: b */
    public final AbstractC5856c f14954b;

    public C5992e(AbstractC5810g<Bitmap> gVar, AbstractC5856c cVar) {
        this.f14953a = gVar;
        this.f14954b = cVar;
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5810g
    /* renamed from: a */
    public AbstractC5848l<C5988b> mo832a(AbstractC5848l<C5988b> lVar, int i, int i2) {
        C5988b bVar = lVar.get();
        Bitmap c = lVar.get().m24081c();
        Bitmap bitmap = this.f14953a.mo832a(new C5955c(c, this.f14954b), i, i2).get();
        if (!bitmap.equals(c)) {
            lVar = new C5991d(new C5988b(bVar, bitmap, this.f14953a));
        }
        return lVar;
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5810g
    public String getId() {
        return this.f14953a.getId();
    }
}
