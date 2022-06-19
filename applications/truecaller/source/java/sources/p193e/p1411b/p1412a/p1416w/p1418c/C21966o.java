package p193e.p1411b.p1412a.p1416w.p1418c;

import android.graphics.Matrix;
import android.graphics.PointF;
import e.b.a.y.j.b;
import e.b.a.y.j.d;
import e.b.a.y.j.g;
import java.util.Collections;
import p193e.p1411b.p1412a.AbstractC21941o;
import p193e.p1411b.p1412a.p1415c0.C21907a;
import p193e.p1411b.p1412a.p1415c0.C21909c;
import p193e.p1411b.p1412a.p1415c0.C21910d;
import p193e.p1411b.p1412a.p1416w.p1418c.AbstractC21959a;
import p193e.p1411b.p1412a.p1420y.p1421j.AbstractC21984m;
import p193e.p1411b.p1412a.p1420y.p1421j.C21980e;
import p193e.p1411b.p1412a.p1420y.p1421j.C21983l;
/* renamed from: e.b.a.w.c.o */
/* loaded from: classes-dex2jar.jar:e/b/a/w/c/o.class */
public class C21966o {

    /* renamed from: a */
    public final Matrix f60973a = new Matrix();

    /* renamed from: b */
    public final Matrix f60974b;

    /* renamed from: c */
    public final Matrix f60975c;

    /* renamed from: d */
    public final Matrix f60976d;

    /* renamed from: e */
    public final float[] f60977e;

    /* renamed from: f */
    public AbstractC21959a<PointF, PointF> f60978f;

    /* renamed from: g */
    public AbstractC21959a<?, PointF> f60979g;

    /* renamed from: h */
    public AbstractC21959a<C21910d, C21910d> f60980h;

    /* renamed from: i */
    public AbstractC21959a<Float, Float> f60981i;

    /* renamed from: j */
    public AbstractC21959a<Integer, Integer> f60982j;

    /* renamed from: k */
    public c f60983k;

    /* renamed from: l */
    public c f60984l;

    /* renamed from: m */
    public AbstractC21959a<?, Float> f60985m;

    /* renamed from: n */
    public AbstractC21959a<?, Float> f60986n;

    public C21966o(C21983l c21983l) {
        C21980e c21980e = c21983l.f61040a;
        this.f60978f = c21980e == null ? null : c21980e.mo8840f();
        AbstractC21984m<PointF, PointF> abstractC21984m = c21983l.f61041b;
        this.f60979g = abstractC21984m == null ? null : abstractC21984m.mo8840f();
        g gVar = c21983l.f61042c;
        this.f60980h = gVar == null ? null : gVar.f();
        b bVar = c21983l.f61043d;
        this.f60981i = bVar == null ? null : bVar.f();
        b bVar2 = c21983l.f61045f;
        c cVar = bVar2 == null ? null : (c) bVar2.f();
        this.f60983k = cVar;
        if (cVar != null) {
            this.f60974b = new Matrix();
            this.f60975c = new Matrix();
            this.f60976d = new Matrix();
            this.f60977e = new float[9];
        } else {
            this.f60974b = null;
            this.f60975c = null;
            this.f60976d = null;
            this.f60977e = null;
        }
        b bVar3 = c21983l.f61046g;
        this.f60984l = bVar3 == null ? null : (c) bVar3.f();
        d dVar = c21983l.f61044e;
        if (dVar != null) {
            this.f60982j = dVar.f();
        }
        b bVar4 = c21983l.f61047h;
        if (bVar4 != null) {
            this.f60985m = bVar4.f();
        } else {
            this.f60985m = null;
        }
        b bVar5 = c21983l.f61048i;
        if (bVar5 != null) {
            this.f60986n = bVar5.f();
        } else {
            this.f60986n = null;
        }
    }

    /* renamed from: a */
    public void m8862a(e.b.a.y.l.b bVar) {
        bVar.b(this.f60982j);
        bVar.b(this.f60985m);
        bVar.b(this.f60986n);
        bVar.b(this.f60978f);
        bVar.b(this.f60979g);
        bVar.b(this.f60980h);
        bVar.b(this.f60981i);
        bVar.b(this.f60983k);
        bVar.b(this.f60984l);
    }

