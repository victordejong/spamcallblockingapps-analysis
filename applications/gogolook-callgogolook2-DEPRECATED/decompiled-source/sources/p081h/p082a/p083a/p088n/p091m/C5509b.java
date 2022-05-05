package p081h.p082a.p083a.p088n.p091m;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import java.util.ArrayList;
import java.util.List;
import p081h.p082a.p083a.C5340d;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p088n.p089k.C5420b;
import p081h.p082a.p083a.p088n.p091m.C5512d;
/* renamed from: h.a.a.n.m.b */
/* loaded from: classes-dex2jar.jar:h/a/a/n/m/b.class */
public class C5509b extends AbstractC5506a {
    @Nullable

    /* renamed from: v */
    public final AbstractC5382a<Float, Float> f13725v;

    /* renamed from: w */
    public final List<AbstractC5506a> f13726w = new ArrayList();

    /* renamed from: x */
    public final RectF f13727x = new RectF();

    /* renamed from: y */
    public final RectF f13728y = new RectF();

    /* renamed from: h.a.a.n.m.b$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/m/b$a.class */
    public static /* synthetic */ class C5510a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13729a = new int[C5512d.EnumC5516d.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f13729a[C5512d.EnumC5516d.Add.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13729a[C5512d.EnumC5516d.Invert.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public C5509b(C5344f fVar, C5512d dVar, List<C5512d> list, C5341e eVar) {
        super(fVar, dVar);
        int i;
        C5420b s = dVar.m25299s();
        if (s != null) {
            this.f13725v = s.mo25446a();
            m25336a(this.f13725v);
            this.f13725v.mo25517a(this);
        } else {
            this.f13725v = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(eVar.m25633i().size());
        int size = list.size() - 1;
        AbstractC5506a aVar = null;
        while (true) {
            if (size >= 0) {
                C5512d dVar2 = list.get(size);
                AbstractC5506a a = AbstractC5506a.m25333a(dVar2, fVar, eVar);
                if (a != null) {
                    longSparseArray.put(a.m25327c().m25316b(), a);
                    if (aVar != null) {
                        aVar.m25335a(a);
                        aVar = null;
                    } else {
                        this.f13726w.add(0, a);
                        int i2 = C5510a.f13729a[dVar2.m25312f().ordinal()];
                        if (i2 == 1 || i2 == 2) {
                            aVar = a;
                        }
                    }
                }
                size--;
            }
        }
        for (i = 0; i < longSparseArray.size(); i++) {
            AbstractC5506a aVar2 = (AbstractC5506a) longSparseArray.get(longSparseArray.keyAt(i));
            AbstractC5506a aVar3 = (AbstractC5506a) longSparseArray.get(aVar2.m25327c().m25310h());
            if (aVar3 != null) {
                aVar2.m25328b(aVar3);
            }
        }
    }

    @Override // p081h.p082a.p083a.p088n.p091m.AbstractC5506a, p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25293a(RectF rectF, Matrix matrix) {
        super.mo25293a(rectF, matrix);
        this.f13727x.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.f13726w.size() - 1; size >= 0; size--) {
            this.f13726w.get(size).mo25293a(this.f13727x, this.f13711l);
            if (rectF.isEmpty()) {
                rectF.set(this.f13727x);
            } else {
                rectF.set(Math.min(rectF.left, this.f13727x.left), Math.min(rectF.top, this.f13727x.top), Math.max(rectF.right, this.f13727x.right), Math.max(rectF.bottom, this.f13727x.bottom));
            }
        }
    }

    @Override // p081h.p082a.p083a.p088n.p091m.AbstractC5506a, p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25292a(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        for (int i = 0; i < this.f13726w.size(); i++) {
            AbstractC5506a aVar = this.f13726w.get(i);
            String g = aVar.m25327c().m25311g();
            if (str == null) {
                aVar.mo25292a((String) null, (String) null, colorFilter);
            } else if (g.equals(str)) {
                aVar.mo25292a(str, str2, colorFilter);
            }
        }
    }

    @Override // p081h.p082a.p083a.p088n.p091m.AbstractC5506a
    /* renamed from: b */
    public void mo25320b(@FloatRange(from = 0.0d, m37520to = 1.0d) float f) {
        super.mo25320b(f);
        if (this.f13725v != null) {
            f = (this.f13725v.mo25516f().floatValue() * 1000.0f) / ((float) this.f13712m.m25594f().m25641d());
        }
        float f2 = f;
        if (this.f13713n.m25298t() != 0.0f) {
            f2 = f / this.f13713n.m25298t();
        }
        float p = this.f13713n.m25302p();
        for (int size = this.f13726w.size() - 1; size >= 0; size--) {
            this.f13726w.get(size).mo25320b(f2 - p);
        }
    }

    @Override // p081h.p082a.p083a.p088n.p091m.AbstractC5506a
    /* renamed from: b */
    public void mo25284b(Canvas canvas, Matrix matrix, int i) {
        C5340d.m25653a("CompositionLayer#draw");
        canvas.save();
        this.f13728y.set(0.0f, 0.0f, this.f13713n.m25308j(), this.f13713n.m25309i());
        matrix.mapRect(this.f13728y);
        for (int size = this.f13726w.size() - 1; size >= 0; size--) {
            if (!this.f13728y.isEmpty() ? canvas.clipRect(this.f13728y) : true) {
                this.f13726w.get(size).mo25337a(canvas, matrix, i);
            }
        }
        canvas.restore();
        C5340d.m25652b("CompositionLayer#draw");
    }
}
