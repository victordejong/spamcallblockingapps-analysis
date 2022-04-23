package p081h.p119d.p120a.p124s.p134k.p135e;

import android.graphics.Bitmap;
import p081h.p119d.p120a.p124s.AbstractC5810g;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.s.k.e.d */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/d.class */
public abstract class AbstractC5956d implements AbstractC5810g<Bitmap> {

    /* renamed from: a */
    public AbstractC5856c f14874a;

    public AbstractC5956d(AbstractC5856c cVar) {
        this.f14874a = cVar;
    }

    /* renamed from: a */
    public abstract Bitmap mo24107a(AbstractC5856c cVar, Bitmap bitmap, int i, int i2);

    @Override // p081h.p119d.p120a.p124s.AbstractC5810g
    /* renamed from: a */
    public final AbstractC5848l<Bitmap> mo832a(AbstractC5848l<Bitmap> lVar, int i, int i2) {
        if (C6096h.m23863a(i, i2)) {
            Bitmap bitmap = lVar.get();
            int i3 = i;
            if (i == Integer.MIN_VALUE) {
                i3 = bitmap.getWidth();
            }
            int i4 = i2;
            if (i2 == Integer.MIN_VALUE) {
                i4 = bitmap.getHeight();
            }
            Bitmap a = mo24107a(this.f14874a, bitmap, i3, i4);
            if (!bitmap.equals(a)) {
                lVar = C5955c.m24121a(a, this.f14874a);
            }
            return lVar;
        }
        throw new IllegalArgumentException("Cannot apply transformation on width: " + i + " or height: " + i2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }
}
