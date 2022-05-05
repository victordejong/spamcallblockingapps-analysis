package p081h.p082a.p083a.p084l.p085b;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import p081h.p082a.p083a.C5340d;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p088n.p089k.C5420b;
import p081h.p082a.p083a.p088n.p089k.C5428d;
import p081h.p082a.p083a.p088n.p090l.C5502q;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
import p081h.p082a.p083a.p092o.C5530f;
/* renamed from: h.a.a.l.b.a */
/* loaded from: classes-dex2jar.jar:h/a/a/l/b/a.class */
public abstract class AbstractC5360a implements AbstractC5365d, AbstractC5382a.AbstractC5383a {

    /* renamed from: e */
    public final C5344f f13389e;

    /* renamed from: g */
    public final float[] f13391g;

    /* renamed from: i */
    public final AbstractC5382a<?, Float> f13393i;

    /* renamed from: j */
    public final AbstractC5382a<?, Integer> f13394j;

    /* renamed from: k */
    public final List<AbstractC5382a<?, Float>> f13395k;
    @Nullable

    /* renamed from: l */
    public final AbstractC5382a<?, Float> f13396l;

    /* renamed from: a */
    public final PathMeasure f13385a = new PathMeasure();

    /* renamed from: b */
    public final Path f13386b = new Path();

    /* renamed from: c */
    public final Path f13387c = new Path();

    /* renamed from: d */
    public final RectF f13388d = new RectF();

    /* renamed from: f */
    public final List<C5362b> f13390f = new ArrayList();

    /* renamed from: h */
    public final Paint f13392h = new Paint(1);

    /* renamed from: h.a.a.l.b.a$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/l/b/a$b.class */
    public static final class C5362b {

        /* renamed from: a */
        public final List<AbstractC5374l> f13397a;
        @Nullable

        /* renamed from: b */
        public final C5381r f13398b;

        public C5362b(@Nullable C5381r rVar) {
            this.f13397a = new ArrayList();
            this.f13398b = rVar;
        }
    }

