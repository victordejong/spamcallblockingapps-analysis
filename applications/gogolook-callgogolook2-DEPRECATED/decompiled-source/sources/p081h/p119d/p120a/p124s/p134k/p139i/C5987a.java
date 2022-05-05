package p081h.p119d.p120a.p124s.p134k.p139i;

import android.graphics.Bitmap;
import p081h.p119d.p120a.p122q.C5796a;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
/* renamed from: h.d.a.s.k.i.a */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/i/a.class */
public class C5987a implements C5796a.AbstractC5797a {

    /* renamed from: a */
    public final AbstractC5856c f14927a;

    public C5987a(AbstractC5856c cVar) {
        this.f14927a = cVar;
    }

    @Override // p081h.p119d.p120a.p122q.C5796a.AbstractC5797a
    /* renamed from: a */
    public Bitmap mo24084a(int i, int i2, Bitmap.Config config) {
        return this.f14927a.mo24217b(i, i2, config);
    }

    @Override // p081h.p119d.p120a.p122q.C5796a.AbstractC5797a
    /* renamed from: a */
    public void mo24083a(Bitmap bitmap) {
        if (!this.f14927a.mo24220a(bitmap)) {
            bitmap.recycle();
        }
    }
}
