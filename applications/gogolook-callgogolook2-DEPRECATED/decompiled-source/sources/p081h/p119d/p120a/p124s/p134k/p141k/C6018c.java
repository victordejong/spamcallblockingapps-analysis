package p081h.p119d.p120a.p124s.p134k.p141k;

import android.content.res.Resources;
import android.graphics.Bitmap;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p124s.p134k.p135e.C5965j;
import p081h.p119d.p120a.p124s.p134k.p135e.C5967k;
/* renamed from: h.d.a.s.k.k.c */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/k/c.class */
public class C6018c implements AbstractC6019d<Bitmap, C5965j> {

    /* renamed from: a */
    public final Resources f15008a;

    /* renamed from: b */
    public final AbstractC5856c f15009b;

    public C6018c(Resources resources, AbstractC5856c cVar) {
        this.f15008a = resources;
        this.f15009b = cVar;
    }

    @Override // p081h.p119d.p120a.p124s.p134k.p141k.AbstractC6019d
    /* renamed from: a */
    public AbstractC5848l<C5965j> mo24021a(AbstractC5848l<Bitmap> lVar) {
        return new C5967k(new C5965j(this.f15008a, lVar.get()), this.f15009b);
    }

    @Override // p081h.p119d.p120a.p124s.p134k.p141k.AbstractC6019d
    public String getId() {
        return "GlideBitmapDrawableTranscoder.com.bumptech.glide.load.resource.transcode";
    }
}
