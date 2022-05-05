package p081h.p119d.p120a.p124s.p126i.p128o;

import android.annotation.SuppressLint;
import p081h.p119d.p120a.p124s.AbstractC5806c;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5884h;
import p081h.p119d.p120a.p149y.C6093e;
/* renamed from: h.d.a.s.i.o.g */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/o/g.class */
public class C5883g extends C6093e<AbstractC5806c, AbstractC5848l<?>> implements AbstractC5884h {

    /* renamed from: d */
    public AbstractC5884h.AbstractC5885a f14810d;

    public C5883g(int i) {
        super(i);
    }

    /* renamed from: a */
    public int mo23872b(AbstractC5848l<?> lVar) {
        return lVar.mo24037a();
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5884h
    /* renamed from: a */
    public /* bridge */ /* synthetic */ AbstractC5848l mo24178a(AbstractC5806c cVar) {
        return (AbstractC5848l) super.m23869c(cVar);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5884h
    /* renamed from: a */
    public /* bridge */ /* synthetic */ AbstractC5848l mo24177a(AbstractC5806c cVar, AbstractC5848l lVar) {
        return (AbstractC5848l) super.m23871b((C5883g) cVar, (AbstractC5806c) lVar);
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5884h
    @SuppressLint({"InlinedApi"})
    /* renamed from: a */
    public void mo24179a(int i) {
        if (i >= 60) {
            m23877a();
        } else if (i >= 40) {
            m23873b(m23870c() / 2);
        }
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5884h
    /* renamed from: a */
    public void mo24176a(AbstractC5884h.AbstractC5885a aVar) {
        this.f14810d = aVar;
    }

    /* renamed from: b */
    public void mo23875a(AbstractC5806c cVar, AbstractC5848l<?> lVar) {
        AbstractC5884h.AbstractC5885a aVar = this.f14810d;
        if (aVar != null) {
            aVar.mo24175a(lVar);
        }
    }
}
