package p081h.p119d.p120a.p124s.p134k.p140j;

import android.graphics.Bitmap;
import p081h.p119d.p120a.p124s.AbstractC5810g;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p124s.p134k.p139i.C5988b;
import p081h.p119d.p120a.p124s.p134k.p139i.C5992e;
/* renamed from: h.d.a.s.k.j.f */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/j/f.class */
public class C6014f implements AbstractC5810g<C6007a> {

    /* renamed from: a */
    public final AbstractC5810g<Bitmap> f14999a;

    /* renamed from: b */
    public final AbstractC5810g<C5988b> f15000b;

    public C6014f(AbstractC5810g<Bitmap> gVar, AbstractC5810g<C5988b> gVar2) {
        this.f14999a = gVar;
        this.f15000b = gVar2;
    }

    public C6014f(AbstractC5856c cVar, AbstractC5810g<Bitmap> gVar) {
        this(gVar, new C5992e(gVar, cVar));
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5810g
    /* renamed from: a */
    public AbstractC5848l<C6007a> mo832a(AbstractC5848l<C6007a> lVar, int i, int i2) {
        AbstractC5848l<C6007a> lVar2;
        AbstractC5810g<Bitmap> gVar;
        AbstractC5848l<Bitmap> a = lVar.get().m24040a();
        AbstractC5848l<C5988b> b = lVar.get().m24039b();
        if (a == null || (gVar = this.f14999a) == null) {
            lVar2 = lVar;
            if (b != null) {
                AbstractC5810g<C5988b> gVar2 = this.f15000b;
                lVar2 = lVar;
                if (gVar2 != null) {
                    AbstractC5848l<C5988b> a2 = gVar2.mo832a(b, i, i2);
                    lVar2 = lVar;
                    if (!b.equals(a2)) {
                        lVar2 = new C6008b(new C6007a(lVar.get().m24040a(), a2));
                    }
                }
            }
        } else {
            AbstractC5848l<Bitmap> a3 = gVar.mo832a(a, i, i2);
            lVar2 = lVar;
            if (!a.equals(a3)) {
                return new C6008b(new C6007a(a3, lVar.get().m24039b()));
            }
        }
        return lVar2;
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5810g
    public String getId() {
        return this.f14999a.getId();
    }
}
