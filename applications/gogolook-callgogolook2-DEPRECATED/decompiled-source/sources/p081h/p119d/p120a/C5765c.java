package p081h.p119d.p120a;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import p081h.p119d.p120a.C5780o;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p131j.C5907f;
import p081h.p119d.p120a.p124s.p131j.C5909g;
import p081h.p119d.p120a.p124s.p134k.p141k.AbstractC6019d;
import p081h.p119d.p120a.p124s.p134k.p141k.C6016a;
import p081h.p119d.p120a.p144v.C6048e;
/* renamed from: h.d.a.c */
/* loaded from: classes-dex2jar.jar:h/d/a/c.class */
public class C5765c<ModelType> extends C5764b<ModelType, Bitmap> {

    /* renamed from: H */
    public final AbstractC5918l<ModelType, InputStream> f14426H;

    /* renamed from: I */
    public final AbstractC5918l<ModelType, ParcelFileDescriptor> f14427I;

    /* renamed from: J */
    public final C5776l f14428J;

    /* renamed from: K */
    public final C5780o.C5786e f14429K;

    public C5765c(C5770h<ModelType, ?, ?, ?> hVar, AbstractC5918l<ModelType, InputStream> lVar, AbstractC5918l<ModelType, ParcelFileDescriptor> lVar2, C5780o.C5786e eVar) {
        super(m24532a(hVar.f14438c, lVar, lVar2, Bitmap.class, null), Bitmap.class, hVar);
        this.f14426H = lVar;
        this.f14427I = lVar2;
        this.f14428J = hVar.f14438c;
        this.f14429K = eVar;
    }

    /* renamed from: a */
    public static <A, R> C6048e<A, C5909g, Bitmap, R> m24532a(C5776l lVar, AbstractC5918l<A, InputStream> lVar2, AbstractC5918l<A, ParcelFileDescriptor> lVar3, Class<R> cls, AbstractC6019d<Bitmap, R> dVar) {
        if (lVar2 == null && lVar3 == null) {
            return null;
        }
        AbstractC6019d<Bitmap, R> dVar2 = dVar;
        if (dVar == null) {
            dVar2 = lVar.m24472b(Bitmap.class, cls);
        }
        return new C6048e<>(new C5907f(lVar2, lVar3), dVar2, lVar.m24478a(C5909g.class, Bitmap.class));
    }

    /* renamed from: a */
    public C5764b<ModelType, byte[]> m24533a(Bitmap.CompressFormat compressFormat, int i) {
        return (C5764b<ModelType, byte[]>) m24531a(new C6016a(compressFormat, i), byte[].class);
    }

    /* renamed from: a */
    public <R> C5764b<ModelType, R> m24531a(AbstractC6019d<Bitmap, R> dVar, Class<R> cls) {
        C5780o.C5786e eVar = this.f14429K;
        C5764b<ModelType, R> bVar = new C5764b<>(m24532a(this.f14428J, this.f14426H, this.f14427I, cls, dVar), cls, this);
        eVar.m24429a(bVar);
        return bVar;
    }
}
