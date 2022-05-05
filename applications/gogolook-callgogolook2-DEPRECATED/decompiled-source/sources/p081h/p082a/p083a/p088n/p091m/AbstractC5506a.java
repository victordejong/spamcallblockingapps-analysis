package p081h.p082a.p083a.p088n.p091m;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import androidx.annotation.CallSuper;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p081h.p082a.p083a.C5340d;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p085b.AbstractC5363b;
import p081h.p082a.p083a.p084l.p085b.AbstractC5365d;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p084l.p086c.C5385c;
import p081h.p082a.p083a.p084l.p086c.C5389g;
import p081h.p082a.p083a.p084l.p086c.C5398n;
import p081h.p082a.p083a.p084l.p086c.C5400p;
import p081h.p082a.p083a.p088n.p090l.C5469g;
import p081h.p082a.p083a.p088n.p090l.C5486l;
import p081h.p082a.p083a.p088n.p091m.C5512d;
/* renamed from: h.a.a.n.m.a */
/* loaded from: classes-dex2jar.jar:h/a/a/n/m/a.class */
public abstract class AbstractC5506a implements AbstractC5365d, AbstractC5382a.AbstractC5383a {

    /* renamed from: k */
    public final String f13710k;

    /* renamed from: m */
    public final C5344f f13712m;

    /* renamed from: n */
    public final C5512d f13713n;
    @Nullable

    /* renamed from: o */
    public C5389g f13714o;
    @Nullable

    /* renamed from: p */
    public AbstractC5506a f13715p;
    @Nullable

    /* renamed from: q */
    public AbstractC5506a f13716q;

    /* renamed from: r */
    public List<AbstractC5506a> f13717r;

    /* renamed from: t */
    public final C5400p f13719t;

    /* renamed from: a */
    public final Path f13700a = new Path();

    /* renamed from: b */
    public final Matrix f13701b = new Matrix();

    /* renamed from: c */
    public final Paint f13702c = new Paint(1);

    /* renamed from: d */
    public final Paint f13703d = new Paint(1);

    /* renamed from: e */
    public final Paint f13704e = new Paint(1);

    /* renamed from: f */
    public final Paint f13705f = new Paint();

    /* renamed from: g */
    public final RectF f13706g = new RectF();

    /* renamed from: h */
    public final RectF f13707h = new RectF();

    /* renamed from: i */
    public final RectF f13708i = new RectF();

    /* renamed from: j */
    public final RectF f13709j = new RectF();

    /* renamed from: l */
    public final Matrix f13711l = new Matrix();

    /* renamed from: s */
    public final List<AbstractC5382a<?, ?>> f13718s = new ArrayList();

    /* renamed from: u */
    public boolean f13720u = true;

    /* renamed from: h.a.a.n.m.a$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/m/a$a.class */
    public class C5507a implements AbstractC5382a.AbstractC5383a {

        /* renamed from: a */
        public final /* synthetic */ C5385c f13721a;

        public C5507a(C5385c cVar) {
            this.f13721a = cVar;
        }

        @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a.AbstractC5383a
        /* renamed from: a */
        public void mo25321a() {
            AbstractC5506a.this.m25331a(this.f13721a.mo25516f().floatValue() == 1.0f);
        }
    }

