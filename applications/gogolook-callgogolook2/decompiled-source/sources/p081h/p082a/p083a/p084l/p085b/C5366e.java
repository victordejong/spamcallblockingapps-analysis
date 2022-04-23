package p081h.p082a.p083a.p084l.p085b;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import java.util.List;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p088n.p090l.C5457a;
import p081h.p082a.p083a.p088n.p090l.C5502q;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
import p081h.p082a.p083a.p092o.C5530f;
/* renamed from: h.a.a.l.b.e */
/* loaded from: classes-dex2jar.jar:h/a/a/l/b/e.class */
public class C5366e implements AbstractC5374l, AbstractC5382a.AbstractC5383a {

    /* renamed from: a */
    public final Path f13407a = new Path();

    /* renamed from: b */
    public final String f13408b;

    /* renamed from: c */
    public final C5344f f13409c;

    /* renamed from: d */
    public final AbstractC5382a<?, PointF> f13410d;

    /* renamed from: e */
    public final AbstractC5382a<?, PointF> f13411e;
    @Nullable

    /* renamed from: f */
    public C5381r f13412f;

    /* renamed from: g */
    public boolean f13413g;

    public C5366e(C5344f fVar, AbstractC5506a aVar, C5457a aVar2) {
        this.f13408b = aVar2.m25437a();
        this.f13409c = fVar;
        this.f13410d = aVar2.m25435c().mo25446a();
        this.f13411e = aVar2.m25436b().mo25446a();
        aVar.m25336a(this.f13410d);
        aVar.m25336a(this.f13411e);
        this.f13410d.mo25517a(this);
        this.f13411e.mo25517a(this);
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a.AbstractC5383a
    /* renamed from: a */
    public void mo25321a() {
        m25550b();
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    /* renamed from: a */
    public void mo25332a(List<AbstractC5363b> list, List<AbstractC5363b> list2) {
        for (int i = 0; i < list.size(); i++) {
            AbstractC5363b bVar = list.get(i);
            if (bVar instanceof C5381r) {
                C5381r rVar = (C5381r) bVar;
                if (rVar.m25531e() == C5502q.EnumC5505c.Simultaneously) {
                    this.f13412f = rVar;
                    this.f13412f.m25535a(this);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m25550b() {
        this.f13413g = false;
        this.f13409c.invalidateSelf();
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    public String getName() {
        return this.f13408b;
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5374l
    public Path getPath() {
        if (this.f13413g) {
            return this.f13407a;
        }
        this.f13407a.reset();
        PointF f = this.f13410d.mo25516f();
        float f2 = f.x / 2.0f;
        float f3 = f.y / 2.0f;
        float f4 = f2 * 0.55228f;
        float f5 = 0.55228f * f3;
        this.f13407a.reset();
        float f6 = -f3;
        this.f13407a.moveTo(0.0f, f6);
        float f7 = f4 + 0.0f;
        float f8 = 0.0f - f5;
        this.f13407a.cubicTo(f7, f6, f2, f8, f2, 0.0f);
        float f9 = f5 + 0.0f;
        this.f13407a.cubicTo(f2, f9, f7, f3, 0.0f, f3);
        float f10 = 0.0f - f4;
        float f11 = -f2;
        this.f13407a.cubicTo(f10, f3, f11, f9, f11, 0.0f);
        this.f13407a.cubicTo(f11, f8, f10, f6, 0.0f, f6);
        PointF f12 = this.f13411e.mo25516f();
        this.f13407a.offset(f12.x, f12.y);
        this.f13407a.close();
        C5530f.m25250a(this.f13407a, this.f13412f);
        this.f13413g = true;
        return this.f13407a;
    }
}