    public AbstractC5360a(C5344f fVar, AbstractC5506a aVar, Paint.Cap cap, Paint.Join join, C5428d dVar, C5420b bVar, List<C5420b> list, C5420b bVar2) {
        this.f13389e = fVar;
        this.f13392h.setStyle(Paint.Style.STROKE);
        this.f13392h.setStrokeCap(cap);
        this.f13392h.setStrokeJoin(join);
        this.f13394j = dVar.mo25446a();
        this.f13393i = bVar.mo25446a();
        if (bVar2 == null) {
            this.f13396l = null;
        } else {
            this.f13396l = bVar2.mo25446a();
        }
        this.f13395k = new ArrayList(list.size());
        this.f13391g = new float[list.size()];
        for (int i = 0; i < list.size(); i++) {
            this.f13395k.add(list.get(i).mo25446a());
        }
        aVar.m25336a(this.f13394j);
        aVar.m25336a(this.f13393i);
        for (int i2 = 0; i2 < this.f13395k.size(); i2++) {
            aVar.m25336a(this.f13395k.get(i2));
        }
        AbstractC5382a<?, Float> aVar2 = this.f13396l;
        if (aVar2 != null) {
            aVar.m25336a(aVar2);
        }
        this.f13394j.mo25517a(this);
        this.f13393i.mo25517a(this);
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f13395k.get(i3).mo25517a(this);
        }
        AbstractC5382a<?, Float> aVar3 = this.f13396l;
        if (aVar3 != null) {
            aVar3.mo25517a(this);
        }
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a.AbstractC5383a
    /* renamed from: a */
    public void mo25321a() {
        this.f13389e.invalidateSelf();
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25337a(Canvas canvas, Matrix matrix, int i) {
        C5340d.m25653a("StrokeContent#draw");
        this.f13392h.setAlpha((int) ((((i / 255.0f) * this.f13394j.mo25516f().intValue()) / 100.0f) * 255.0f));
        this.f13392h.setStrokeWidth(this.f13393i.mo25516f().floatValue() * C5530f.m25252a(matrix));
        if (this.f13392h.getStrokeWidth() <= 0.0f) {
            C5340d.m25652b("StrokeContent#draw");
            return;
        }
        m25557a(matrix);
        for (int i2 = 0; i2 < this.f13390f.size(); i2++) {
            C5362b bVar = this.f13390f.get(i2);
            if (bVar.f13398b != null) {
                m25558a(canvas, bVar, matrix);
            } else {
                C5340d.m25653a("StrokeContent#buildPath");
                this.f13386b.reset();
                for (int size = bVar.f13397a.size() - 1; size >= 0; size--) {
                    this.f13386b.addPath(((AbstractC5374l) bVar.f13397a.get(size)).getPath(), matrix);
                }
                C5340d.m25652b("StrokeContent#buildPath");
                C5340d.m25653a("StrokeContent#drawPath");
                canvas.drawPath(this.f13386b, this.f13392h);
                C5340d.m25652b("StrokeContent#drawPath");
            }
        }
        C5340d.m25652b("StrokeContent#draw");
    }

    /* renamed from: a */
    public final void m25558a(Canvas canvas, C5362b bVar, Matrix matrix) {
        C5340d.m25653a("StrokeContent#applyTrimPath");
        if (bVar.f13398b == null) {
            C5340d.m25652b("StrokeContent#applyTrimPath");
            return;
        }
        this.f13386b.reset();
        for (int size = bVar.f13397a.size() - 1; size >= 0; size--) {
            this.f13386b.addPath(((AbstractC5374l) bVar.f13397a.get(size)).getPath(), matrix);
        }
        this.f13385a.setPath(this.f13386b, false);
        float length = this.f13385a.getLength();
        while (this.f13385a.nextContour()) {
            length += this.f13385a.getLength();
        }
        float floatValue = (bVar.f13398b.m25533c().mo25516f().floatValue() * length) / 360.0f;
        float floatValue2 = ((bVar.f13398b.m25532d().mo25516f().floatValue() * length) / 100.0f) + floatValue;
        float floatValue3 = ((bVar.f13398b.m25534b().mo25516f().floatValue() * length) / 100.0f) + floatValue;
        float f = 0.0f;
        for (int size2 = bVar.f13397a.size() - 1; size2 >= 0; size2--) {
            this.f13387c.set(((AbstractC5374l) bVar.f13397a.get(size2)).getPath());
            this.f13387c.transform(matrix);
            this.f13385a.setPath(this.f13387c, false);
            float length2 = this.f13385a.getLength();
            float f2 = 1.0f;
            if (floatValue3 > length) {
                float f3 = floatValue3 - length;
                if (f3 < f + length2 && f < f3) {
                    C5530f.m25251a(this.f13387c, floatValue2 > length ? (floatValue2 - length) / length2 : 0.0f, Math.min(f3 / length2, 1.0f), 0.0f);
                    canvas.drawPath(this.f13387c, this.f13392h);
                    f += length2;
                }
            }
            float f4 = f + length2;
            if (f4 >= floatValue2 && f <= floatValue3) {
                if (f4 > floatValue3 || floatValue2 >= f) {
                    float f5 = floatValue2 < f ? 0.0f : (floatValue2 - f) / length2;
                    if (floatValue3 <= f4) {
                        f2 = (floatValue3 - f) / length2;
                    }
                    C5530f.m25251a(this.f13387c, f5, f2, 0.0f);
                    canvas.drawPath(this.f13387c, this.f13392h);
                } else {
                    canvas.drawPath(this.f13387c, this.f13392h);
                }
            }
            f += length2;
        }
        C5340d.m25652b("StrokeContent#applyTrimPath");
    }

    /* renamed from: a */
    public final void m25557a(Matrix matrix) {
        C5340d.m25653a("StrokeContent#applyDashPattern");
        if (this.f13395k.isEmpty()) {
            C5340d.m25652b("StrokeContent#applyDashPattern");
            return;
        }
        float a = C5530f.m25252a(matrix);
        for (int i = 0; i < this.f13395k.size(); i++) {
            this.f13391g[i] = this.f13395k.get(i).mo25516f().floatValue();
            if (i % 2 == 0) {
                float[] fArr = this.f13391g;
                if (fArr[i] < 1.0f) {
                    fArr[i] = 1.0f;
                }
            } else {
                float[] fArr2 = this.f13391g;
                if (fArr2[i] < 0.1f) {
                    fArr2[i] = 0.1f;
                }
            }
            float[] fArr3 = this.f13391g;
            fArr3[i] = fArr3[i] * a;
        }
        AbstractC5382a<?, Float> aVar = this.f13396l;
        this.f13392h.setPathEffect(new DashPathEffect(this.f13391g, aVar == null ? 0.0f : aVar.mo25516f().floatValue()));
        C5340d.m25652b("StrokeContent#applyDashPattern");
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25293a(RectF rectF, Matrix matrix) {
        C5340d.m25653a("StrokeContent#getBounds");
        this.f13386b.reset();
        for (int i = 0; i < this.f13390f.size(); i++) {
            C5362b bVar = this.f13390f.get(i);
            for (int i2 = 0; i2 < bVar.f13397a.size(); i2++) {
                this.f13386b.addPath(((AbstractC5374l) bVar.f13397a.get(i2)).getPath(), matrix);
            }
        }
        this.f13386b.computeBounds(this.f13388d, false);
        float floatValue = this.f13393i.mo25516f().floatValue();
        RectF rectF2 = this.f13388d;
        float f = rectF2.left;
        float f2 = floatValue / 2.0f;
        rectF2.set(f - f2, rectF2.top - f2, rectF2.right + f2, rectF2.bottom + f2);
        rectF.set(this.f13388d);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        C5340d.m25652b("StrokeContent#getBounds");
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    /* renamed from: a */
    public void mo25332a(List<AbstractC5363b> list, List<AbstractC5363b> list2) {
        C5381r rVar = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            AbstractC5363b bVar = list.get(size);
            rVar = rVar;
            if (bVar instanceof C5381r) {
                C5381r rVar2 = (C5381r) bVar;
                rVar = rVar;
                if (rVar2.m25531e() == C5502q.EnumC5505c.Individually) {
                    rVar = rVar2;
                }
            }
        }
        if (rVar != null) {
            rVar.m25535a(this);
        }
        C5362b bVar2 = null;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            AbstractC5363b bVar3 = list2.get(size2);
            if (bVar3 instanceof C5381r) {
                C5381r rVar3 = (C5381r) bVar3;
                if (rVar3.m25531e() == C5502q.EnumC5505c.Individually) {
                    if (bVar2 != null) {
                        this.f13390f.add(bVar2);
                    }
                    bVar2 = new C5362b(rVar3);
                    rVar3.m25535a(this);
                }
            }
            bVar2 = bVar2;
            if (bVar3 instanceof AbstractC5374l) {
                bVar2 = bVar2;
                if (bVar2 == null) {
                    bVar2 = new C5362b(rVar);
                }
                bVar2.f13397a.add((AbstractC5374l) bVar3);
            }
        }
        if (bVar2 != null) {
            this.f13390f.add(bVar2);
        }
    }
}
