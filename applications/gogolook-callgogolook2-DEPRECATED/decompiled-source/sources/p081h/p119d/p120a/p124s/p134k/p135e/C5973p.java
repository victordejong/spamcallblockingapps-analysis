package p081h.p119d.p120a.p124s.p134k.p135e;

import android.graphics.Bitmap;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.EnumC5804a;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
/* renamed from: h.d.a.s.k.e.p */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/p.class */
public class C5973p implements AbstractC5808e<InputStream, Bitmap> {

    /* renamed from: a */
    public final AbstractC5958f f14912a;

    /* renamed from: b */
    public AbstractC5856c f14913b;

    /* renamed from: c */
    public EnumC5804a f14914c;

    /* renamed from: d */
    public String f14915d;

    public C5973p(AbstractC5856c cVar, EnumC5804a aVar) {
        this(AbstractC5958f.f14877c, cVar, aVar);
    }

    public C5973p(AbstractC5958f fVar, AbstractC5856c cVar, EnumC5804a aVar) {
        this.f14912a = fVar;
        this.f14913b = cVar;
        this.f14914c = aVar;
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public AbstractC5848l<Bitmap> mo24025a(InputStream inputStream, int i, int i2) {
        return C5955c.m24121a(this.f14912a.m24112a(inputStream, this.f14913b, i, i2, this.f14914c), this.f14913b);
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5808e
    public String getId() {
        if (this.f14915d == null) {
            this.f14915d = "StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap" + this.f14912a.getId() + this.f14914c.name();
        }
        return this.f14915d;
    }
}
