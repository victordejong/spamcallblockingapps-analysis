package p081h.p082a.p083a.p084l.p085b;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import java.util.List;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p088n.p090l.C5481j;
import p081h.p082a.p083a.p088n.p090l.C5502q;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
import p081h.p082a.p083a.p092o.C5530f;
/* renamed from: h.a.a.l.b.n */
/* loaded from: classes-dex2jar.jar:h/a/a/l/b/n.class */
public class C5377n implements AbstractC5374l, AbstractC5382a.AbstractC5383a {

    /* renamed from: a */
    public final Path f13466a = new Path();

    /* renamed from: b */
    public final RectF f13467b = new RectF();

    /* renamed from: c */
    public final String f13468c;

    /* renamed from: d */
    public final C5344f f13469d;

    /* renamed from: e */
    public final AbstractC5382a<?, PointF> f13470e;

    /* renamed from: f */
    public final AbstractC5382a<?, PointF> f13471f;

    /* renamed from: g */
    public final AbstractC5382a<?, Float> f13472g;
    @Nullable

    /* renamed from: h */
    public C5381r f13473h;

    /* renamed from: i */
    public boolean f13474i;

    public C5377n(C5344f fVar, AbstractC5506a aVar, C5481j jVar) {
        this.f13468c = jVar.m25388b();
        this.f13469d = fVar;
        this.f13470e = jVar.m25387c().mo25446a();
        this.f13471f = jVar.m25386d().mo25446a();
        this.f13472g = jVar.m25389a().mo25446a();
        aVar.m25336a(this.f13470e);
        aVar.m25336a(this.f13471f);
        aVar.m25336a(this.f13472g);
        this.f13470e.mo25517a(this);
        this.f13471f.mo25517a(this);
        this.f13472g.mo25517a(this);
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a.AbstractC5383a
    /* renamed from: a */
    public void mo25321a() {
        m25538b();
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    /* renamed from: a */
    public void mo25332a(List<AbstractC5363b> list, List<AbstractC5363b> list2) {
        for (int i = 0; i < list.size(); i++) {
            AbstractC5363b bVar = list.get(i);
            if (bVar instanceof C5381r) {
                C5381r rVar = (C5381r) bVar;
                if (rVar.m25531e() == C5502q.EnumC5505c.Simultaneously) {
                    this.f13473h = rVar;
                    this.f13473h.m25535a(this);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m25538b() {
        this.f13474i = false;
        this.f13469d.invalidateSelf();
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    public String getName() {
        return this.f13468c;
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5374l
    public Path getPath() {
        if (this.f13474i) {
            return this.f13466a;
        }
        this.f13466a.reset();
        PointF f = this.f13471f.mo25516f();
        float f2 = f.x / 2.0f;
        float f3 = f.y / 2.0f;
        AbstractC5382a<?, Float> aVar = this.f13472g;
        float floatValue = aVar == null ? 0.0f : aVar.mo25516f().floatValue();
        float min = Math.min(f2, f3);
        float f4 = floatValue;
        if (floatValue > min) {
            f4 = min;
        }
        PointF f5 = this.f13470e.mo25516f();
        this.f13466a.moveTo(f5.x + f2, (f5.y - f3) + f4);
        this.f13466a.lineTo(f5.x + f2, (f5.y + f3) - f4);
        int i = (f4 > 0.0f ? 1 : (f4 == 0.0f ? 0 : -1));
        if (i > 0) {
            RectF rectF = this.f13467b;
            float f6 = f5.x;
            float f7 = f4 * 2.0f;
            float f8 = f5.y;
            rectF.set((f6 + f2) - f7, (f8 + f3) - f7, f6 + f2, f8 + f3);
            this.f13466a.arcTo(this.f13467b, 0.0f, 90.0f, false);
        }
        this.f13466a.lineTo((f5.x - f2) + f4, f5.y + f3);
        if (i > 0) {
            RectF rectF2 = this.f13467b;
            float f9 = f5.x;
            float f10 = f5.y;
            float f11 = f4 * 2.0f;
            rectF2.set(f9 - f2, (f10 + f3) - f11, (f9 - f2) + f11, f10 + f3);
            this.f13466a.arcTo(this.f13467b, 90.0f, 90.0f, false);
        }
        this.f13466a.lineTo(f5.x - f2, (f5.y - f3) + f4);
        if (i > 0) {
            RectF rectF3 = this.f13467b;
            float f12 = f5.x;
            float f13 = f5.y;
            float f14 = f4 * 2.0f;
            rectF3.set(f12 - f2, f13 - f3, (f12 - f2) + f14, (f13 - f3) + f14);
            this.f13466a.arcTo(this.f13467b, 180.0f, 90.0f, false);
        }
        this.f13466a.lineTo((f5.x + f2) - f4, f5.y - f3);
        if (i > 0) {
            RectF rectF4 = this.f13467b;
            float f15 = f5.x;
            float f16 = f4 * 2.0f;
            float f17 = f5.y;
            rectF4.set((f15 + f2) - f16, f17 - f3, f15 + f2, (f17 - f3) + f16);
            this.f13466a.arcTo(this.f13467b, 270.0f, 90.0f, false);
        }
        this.f13466a.close();
        C5530f.m25250a(this.f13466a, this.f13473h);
        this.f13474i = true;
        return this.f13466a;
    }
}
