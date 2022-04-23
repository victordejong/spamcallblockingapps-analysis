package p081h.p082a.p083a.p088n.p091m;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.C5357k;
import p081h.p082a.p083a.p084l.p085b.C5364c;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p084l.p086c.C5399o;
import p081h.p082a.p083a.p088n.C5406d;
import p081h.p082a.p083a.p088n.C5409f;
import p081h.p082a.p083a.p088n.C5411g;
import p081h.p082a.p083a.p088n.p089k.C5417a;
import p081h.p082a.p083a.p088n.p089k.C5420b;
import p081h.p082a.p083a.p088n.p089k.C5447k;
import p081h.p082a.p083a.p088n.p090l.C5492n;
import p081h.p082a.p083a.p092o.C5530f;
/* renamed from: h.a.a.n.m.h */
/* loaded from: classes-dex2jar.jar:h/a/a/n/m/h.class */
public class C5520h extends AbstractC5506a {

    /* renamed from: B */
    public final C5399o f13773B;

    /* renamed from: C */
    public final C5344f f13774C;

    /* renamed from: D */
    public final C5341e f13775D;
    @Nullable

    /* renamed from: E */
    public AbstractC5382a<Integer, Integer> f13776E;
    @Nullable

    /* renamed from: F */
    public AbstractC5382a<Integer, Integer> f13777F;
    @Nullable

    /* renamed from: G */
    public AbstractC5382a<Float, Float> f13778G;
    @Nullable

    /* renamed from: H */
    public AbstractC5382a<Float, Float> f13779H;

    /* renamed from: v */
    public final char[] f13780v = new char[1];

    /* renamed from: w */
    public final RectF f13781w = new RectF();

    /* renamed from: x */
    public final Matrix f13782x = new Matrix();

    /* renamed from: y */
    public final Paint f13783y = new C5521a(this, 1);

    /* renamed from: z */
    public final Paint f13784z = new C5522b(this, 1);

    /* renamed from: A */
    public final Map<C5411g, List<C5364c>> f13772A = new HashMap();

    /* renamed from: h.a.a.n.m.h$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/m/h$a.class */
    public class C5521a extends Paint {
        public C5521a(C5520h hVar, int i) {
            super(i);
            setStyle(Paint.Style.FILL);
        }
    }

    /* renamed from: h.a.a.n.m.h$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/m/h$b.class */
    public class C5522b extends Paint {
        public C5522b(C5520h hVar, int i) {
            super(i);
            setStyle(Paint.Style.STROKE);
        }
    }

    public C5520h(C5344f fVar, C5512d dVar) {
        super(fVar, dVar);
        C5420b bVar;
        C5420b bVar2;
        C5417a aVar;
        C5417a aVar2;
        this.f13774C = fVar;
        this.f13775D = dVar.m25318a();
        this.f13773B = dVar.m25301q().mo25446a();
        this.f13773B.mo25517a(this);
        m25336a(this.f13773B);
        C5447k r = dVar.m25300r();
        if (!(r == null || (aVar2 = r.f13578a) == null)) {
            this.f13776E = aVar2.mo25446a();
            this.f13776E.mo25517a(this);
            m25336a(this.f13776E);
        }
        if (!(r == null || (aVar = r.f13579b) == null)) {
            this.f13777F = aVar.mo25446a();
            this.f13777F.mo25517a(this);
            m25336a(this.f13777F);
        }
        if (!(r == null || (bVar2 = r.f13580c) == null)) {
            this.f13778G = bVar2.mo25446a();
            this.f13778G.mo25517a(this);
            m25336a(this.f13778G);
        }
        if (r != null && (bVar = r.f13581d) != null) {
            this.f13779H = bVar.mo25446a();
            this.f13779H.mo25517a(this);
            m25336a(this.f13779H);
        }
    }

