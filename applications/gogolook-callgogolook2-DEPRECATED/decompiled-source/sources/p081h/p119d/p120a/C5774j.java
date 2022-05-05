package p081h.p119d.p120a;

import android.graphics.Bitmap;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.AbstractC5806c;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.AbstractC5810g;
import p081h.p119d.p120a.p124s.p126i.EnumC5827b;
import p081h.p119d.p120a.p124s.p134k.p135e.AbstractC5956d;
import p081h.p119d.p120a.p124s.p134k.p139i.C5988b;
import p081h.p119d.p120a.p124s.p134k.p139i.C5992e;
import p081h.p119d.p120a.p144v.AbstractC6049f;
import p081h.p119d.p120a.p145w.AbstractC6057f;
import p081h.p119d.p120a.p145w.p146i.AbstractC6065d;
import p081h.p119d.p120a.p145w.p146i.C6060a;
/* renamed from: h.d.a.j */
/* loaded from: classes-dex2jar.jar:h/d/a/j.class */
public class C5774j<ModelType> extends C5770h<ModelType, InputStream, C5988b, C5988b> implements AbstractC5763a, AbstractC5767e {
    public C5774j(AbstractC6049f<ModelType, InputStream, C5988b, C5988b> fVar, Class<C5988b> cls, C5770h<ModelType, ?, ?, ?> hVar) {
        super(fVar, cls, hVar);
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a */
    public C5774j<ModelType> mo24505a(EnumC5779n nVar) {
        super.mo24505a(nVar);
        return this;
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a */
    public C5774j<ModelType> mo24504a(AbstractC5806c cVar) {
        super.mo24504a(cVar);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C5774j<ModelType> mo24503a(AbstractC5808e<InputStream, C5988b> eVar) {
        super.mo24503a((AbstractC5808e) eVar);
        return this;
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a */
    public C5774j<ModelType> mo24502a(EnumC5827b bVar) {
        super.mo24502a(bVar);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a */
    public C5774j<ModelType> mo24501a(AbstractC6057f<? super ModelType, C5988b> fVar) {
        super.mo24501a((AbstractC6057f) fVar);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C5774j<ModelType> mo24500a(AbstractC6065d<C5988b> dVar) {
        super.mo24500a((AbstractC6065d) dVar);
        return this;
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a */
    public C5774j<ModelType> mo24499a(boolean z) {
        super.mo24499a(z);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C5774j<ModelType> mo24498a(AbstractC5810g<C5988b>... gVarArr) {
        super.mo24498a((AbstractC5810g[]) gVarArr);
        return this;
    }

    /* renamed from: a */
    public C5774j<ModelType> m24497a(AbstractC5956d... dVarArr) {
        mo24498a((AbstractC5810g<C5988b>[]) m24494b(dVarArr));
        return this;
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: b */
    public C5774j<ModelType> mo24496b(int i) {
        super.mo24496b(i);
        return this;
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: b */
    public C5774j<ModelType> mo24495b(int i, int i2) {
        super.mo24495b(i, i2);
        return this;
    }

    /* renamed from: b */
    public final C5992e[] m24494b(AbstractC5810g<Bitmap>[] gVarArr) {
        C5992e[] eVarArr = new C5992e[gVarArr.length];
        for (int i = 0; i < gVarArr.length; i++) {
            eVarArr[i] = new C5992e(gVarArr[i], this.f14438c.m24468e());
        }
        return eVarArr;
    }

    @Override // p081h.p119d.p120a.C5770h
    public C5774j<ModelType> clone() {
        return (C5774j) super.clone();
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: d */
    public void mo24493d() {
        m24490i();
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: e */
    public void mo24492e() {
        m24488k();
    }

    @Override // p081h.p119d.p120a.C5770h
    /* renamed from: f */
    public C5774j<ModelType> mo24491f() {
        super.mo24491f();
        return this;
    }

    /* renamed from: i */
    public C5774j<ModelType> m24490i() {
        m24497a(this.f14438c.m24471c());
        return this;
    }

    /* renamed from: j */
    public C5774j<ModelType> m24489j() {
        super.mo24500a((AbstractC6065d) new C6060a());
        return this;
    }

    /* renamed from: k */
    public C5774j<ModelType> m24488k() {
        m24497a(this.f14438c.m24469d());
        return this;
    }
}
