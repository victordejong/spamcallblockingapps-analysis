package p081h.p082a.p083a.p084l.p086c;

import android.graphics.Matrix;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p088n.C5415j;
import p081h.p082a.p083a.p088n.p089k.C5449l;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.l.c.p */
/* loaded from: classes-dex2jar.jar:h/a/a/l/c/p.class */
public class C5400p {

    /* renamed from: a */
    public final Matrix f13519a = new Matrix();

    /* renamed from: b */
    public final AbstractC5382a<PointF, PointF> f13520b;

    /* renamed from: c */
    public final AbstractC5382a<?, PointF> f13521c;

    /* renamed from: d */
    public final AbstractC5382a<C5415j, C5415j> f13522d;

    /* renamed from: e */
    public final AbstractC5382a<Float, Float> f13523e;

    /* renamed from: f */
    public final AbstractC5382a<Integer, Integer> f13524f;
    @Nullable

    /* renamed from: g */
    public final AbstractC5382a<?, Float> f13525g;
    @Nullable

    /* renamed from: h */
    public final AbstractC5382a<?, Float> f13526h;

    public C5400p(C5449l lVar) {
        this.f13520b = lVar.m25456b().mo25446a();
        this.f13521c = lVar.m25453e().mo25446a();
        this.f13522d = lVar.m25451g().mo25446a();
        this.f13523e = lVar.m25452f().mo25446a();
        this.f13524f = lVar.m25454d().mo25446a();
        if (lVar.m25450h() != null) {
            this.f13525g = lVar.m25450h().mo25446a();
        } else {
            this.f13525g = null;
        }
        if (lVar.m25455c() != null) {
            this.f13526h = lVar.m25455c().mo25446a();
        } else {
            this.f13526h = null;
        }
    }

    /* renamed from: a */
    public Matrix m25513a(float f) {
        PointF f2 = this.f13521c.mo25516f();
        PointF f3 = this.f13520b.mo25516f();
        C5415j f4 = this.f13522d.mo25516f();
        float floatValue = this.f13523e.mo25516f().floatValue();
        this.f13519a.reset();
        this.f13519a.preTranslate(f2.x * f, f2.y * f);
        Matrix matrix = this.f13519a;
        double a = f4.m25481a();
        double d = f;
        matrix.preScale((float) Math.pow(a, d), (float) Math.pow(f4.m25480b(), d));
        this.f13519a.preRotate(floatValue * f, f3.x, f3.y);
        return this.f13519a;
    }

    @Nullable
    /* renamed from: a */
    public AbstractC5382a<?, Float> m25514a() {
        return this.f13526h;
    }

    /* renamed from: a */
    public void m25512a(AbstractC5382a.AbstractC5383a aVar) {
        this.f13520b.mo25517a(aVar);
        this.f13521c.mo25517a(aVar);
        this.f13522d.mo25517a(aVar);
        this.f13523e.mo25517a(aVar);
        this.f13524f.mo25517a(aVar);
        AbstractC5382a<?, Float> aVar2 = this.f13525g;
        if (aVar2 != null) {
            aVar2.mo25517a(aVar);
        }
        AbstractC5382a<?, Float> aVar3 = this.f13526h;
        if (aVar3 != null) {
            aVar3.mo25517a(aVar);
        }
    }

    /* renamed from: a */
    public void m25511a(AbstractC5506a aVar) {
        aVar.m25336a(this.f13520b);
        aVar.m25336a(this.f13521c);
        aVar.m25336a(this.f13522d);
        aVar.m25336a(this.f13523e);
        aVar.m25336a(this.f13524f);
        AbstractC5382a<?, Float> aVar2 = this.f13525g;
        if (aVar2 != null) {
            aVar.m25336a(aVar2);
        }
        AbstractC5382a<?, Float> aVar3 = this.f13526h;
        if (aVar3 != null) {
            aVar.m25336a(aVar3);
        }
    }

    /* renamed from: b */
    public Matrix m25510b() {
        this.f13519a.reset();
        PointF f = this.f13521c.mo25516f();
        if (!(f.x == 0.0f && f.y == 0.0f)) {
            this.f13519a.preTranslate(f.x, f.y);
        }
        float floatValue = this.f13523e.mo25516f().floatValue();
        if (floatValue != 0.0f) {
            this.f13519a.preRotate(floatValue);
        }
        C5415j f2 = this.f13522d.mo25516f();
        if (!(f2.m25481a() == 1.0f && f2.m25480b() == 1.0f)) {
            this.f13519a.preScale(f2.m25481a(), f2.m25480b());
        }
        PointF f3 = this.f13520b.mo25516f();
        if (!(f3.x == 0.0f && f3.y == 0.0f)) {
            this.f13519a.preTranslate(-f3.x, -f3.y);
        }
        return this.f13519a;
    }

    /* renamed from: c */
    public AbstractC5382a<?, Integer> m25509c() {
        return this.f13524f;
    }

    @Nullable
    /* renamed from: d */
    public AbstractC5382a<?, Float> m25508d() {
        return this.f13525g;
    }
}