    /* renamed from: a */
    public final List<C5364c> m25287a(C5411g gVar) {
        if (this.f13772A.containsKey(gVar)) {
            return this.f13772A.get(gVar);
        }
        List<C5492n> a = gVar.m25487a();
        int size = a.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new C5364c(this.f13774C, this, a.get(i)));
        }
        this.f13772A.put(gVar, arrayList);
        return arrayList;
    }

    /* renamed from: a */
    public final void m25291a(char c, C5406d dVar, Canvas canvas) {
        char[] cArr = this.f13780v;
        cArr[0] = c;
        if (dVar.f13551j) {
            m25285a(cArr, this.f13783y, canvas);
            m25285a(this.f13780v, this.f13784z, canvas);
            return;
        }
        m25285a(cArr, this.f13784z, canvas);
        m25285a(this.f13780v, this.f13783y, canvas);
    }

    /* renamed from: a */
    public final void m25290a(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() != 0) {
            if (paint.getStyle() != Paint.Style.STROKE || paint.getStrokeWidth() != 0.0f) {
                canvas.drawPath(path, paint);
            }
        }
    }

    /* renamed from: a */
    public final void m25289a(C5406d dVar, Matrix matrix, C5409f fVar, Canvas canvas) {
        float f = dVar.f13544c / 100.0f;
        float a = C5530f.m25252a(matrix);
        String str = dVar.f13542a;
        for (int i = 0; i < str.length(); i++) {
            C5411g gVar = this.f13775D.m25646b().get(C5411g.m25486a(str.charAt(i), fVar.m25491a(), fVar.m25489c()));
            if (gVar != null) {
                m25286a(gVar, matrix, f, dVar, canvas);
                float b = (float) gVar.m25485b();
                float c = this.f13775D.m25643c();
                float f2 = dVar.f13546e / 10.0f;
                AbstractC5382a<Float, Float> aVar = this.f13779H;
                float f3 = f2;
                if (aVar != null) {
                    f3 = f2 + aVar.mo25516f().floatValue();
                }
                canvas.translate((b * f * c * a) + (f3 * a), 0.0f);
            }
        }
    }

    /* renamed from: a */
    public final void m25288a(C5406d dVar, C5409f fVar, Matrix matrix, Canvas canvas) {
        float a = C5530f.m25252a(matrix);
        Typeface a2 = this.f13774C.m25608a(fVar.m25491a(), fVar.m25489c());
        if (a2 != null) {
            String str = dVar.f13542a;
            C5357k m = this.f13774C.m25587m();
            if (m == null) {
                this.f13783y.setTypeface(a2);
                this.f13783y.setTextSize(dVar.f13544c * this.f13775D.m25643c());
                this.f13784z.setTypeface(this.f13783y.getTypeface());
                this.f13784z.setTextSize(this.f13783y.getTextSize());
                for (int i = 0; i < str.length(); i++) {
                    char charAt = str.charAt(i);
                    m25291a(charAt, dVar, canvas);
                    char[] cArr = this.f13780v;
                    cArr[0] = charAt;
                    float measureText = this.f13783y.measureText(cArr, 0, 1);
                    float f = dVar.f13546e / 10.0f;
                    AbstractC5382a<Float, Float> aVar = this.f13779H;
                    float f2 = f;
                    if (aVar != null) {
                        f2 = f + aVar.mo25516f().floatValue();
                    }
                    canvas.translate(measureText + (f2 * a), 0.0f);
                }
                return;
            }
            m.m25570a(str);
            throw null;
        }
    }

    /* renamed from: a */
    public final void m25286a(C5411g gVar, Matrix matrix, float f, C5406d dVar, Canvas canvas) {
        List<C5364c> a = m25287a(gVar);
        for (int i = 0; i < a.size(); i++) {
            Path path = a.get(i).getPath();
            path.computeBounds(this.f13781w, false);
            this.f13782x.set(matrix);
            this.f13782x.preScale(f, f);
            path.transform(this.f13782x);
            if (dVar.f13551j) {
                m25290a(path, this.f13783y, canvas);
                m25290a(path, this.f13784z, canvas);
            } else {
                m25290a(path, this.f13784z, canvas);
                m25290a(path, this.f13783y, canvas);
            }
        }
    }

    /* renamed from: a */
    public final void m25285a(char[] cArr, Paint paint, Canvas canvas) {
        if (paint.getColor() != 0) {
            if (paint.getStyle() != Paint.Style.STROKE || paint.getStrokeWidth() != 0.0f) {
                canvas.drawText(cArr, 0, 1, 0.0f, 0.0f, paint);
            }
        }
    }

    @Override // p081h.p082a.p083a.p088n.p091m.AbstractC5506a
    /* renamed from: b */
    public void mo25284b(Canvas canvas, Matrix matrix, int i) {
        canvas.save();
        if (!this.f13774C.m25580t()) {
            canvas.setMatrix(matrix);
        }
        C5406d f = this.f13773B.mo25516f();
        C5409f fVar = this.f13775D.m25635g().get(f.f13543b);
        if (fVar == null) {
            canvas.restore();
            return;
        }
        AbstractC5382a<Integer, Integer> aVar = this.f13776E;
        if (aVar != null) {
            this.f13783y.setColor(aVar.mo25516f().intValue());
        } else {
            this.f13783y.setColor(f.f13548g);
        }
        AbstractC5382a<Integer, Integer> aVar2 = this.f13777F;
        if (aVar2 != null) {
            this.f13784z.setColor(aVar2.mo25516f().intValue());
        } else {
            this.f13784z.setColor(f.f13549h);
        }
        int intValue = (this.f13719t.m25509c().mo25516f().intValue() * 255) / 100;
        this.f13783y.setAlpha(intValue);
        this.f13784z.setAlpha(intValue);
        AbstractC5382a<Float, Float> aVar3 = this.f13778G;
        if (aVar3 != null) {
            this.f13784z.setStrokeWidth(aVar3.mo25516f().floatValue());
        } else {
            this.f13784z.setStrokeWidth(f.f13550i * this.f13775D.m25643c() * C5530f.m25252a(matrix));
        }
        if (this.f13774C.m25580t()) {
            m25289a(f, matrix, fVar, canvas);
        } else {
            m25288a(f, fVar, matrix, canvas);
        }
        canvas.restore();
    }
}
