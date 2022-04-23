package p081h.p119d.p120a.p124s.p134k.p140j;

import android.graphics.Bitmap;
import java.io.OutputStream;
import p081h.p119d.p120a.p124s.AbstractC5809f;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p134k.p139i.C5988b;
/* renamed from: h.d.a.s.k.j.d */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/j/d.class */
public class C6012d implements AbstractC5809f<C6007a> {

    /* renamed from: a */
    public final AbstractC5809f<Bitmap> f14995a;

    /* renamed from: b */
    public final AbstractC5809f<C5988b> f14996b;

    /* renamed from: c */
    public String f14997c;

    public C6012d(AbstractC5809f<Bitmap> fVar, AbstractC5809f<C5988b> fVar2) {
        this.f14995a = fVar;
        this.f14996b = fVar2;
    }

    /* renamed from: a */
    public boolean mo24027a(AbstractC5848l<C6007a> lVar, OutputStream outputStream) {
        C6007a aVar = lVar.get();
        AbstractC5848l<Bitmap> a = aVar.m24040a();
        return a != null ? this.f14995a.mo24027a(a, outputStream) : this.f14996b.mo24027a(aVar.m24039b(), outputStream);
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5805b
    public String getId() {
        if (this.f14997c == null) {
            this.f14997c = this.f14995a.getId() + this.f14996b.getId();
        }
        return this.f14997c;
    }
}
