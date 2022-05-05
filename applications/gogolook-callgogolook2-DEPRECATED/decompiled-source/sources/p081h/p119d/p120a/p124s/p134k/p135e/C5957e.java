package p081h.p119d.p120a.p124s.p134k.p135e;

import android.graphics.Bitmap;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
/* renamed from: h.d.a.s.k.e.e */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/e.class */
public class C5957e extends AbstractC5956d {
    public C5957e(AbstractC5856c cVar) {
        super(cVar);
    }

    @Override // p081h.p119d.p120a.p124s.p134k.p135e.AbstractC5956d
    /* renamed from: a */
    public Bitmap mo24107a(AbstractC5856c cVar, Bitmap bitmap, int i, int i2) {
        Bitmap a = cVar.mo24221a(i, i2, bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888);
        Bitmap a2 = C5974q.m24093a(a, bitmap, i, i2);
        if (!(a == null || a == a2 || cVar.mo24220a(a))) {
            a.recycle();
        }
        return a2;
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5810g
    public String getId() {
        return "CenterCrop.com.bumptech.glide.load.resource.bitmap";
    }
}