    /* renamed from: b */
    public void m8861b(AbstractC21959a.AbstractC21960a abstractC21960a) {
        AbstractC21959a<Integer, Integer> abstractC21959a = this.f60982j;
        if (abstractC21959a != null) {
            abstractC21959a.f60952a.add(abstractC21960a);
        }
        AbstractC21959a<?, Float> abstractC21959a2 = this.f60985m;
        if (abstractC21959a2 != null) {
            abstractC21959a2.f60952a.add(abstractC21960a);
        }
        AbstractC21959a<?, Float> abstractC21959a3 = this.f60986n;
        if (abstractC21959a3 != null) {
            abstractC21959a3.f60952a.add(abstractC21960a);
        }
        AbstractC21959a<PointF, PointF> abstractC21959a4 = this.f60978f;
        if (abstractC21959a4 != null) {
            abstractC21959a4.f60952a.add(abstractC21960a);
        }
        AbstractC21959a<?, PointF> abstractC21959a5 = this.f60979g;
        if (abstractC21959a5 != null) {
            abstractC21959a5.f60952a.add(abstractC21960a);
        }
        AbstractC21959a<C21910d, C21910d> abstractC21959a6 = this.f60980h;
        if (abstractC21959a6 != null) {
            abstractC21959a6.f60952a.add(abstractC21960a);
        }
        AbstractC21959a<Float, Float> abstractC21959a7 = this.f60981i;
        if (abstractC21959a7 != null) {
            abstractC21959a7.f60952a.add(abstractC21960a);
        }
        c cVar = this.f60983k;
        if (cVar != null) {
            cVar.f60952a.add(abstractC21960a);
        }
        c cVar2 = this.f60984l;
        if (cVar2 != null) {
            cVar2.f60952a.add(abstractC21960a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public <T> boolean m8860c(T t, C21909c<T> c21909c) {
        c cVar;
        c cVar2;
        AbstractC21959a<?, Float> abstractC21959a;
        AbstractC21959a<?, Float> abstractC21959a2;
        if (t == AbstractC21941o.f60905e) {
            AbstractC21959a<PointF, PointF> abstractC21959a3 = this.f60978f;
            if (abstractC21959a3 == null) {
                this.f60978f = new C21967p(c21909c, new PointF());
                return true;
            }
            C21909c<PointF> c21909c2 = abstractC21959a3.f60956e;
            abstractC21959a3.f60956e = c21909c;
            return true;
        } else if (t == AbstractC21941o.f60906f) {
            AbstractC21959a<?, PointF> abstractC21959a4 = this.f60979g;
            if (abstractC21959a4 == null) {
                this.f60979g = new C21967p(c21909c, new PointF());
                return true;
            }
            C21909c<PointF> c21909c3 = abstractC21959a4.f60956e;
            abstractC21959a4.f60956e = c21909c;
            return true;
        } else if (t == AbstractC21941o.f60911k) {
            AbstractC21959a<C21910d, C21910d> abstractC21959a5 = this.f60980h;
            if (abstractC21959a5 == null) {
                this.f60980h = new C21967p(c21909c, new C21910d());
                return true;
            }
            C21909c<C21910d> c21909c4 = abstractC21959a5.f60956e;
            abstractC21959a5.f60956e = c21909c;
            return true;
        } else if (t == AbstractC21941o.f60912l) {
            AbstractC21959a<Float, Float> abstractC21959a6 = this.f60981i;
            if (abstractC21959a6 == null) {
                this.f60981i = new C21967p(c21909c, Float.valueOf(0.0f));
                return true;
            }
            C21909c<Float> c21909c5 = abstractC21959a6.f60956e;
            abstractC21959a6.f60956e = c21909c;
            return true;
        } else if (t == AbstractC21941o.f60903c) {
            AbstractC21959a<Integer, Integer> abstractC21959a7 = this.f60982j;
            if (abstractC21959a7 == null) {
                this.f60982j = new C21967p(c21909c, 100);
                return true;
            }
            C21909c<Integer> c21909c6 = abstractC21959a7.f60956e;
            abstractC21959a7.f60956e = c21909c;
            return true;
        } else if (t == AbstractC21941o.f60925y && (abstractC21959a2 = this.f60985m) != null) {
            if (abstractC21959a2 == null) {
                this.f60985m = new C21967p(c21909c, 100);
                return true;
            }
            C21909c<Float> c21909c7 = abstractC21959a2.f60956e;
            abstractC21959a2.f60956e = c21909c;
            return true;
        } else if (t == AbstractC21941o.f60926z && (abstractC21959a = this.f60986n) != null) {
            if (abstractC21959a == null) {
                this.f60986n = new C21967p(c21909c, 100);
                return true;
            }
            C21909c<Float> c21909c8 = abstractC21959a.f60956e;
            abstractC21959a.f60956e = c21909c;
            return true;
        } else if (t == AbstractC21941o.f60913m && (cVar2 = this.f60983k) != null) {
            if (cVar2 == null) {
                this.f60983k = new c(Collections.singletonList(new C21907a(Float.valueOf(0.0f))));
            }
            c cVar3 = this.f60983k;
            Object obj = cVar3.f60956e;
            cVar3.f60956e = c21909c;
            return true;
        } else if (t != AbstractC21941o.f60914n || (cVar = this.f60984l) == null) {
            return false;
        } else {
            if (cVar == null) {
                this.f60984l = new c(Collections.singletonList(new C21907a(Float.valueOf(0.0f))));
            }
            c cVar4 = this.f60984l;
            Object obj2 = cVar4.f60956e;
            cVar4.f60956e = c21909c;
            return true;
        }
    }

    /* renamed from: d */
    public final void m8859d() {
        for (int i = 0; i < 9; i++) {
            this.f60977e[i] = 0.0f;
        }
    }

    /* renamed from: e */
    public Matrix m8858e() {
        this.f60973a.reset();
        AbstractC21959a<?, PointF> abstractC21959a = this.f60979g;
        if (abstractC21959a != null) {
            PointF mo8855f = abstractC21959a.mo8855f();
            float f = mo8855f.x;
            if (f != 0.0f || mo8855f.y != 0.0f) {
                this.f60973a.preTranslate(f, mo8855f.y);
            }
        }
        c cVar = this.f60981i;
        if (cVar != null) {
            float floatValue = cVar instanceof C21967p ? cVar.mo8855f().floatValue() : cVar.j();
            if (floatValue != 0.0f) {
                this.f60973a.preRotate(floatValue);
            }
        }
        if (this.f60983k != null) {
            c cVar2 = this.f60984l;
            float cos = cVar2 == null ? 0.0f : (float) Math.cos(Math.toRadians((-cVar2.j()) + 90.0f));
            c cVar3 = this.f60984l;
            float sin = cVar3 == null ? 1.0f : (float) Math.sin(Math.toRadians((-cVar3.j()) + 90.0f));
            float tan = (float) Math.tan(Math.toRadians(this.f60983k.j()));
            m8859d();
            float[] fArr = this.f60977e;
            fArr[0] = cos;
            fArr[1] = sin;
            float f2 = -sin;
            fArr[3] = f2;
            fArr[4] = cos;
            fArr[8] = 1.0f;
            this.f60974b.setValues(fArr);
            m8859d();
            float[] fArr2 = this.f60977e;
            fArr2[0] = 1.0f;
            fArr2[3] = tan;
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.f60975c.setValues(fArr2);
            m8859d();
            float[] fArr3 = this.f60977e;
            fArr3[0] = cos;
            fArr3[1] = f2;
            fArr3[3] = sin;
            fArr3[4] = cos;
            fArr3[8] = 1.0f;
            this.f60976d.setValues(fArr3);
            this.f60975c.preConcat(this.f60974b);
            this.f60976d.preConcat(this.f60975c);
            this.f60973a.preConcat(this.f60976d);
        }
        AbstractC21959a<C21910d, C21910d> abstractC21959a2 = this.f60980h;
        if (abstractC21959a2 != null) {
            C21910d mo8855f2 = abstractC21959a2.mo8855f();
            float f3 = mo8855f2.f60821a;
            if (f3 != 1.0f || mo8855f2.f60822b != 1.0f) {
                this.f60973a.preScale(f3, mo8855f2.f60822b);
            }
        }
        AbstractC21959a<PointF, PointF> abstractC21959a3 = this.f60978f;
        if (abstractC21959a3 != null) {
            PointF mo8855f3 = abstractC21959a3.mo8855f();
            float f4 = mo8855f3.x;
            if (f4 != 0.0f || mo8855f3.y != 0.0f) {
                this.f60973a.preTranslate(-f4, -mo8855f3.y);
            }
        }
        return this.f60973a;
    }

    /* renamed from: f */
    public Matrix m8857f(float f) {
        AbstractC21959a<?, PointF> abstractC21959a = this.f60979g;
        PointF mo8855f = abstractC21959a == null ? null : abstractC21959a.mo8855f();
        AbstractC21959a<C21910d, C21910d> abstractC21959a2 = this.f60980h;
        C21910d mo8855f2 = abstractC21959a2 == null ? null : abstractC21959a2.mo8855f();
        this.f60973a.reset();
        if (mo8855f != null) {
            this.f60973a.preTranslate(mo8855f.x * f, mo8855f.y * f);
        }
        if (mo8855f2 != null) {
            double d = f;
            this.f60973a.preScale((float) Math.pow(mo8855f2.f60821a, d), (float) Math.pow(mo8855f2.f60822b, d));
        }
        AbstractC21959a<Float, Float> abstractC21959a3 = this.f60981i;
        if (abstractC21959a3 != null) {
            float floatValue = abstractC21959a3.mo8855f().floatValue();
            AbstractC21959a<PointF, PointF> abstractC21959a4 = this.f60978f;
            PointF mo8855f3 = abstractC21959a4 == null ? null : abstractC21959a4.mo8855f();
            Matrix matrix = this.f60973a;
            float f2 = 0.0f;
            float f3 = mo8855f3 == null ? 0.0f : mo8855f3.x;
            if (mo8855f3 != null) {
                f2 = mo8855f3.y;
            }
            matrix.preRotate(floatValue * f, f3, f2);
        }
        return this.f60973a;
    }
}