    /* renamed from: h.a.a.n.m.a$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/m/a$b.class */
    public static /* synthetic */ class C5508b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13723a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f13724b = new int[C5469g.EnumC5472c.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008e -> B:57:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0092 -> B:51:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0096 -> B:45:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009a -> B:10:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x009e -> B:55:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a2 -> B:49:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a6 -> B:43:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00aa -> B:37:0x006a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00ae -> B:53:0x0075). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b2 -> B:47:0x0081). Please submit an issue!!! */
        static {
            try {
                f13724b[C5469g.EnumC5472c.MaskModeSubtract.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13724b[C5469g.EnumC5472c.MaskModeIntersect.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13724b[C5469g.EnumC5472c.MaskModeUnknown.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f13724b[C5469g.EnumC5472c.MaskModeAdd.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            f13723a = new int[C5512d.EnumC5515c.values().length];
            try {
                f13723a[C5512d.EnumC5515c.Shape.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f13723a[C5512d.EnumC5515c.PreComp.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f13723a[C5512d.EnumC5515c.Solid.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f13723a[C5512d.EnumC5515c.Image.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f13723a[C5512d.EnumC5515c.Null.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f13723a[C5512d.EnumC5515c.Text.ordinal()] = 6;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f13723a[C5512d.EnumC5515c.Unknown.ordinal()] = 7;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    public AbstractC5506a(C5344f fVar, C5512d dVar) {
        this.f13712m = fVar;
        this.f13713n = dVar;
        this.f13710k = dVar.m25311g() + "#draw";
        this.f13705f.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.f13703d.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        if (dVar.m25312f() == C5512d.EnumC5516d.Invert) {
            this.f13704e.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        } else {
            this.f13704e.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        }
        this.f13719t = dVar.m25297u().m25457a();
        this.f13719t.m25512a((AbstractC5382a.AbstractC5383a) this);
        this.f13719t.m25511a(this);
        if (dVar.m25313e() != null && !dVar.m25313e().isEmpty()) {
            this.f13714o = new C5389g(dVar.m25313e());
            for (AbstractC5382a<C5486l, Path> aVar : this.f13714o.m25524a()) {
                m25336a(aVar);
                aVar.mo25517a(this);
            }
            for (AbstractC5382a<Integer, Integer> aVar2 : this.f13714o.m25522c()) {
                m25336a(aVar2);
                aVar2.mo25517a(this);
            }
        }
        m25322g();
    }

    @Nullable
    /* renamed from: a */
    public static AbstractC5506a m25333a(C5512d dVar, C5344f fVar, C5341e eVar) {
        switch (C5508b.f13723a[dVar.m25314d().ordinal()]) {
            case 1:
                return new C5518f(fVar, dVar);
            case 2:
                return new C5509b(fVar, dVar, eVar.m25644b(dVar.m25307k()), eVar);
            case 3:
                return new C5519g(fVar, dVar);
            case 4:
                return new C5511c(fVar, dVar, eVar.m25643c());
            case 5:
                return new C5517e(fVar, dVar);
            case 6:
                return new C5520h(fVar, dVar);
            default:
                String str = "Unknown layer type " + dVar.m25314d();
                return null;
        }
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a.AbstractC5383a
    /* renamed from: a */
    public void mo25321a() {
        m25323f();
    }

    /* renamed from: a */
    public final void m25340a(float f) {
        this.f13712m.m25594f().m25629m().m25574a(this.f13713n.m25311g(), f);
    }

    /* renamed from: a */
    public final void m25339a(Canvas canvas) {
        C5340d.m25653a("Layer#clearLayer");
        RectF rectF = this.f13706g;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.f13705f);
        C5340d.m25652b("Layer#clearLayer");
    }

    @SuppressLint({"WrongConstant"})
    /* renamed from: a */
    public final void m25338a(Canvas canvas, Matrix matrix) {
        C5340d.m25653a("Layer#drawMask");
        C5340d.m25653a("Layer#saveLayer");
        canvas.saveLayer(this.f13706g, this.f13703d, 19);
        C5340d.m25652b("Layer#saveLayer");
        m25339a(canvas);
        int size = this.f13714o.m25523b().size();
        for (int i = 0; i < size; i++) {
            C5469g gVar = this.f13714o.m25523b().get(i);
            this.f13700a.set(this.f13714o.m25524a().get(i).mo25516f());
            this.f13700a.transform(matrix);
            if (C5508b.f13724b[gVar.m25409a().ordinal()] != 1) {
                this.f13700a.setFillType(Path.FillType.WINDING);
            } else {
                this.f13700a.setFillType(Path.FillType.INVERSE_WINDING);
            }
            AbstractC5382a<Integer, Integer> aVar = this.f13714o.m25522c().get(i);
            int alpha = this.f13702c.getAlpha();
            this.f13702c.setAlpha((int) (aVar.mo25516f().intValue() * 2.55f));
            canvas.drawPath(this.f13700a, this.f13702c);
            this.f13702c.setAlpha(alpha);
        }
        C5340d.m25653a("Layer#restoreLayer");
        canvas.restore();
        C5340d.m25652b("Layer#restoreLayer");
        C5340d.m25652b("Layer#drawMask");
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    @SuppressLint({"WrongConstant"})
    /* renamed from: a */
    public void mo25337a(Canvas canvas, Matrix matrix, int i) {
        C5340d.m25653a(this.f13710k);
        if (!this.f13720u) {
            C5340d.m25652b(this.f13710k);
            return;
        }
        m25330b();
        C5340d.m25653a("Layer#parentMatrix");
        this.f13701b.reset();
        this.f13701b.set(matrix);
        for (int size = this.f13717r.size() - 1; size >= 0; size--) {
            this.f13701b.preConcat(this.f13717r.get(size).f13719t.m25510b());
        }
        C5340d.m25652b("Layer#parentMatrix");
        int intValue = (int) ((((i / 255.0f) * this.f13719t.m25509c().mo25516f().intValue()) / 100.0f) * 255.0f);
        if (m25324e() || m25325d()) {
            C5340d.m25653a("Layer#computeBounds");
            this.f13706g.set(0.0f, 0.0f, 0.0f, 0.0f);
            mo25293a(this.f13706g, this.f13701b);
            m25326c(this.f13706g, this.f13701b);
            this.f13701b.preConcat(this.f13719t.m25510b());
            m25329b(this.f13706g, this.f13701b);
            this.f13706g.set(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
            C5340d.m25652b("Layer#computeBounds");
            C5340d.m25653a("Layer#saveLayer");
            canvas.saveLayer(this.f13706g, this.f13702c, 31);
            C5340d.m25652b("Layer#saveLayer");
            m25339a(canvas);
            C5340d.m25653a("Layer#drawLayer");
            mo25284b(canvas, this.f13701b, intValue);
            C5340d.m25652b("Layer#drawLayer");
            if (m25325d()) {
                m25338a(canvas, this.f13701b);
            }
            if (m25324e()) {
                C5340d.m25653a("Layer#drawMatte");
                C5340d.m25653a("Layer#saveLayer");
                canvas.saveLayer(this.f13706g, this.f13704e, 19);
                C5340d.m25652b("Layer#saveLayer");
                m25339a(canvas);
                this.f13715p.mo25337a(canvas, matrix, intValue);
                C5340d.m25653a("Layer#restoreLayer");
                canvas.restore();
                C5340d.m25652b("Layer#restoreLayer");
                C5340d.m25652b("Layer#drawMatte");
            }
            C5340d.m25653a("Layer#restoreLayer");
            canvas.restore();
            C5340d.m25652b("Layer#restoreLayer");
            m25340a(C5340d.m25652b(this.f13710k));
            return;
        }
        this.f13701b.preConcat(this.f13719t.m25510b());
        C5340d.m25653a("Layer#drawLayer");
        mo25284b(canvas, this.f13701b, intValue);
        C5340d.m25652b("Layer#drawLayer");
        m25340a(C5340d.m25652b(this.f13710k));
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    @CallSuper
    /* renamed from: a */
    public void mo25293a(RectF rectF, Matrix matrix) {
        this.f13711l.set(matrix);
        this.f13711l.preConcat(this.f13719t.m25510b());
    }

    /* renamed from: a */
    public void m25336a(AbstractC5382a<?, ?> aVar) {
        if (!(aVar instanceof C5398n)) {
            this.f13718s.add(aVar);
        }
    }

    /* renamed from: a */
    public void m25335a(@Nullable AbstractC5506a aVar) {
        this.f13715p = aVar;
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25292a(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    /* renamed from: a */
    public void mo25332a(List<AbstractC5363b> list, List<AbstractC5363b> list2) {
    }

    /* renamed from: a */
    public final void m25331a(boolean z) {
        if (z != this.f13720u) {
            this.f13720u = z;
            m25323f();
        }
    }

    /* renamed from: b */
    public final void m25330b() {
        if (this.f13717r == null) {
            if (this.f13716q == null) {
                this.f13717r = Collections.emptyList();
                return;
            }
            this.f13717r = new ArrayList();
            for (AbstractC5506a aVar = this.f13716q; aVar != null; aVar = aVar.f13716q) {
                this.f13717r.add(aVar);
            }
        }
    }

    /* renamed from: b */
    public void mo25320b(@FloatRange(from = 0.0d, m37520to = 1.0d) float f) {
        float f2 = f;
        if (this.f13713n.m25298t() != 0.0f) {
            f2 = f / this.f13713n.m25298t();
        }
        AbstractC5506a aVar = this.f13715p;
        if (aVar != null) {
            aVar.mo25320b(f2);
        }
        for (int i = 0; i < this.f13718s.size(); i++) {
            this.f13718s.get(i).mo25518a(f2);
        }
    }

    /* renamed from: b */
    public abstract void mo25284b(Canvas canvas, Matrix matrix, int i);

    /* renamed from: b */
    public final void m25329b(RectF rectF, Matrix matrix) {
        this.f13707h.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (m25325d()) {
            int size = this.f13714o.m25523b().size();
            for (int i = 0; i < size; i++) {
                C5469g gVar = this.f13714o.m25523b().get(i);
                this.f13700a.set(this.f13714o.m25524a().get(i).mo25516f());
                this.f13700a.transform(matrix);
                int i2 = C5508b.f13724b[gVar.m25409a().ordinal()];
                if (i2 != 1 && i2 != 2 && i2 != 3) {
                    this.f13700a.computeBounds(this.f13709j, false);
                    if (i == 0) {
                        this.f13707h.set(this.f13709j);
                    } else {
                        RectF rectF2 = this.f13707h;
                        rectF2.set(Math.min(rectF2.left, this.f13709j.left), Math.min(this.f13707h.top, this.f13709j.top), Math.max(this.f13707h.right, this.f13709j.right), Math.max(this.f13707h.bottom, this.f13709j.bottom));
                    }
                } else {
                    return;
                }
            }
            rectF.set(Math.max(rectF.left, this.f13707h.left), Math.max(rectF.top, this.f13707h.top), Math.min(rectF.right, this.f13707h.right), Math.min(rectF.bottom, this.f13707h.bottom));
        }
    }

    /* renamed from: b */
    public void m25328b(@Nullable AbstractC5506a aVar) {
        this.f13716q = aVar;
    }

    /* renamed from: c */
    public C5512d m25327c() {
        return this.f13713n;
    }

    /* renamed from: c */
    public final void m25326c(RectF rectF, Matrix matrix) {
        if (m25324e() && this.f13713n.m25312f() != C5512d.EnumC5516d.Invert) {
            this.f13715p.mo25293a(this.f13708i, matrix);
            rectF.set(Math.max(rectF.left, this.f13708i.left), Math.max(rectF.top, this.f13708i.top), Math.min(rectF.right, this.f13708i.right), Math.min(rectF.bottom, this.f13708i.bottom));
        }
    }

    /* renamed from: d */
    public boolean m25325d() {
        C5389g gVar = this.f13714o;
        return gVar != null && !gVar.m25524a().isEmpty();
    }

    /* renamed from: e */
    public boolean m25324e() {
        return this.f13715p != null;
    }

    /* renamed from: f */
    public final void m25323f() {
        this.f13712m.invalidateSelf();
    }

    /* renamed from: g */
    public final void m25322g() {
        boolean z = true;
        if (!this.f13713n.m25315c().isEmpty()) {
            C5385c cVar = new C5385c(this.f13713n.m25315c());
            cVar.m25525g();
            cVar.mo25517a(new C5507a(cVar));
            if (cVar.mo25516f().floatValue() != 1.0f) {
                z = false;
            }
            m25331a(z);
            m25336a(cVar);
            return;
        }
        m25331a(true);
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    public String getName() {
        return this.f13713n.m25311g();
    }
}
