package p081h.p082a.p083a.p084l.p085b;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p084l.p086c.C5400p;
import p081h.p082a.p083a.p088n.p090l.C5484k;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
import p081h.p082a.p083a.p092o.C5529e;
/* renamed from: h.a.a.l.b.o */
/* loaded from: classes-dex2jar.jar:h/a/a/l/b/o.class */
public class C5378o implements AbstractC5365d, AbstractC5374l, AbstractC5370i, AbstractC5382a.AbstractC5383a {

    /* renamed from: a */
    public final Matrix f13475a = new Matrix();

    /* renamed from: b */
    public final Path f13476b = new Path();

    /* renamed from: c */
    public final C5344f f13477c;

    /* renamed from: d */
    public final AbstractC5506a f13478d;

    /* renamed from: e */
    public final String f13479e;

    /* renamed from: f */
    public final AbstractC5382a<Float, Float> f13480f;

    /* renamed from: g */
    public final AbstractC5382a<Float, Float> f13481g;

    /* renamed from: h */
    public final C5400p f13482h;

    /* renamed from: i */
    public C5364c f13483i;

    public C5378o(C5344f fVar, AbstractC5506a aVar, C5484k kVar) {
        this.f13477c = fVar;
        this.f13478d = aVar;
        this.f13479e = kVar.m25383b();
        this.f13480f = kVar.m25384a().mo25446a();
        aVar.m25336a(this.f13480f);
        this.f13480f.mo25517a(this);
        this.f13481g = kVar.m25382c().mo25446a();
        aVar.m25336a(this.f13481g);
        this.f13481g.mo25517a(this);
        this.f13482h = kVar.m25381d().m25457a();
        this.f13482h.m25511a(aVar);
        this.f13482h.m25512a(this);
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a.AbstractC5383a
    /* renamed from: a */
    public void mo25321a() {
        this.f13477c.invalidateSelf();
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25337a(Canvas canvas, Matrix matrix, int i) {
        float floatValue = this.f13480f.mo25516f().floatValue();
        float floatValue2 = this.f13481g.mo25516f().floatValue();
        float floatValue3 = this.f13482h.m25508d().mo25516f().floatValue() / 100.0f;
        float floatValue4 = this.f13482h.m25514a().mo25516f().floatValue() / 100.0f;
        for (int i2 = ((int) floatValue) - 1; i2 >= 0; i2--) {
            this.f13475a.set(matrix);
            float f = i2;
            this.f13475a.preConcat(this.f13482h.m25513a(f + floatValue2));
            this.f13483i.mo25337a(canvas, this.f13475a, (int) (i * C5529e.m25256b(floatValue3, floatValue4, f / floatValue)));
        }
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25293a(RectF rectF, Matrix matrix) {
        this.f13483i.mo25293a(rectF, matrix);
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25292a(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        this.f13483i.mo25292a(str, str2, colorFilter);
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    /* renamed from: a */
    public void mo25332a(List<AbstractC5363b> list, List<AbstractC5363b> list2) {
        this.f13483i.mo25332a(list, list2);
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5370i
    /* renamed from: a */
    public void mo25537a(ListIterator<AbstractC5363b> listIterator) {
        if (this.f13483i == null) {
            while (listIterator.hasPrevious() && listIterator.previous() != this) {
            }
            ArrayList arrayList = new ArrayList();
            while (listIterator.hasPrevious()) {
                arrayList.add(listIterator.previous());
                listIterator.remove();
            }
            Collections.reverse(arrayList);
            this.f13483i = new C5364c(this.f13477c, this.f13478d, "Repeater", arrayList, null);
        }
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    public String getName() {
        return this.f13479e;
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5374l
    public Path getPath() {
        Path path = this.f13483i.getPath();
        this.f13476b.reset();
        float floatValue = this.f13480f.mo25516f().floatValue();
        float floatValue2 = this.f13481g.mo25516f().floatValue();
        for (int i = ((int) floatValue) - 1; i >= 0; i--) {
            this.f13475a.set(this.f13482h.m25513a(i + floatValue2));
            this.f13476b.addPath(path, this.f13475a);
        }
        return this.f13476b;
    }
}
