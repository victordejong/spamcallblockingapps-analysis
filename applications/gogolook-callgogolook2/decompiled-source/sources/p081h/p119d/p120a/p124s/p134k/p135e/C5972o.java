package p081h.p119d.p120a.p124s.p134k.p135e;

import android.graphics.Bitmap;
import java.io.File;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.AbstractC5805b;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.AbstractC5809f;
import p081h.p119d.p120a.p124s.EnumC5804a;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p124s.p131j.C5921o;
import p081h.p119d.p120a.p124s.p134k.p138h.C5982c;
import p081h.p119d.p120a.p144v.AbstractC6045b;
/* renamed from: h.d.a.s.k.e.o */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/o.class */
public class C5972o implements AbstractC6045b<InputStream, Bitmap> {

    /* renamed from: a */
    public final C5973p f14908a;

    /* renamed from: d */
    public final C5982c<Bitmap> f14911d;

    /* renamed from: c */
    public final C5921o f14910c = new C5921o();

    /* renamed from: b */
    public final C5954b f14909b = new C5954b();

    public C5972o(AbstractC5856c cVar, EnumC5804a aVar) {
        this.f14908a = new C5973p(cVar, aVar);
        this.f14911d = new C5982c<>(this.f14908a);
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: d */
    public AbstractC5805b<InputStream> mo23971d() {
        return this.f14910c;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: f */
    public AbstractC5809f<Bitmap> mo23970f() {
        return this.f14909b;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: g */
    public AbstractC5808e<InputStream, Bitmap> mo23969g() {
        return this.f14908a;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: h */
    public AbstractC5808e<File, Bitmap> mo23968h() {
        return this.f14911d;
    }
}
