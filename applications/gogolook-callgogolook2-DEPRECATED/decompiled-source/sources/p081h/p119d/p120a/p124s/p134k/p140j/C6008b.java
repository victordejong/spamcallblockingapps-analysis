package p081h.p119d.p120a.p124s.p134k.p140j;

import android.graphics.Bitmap;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p134k.p139i.C5988b;
/* renamed from: h.d.a.s.k.j.b */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/j/b.class */
public class C6008b implements AbstractC5848l<C6007a> {

    /* renamed from: a */
    public final C6007a f14986a;

    public C6008b(C6007a aVar) {
        if (aVar != null) {
            this.f14986a = aVar;
            return;
        }
        throw new NullPointerException("Data must not be null");
    }

    @Override // p081h.p119d.p120a.p124s.p126i.AbstractC5848l
    /* renamed from: a */
    public int mo24037a() {
        return this.f14986a.m24038c();
    }

    @Override // p081h.p119d.p120a.p124s.p126i.AbstractC5848l
    /* renamed from: b */
    public void mo24036b() {
        AbstractC5848l<Bitmap> a = this.f14986a.m24040a();
        if (a != null) {
            a.mo24036b();
        }
        AbstractC5848l<C5988b> b = this.f14986a.m24039b();
        if (b != null) {
            b.mo24036b();
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p081h.p119d.p120a.p124s.p126i.AbstractC5848l
    public C6007a get() {
        return this.f14986a;
    }
}
