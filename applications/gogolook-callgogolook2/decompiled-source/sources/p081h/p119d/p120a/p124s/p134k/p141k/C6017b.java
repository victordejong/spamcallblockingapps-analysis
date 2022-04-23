package p081h.p119d.p120a.p124s.p134k.p141k;

import android.graphics.Bitmap;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p134k.p135e.C5965j;
import p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b;
import p081h.p119d.p120a.p124s.p134k.p140j.C6007a;
/* renamed from: h.d.a.s.k.k.b */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/k/b.class */
public class C6017b implements AbstractC6019d<C6007a, AbstractC5979b> {

    /* renamed from: a */
    public final AbstractC6019d<Bitmap, C5965j> f15007a;

    public C6017b(AbstractC6019d<Bitmap, C5965j> dVar) {
        this.f15007a = dVar;
    }

    @Override // p081h.p119d.p120a.p124s.p134k.p141k.AbstractC6019d
    /* renamed from: a */
    public AbstractC5848l<AbstractC5979b> mo24021a(AbstractC5848l<C6007a> lVar) {
        C6007a aVar = lVar.get();
        AbstractC5848l<Bitmap> a = aVar.m24040a();
        return a != null ? this.f15007a.mo24021a(a) : aVar.m24039b();
    }

    @Override // p081h.p119d.p120a.p124s.p134k.p141k.AbstractC6019d
    public String getId() {
        return "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode";
    }
}
