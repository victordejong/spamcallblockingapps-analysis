package p081h.p119d.p120a.p124s.p134k.p135e;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.AbstractC5805b;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.AbstractC5809f;
import p081h.p119d.p120a.p124s.p131j.C5909g;
import p081h.p119d.p120a.p124s.p131j.C5910h;
import p081h.p119d.p120a.p144v.AbstractC6045b;
/* renamed from: h.d.a.s.k.e.m */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/m.class */
public class C5969m implements AbstractC6045b<C5909g, Bitmap> {

    /* renamed from: a */
    public final C5968l f14899a;

    /* renamed from: b */
    public final AbstractC5808e<File, Bitmap> f14900b;

    /* renamed from: c */
    public final AbstractC5809f<Bitmap> f14901c;

    /* renamed from: d */
    public final C5910h f14902d;

    public C5969m(AbstractC6045b<InputStream, Bitmap> bVar, AbstractC6045b<ParcelFileDescriptor, Bitmap> bVar2) {
        this.f14901c = bVar.mo23970f();
        this.f14902d = new C5910h(bVar.mo23971d(), bVar2.mo23971d());
        this.f14900b = bVar.mo23968h();
        this.f14899a = new C5968l(bVar.mo23969g(), bVar2.mo23969g());
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: d */
    public AbstractC5805b<C5909g> mo23971d() {
        return this.f14902d;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: f */
    public AbstractC5809f<Bitmap> mo23970f() {
        return this.f14901c;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: g */
    public AbstractC5808e<C5909g, Bitmap> mo23969g() {
        return this.f14899a;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: h */
    public AbstractC5808e<File, Bitmap> mo23968h() {
        return this.f14900b;
    }
}
