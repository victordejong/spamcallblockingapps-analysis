package p081h.p082a.p083a.p084l.p085b;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import p081h.p082a.p083a.C5340d;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p088n.p090l.C5489m;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.l.b.f */
/* loaded from: classes-dex2jar.jar:h/a/a/l/b/f.class */
public class C5367f implements AbstractC5365d, AbstractC5382a.AbstractC5383a {

    /* renamed from: c */
    public final String f13416c;

    /* renamed from: e */
    public final AbstractC5382a<Integer, Integer> f13418e;

    /* renamed from: f */
    public final AbstractC5382a<Integer, Integer> f13419f;

    /* renamed from: g */
    public final C5344f f13420g;

    /* renamed from: a */
    public final Path f13414a = new Path();

    /* renamed from: b */
    public final Paint f13415b = new Paint(1);

    /* renamed from: d */
    public final List<AbstractC5374l> f13417d = new ArrayList();

    public C5367f(C5344f fVar, AbstractC5506a aVar, C5489m mVar) {
        this.f13416c = mVar.m25370c();
        this.f13420g = fVar;
        if (mVar.m25372a() == null || mVar.m25369d() == null) {
            this.f13418e = null;
            this.f13419f = null;
            return;
        }
        this.f13414a.setFillType(mVar.m25371b());
        this.f13418e = mVar.m25372a().mo25446a();
        this.f13418e.mo25517a(this);
        aVar.m25336a(this.f13418e);
        this.f13419f = mVar.m25369d().mo25446a();
        this.f13419f.mo25517a(this);
        aVar.m25336a(this.f13419f);
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a.AbstractC5383a
    /* renamed from: a */
    public void mo25321a() {
        this.f13420g.invalidateSelf();
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25337a(Canvas canvas, Matrix matrix, int i) {
        C5340d.m25653a("FillContent#draw");
        this.f13415b.setColor(this.f13418e.mo25516f().intValue());
        this.f13415b.setAlpha((int) ((((i / 255.0f) * this.f13419f.mo25516f().intValue()) / 100.0f) * 255.0f));
        this.f13414a.reset();
        for (int i2 = 0; i2 < this.f13417d.size(); i2++) {
            this.f13414a.addPath(this.f13417d.get(i2).getPath(), matrix);
        }
        canvas.drawPath(this.f13414a, this.f13415b);
        C5340d.m25652b("FillContent#draw");
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25293a(RectF rectF, Matrix matrix) {
        this.f13414a.reset();
        for (int i = 0; i < this.f13417d.size(); i++) {
            this.f13414a.addPath(this.f13417d.get(i).getPath(), matrix);
        }
        this.f13414a.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25292a(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        this.f13415b.setColorFilter(colorFilter);
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    /* renamed from: a */
    public void mo25332a(List<AbstractC5363b> list, List<AbstractC5363b> list2) {
        for (int i = 0; i < list2.size(); i++) {
            AbstractC5363b bVar = list2.get(i);
            if (bVar instanceof AbstractC5374l) {
                this.f13417d.add((AbstractC5374l) bVar);
            }
        }
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    public String getName() {
        return this.f13416c;
    }
}
