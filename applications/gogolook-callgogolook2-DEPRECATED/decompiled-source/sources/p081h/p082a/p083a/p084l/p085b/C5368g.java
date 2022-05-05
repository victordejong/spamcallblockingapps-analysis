package p081h.p082a.p083a.p084l.p085b;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import java.util.ArrayList;
import java.util.List;
import p081h.p082a.p083a.C5340d;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p088n.p090l.C5461c;
import p081h.p082a.p083a.p088n.p090l.C5462d;
import p081h.p082a.p083a.p088n.p090l.EnumC5468f;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.l.b.g */
/* loaded from: classes-dex2jar.jar:h/a/a/l/b/g.class */
public class C5368g implements AbstractC5365d, AbstractC5382a.AbstractC5383a {

    /* renamed from: a */
    public final String f13421a;

    /* renamed from: b */
    public final LongSparseArray<LinearGradient> f13422b = new LongSparseArray<>();

    /* renamed from: c */
    public final LongSparseArray<RadialGradient> f13423c = new LongSparseArray<>();

    /* renamed from: d */
    public final Matrix f13424d = new Matrix();

    /* renamed from: e */
    public final Path f13425e = new Path();

    /* renamed from: f */
    public final Paint f13426f = new Paint(1);

    /* renamed from: g */
    public final RectF f13427g = new RectF();

    /* renamed from: h */
    public final List<AbstractC5374l> f13428h = new ArrayList();

    /* renamed from: i */
    public final EnumC5468f f13429i;

    /* renamed from: j */
    public final AbstractC5382a<C5461c, C5461c> f13430j;

    /* renamed from: k */
    public final AbstractC5382a<Integer, Integer> f13431k;

    /* renamed from: l */
    public final AbstractC5382a<PointF, PointF> f13432l;

    /* renamed from: m */
    public final AbstractC5382a<PointF, PointF> f13433m;

    /* renamed from: n */
    public final C5344f f13434n;

    /* renamed from: o */
    public final int f13435o;

    public C5368g(C5344f fVar, AbstractC5506a aVar, C5462d dVar) {
        this.f13421a = dVar.m25425e();
        this.f13434n = fVar;
        this.f13429i = dVar.m25426d();
        this.f13425e.setFillType(dVar.m25428b());
        this.f13435o = (int) (fVar.m25594f().m25641d() / 32);
        this.f13430j = dVar.m25427c().mo25446a();
        this.f13430j.mo25517a(this);
        aVar.m25336a(this.f13430j);
        this.f13431k = dVar.m25424f().mo25446a();
        this.f13431k.mo25517a(this);
        aVar.m25336a(this.f13431k);
        this.f13432l = dVar.m25423g().mo25446a();
        this.f13432l.mo25517a(this);
        aVar.m25336a(this.f13432l);
        this.f13433m = dVar.m25429a().mo25446a();
        this.f13433m.mo25517a(this);
        aVar.m25336a(this.f13433m);
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a.AbstractC5383a
    /* renamed from: a */
    public void mo25321a() {
        this.f13434n.invalidateSelf();
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25337a(Canvas canvas, Matrix matrix, int i) {
        C5340d.m25653a("GradientFillContent#draw");
        this.f13425e.reset();
        for (int i2 = 0; i2 < this.f13428h.size(); i2++) {
            this.f13425e.addPath(this.f13428h.get(i2).getPath(), matrix);
        }
        this.f13425e.computeBounds(this.f13427g, false);
        Shader c = this.f13429i == EnumC5468f.Linear ? m25548c() : m25547d();
        this.f13424d.set(matrix);
        c.setLocalMatrix(this.f13424d);
        this.f13426f.setShader(c);
        this.f13426f.setAlpha((int) ((((i / 255.0f) * this.f13431k.mo25516f().intValue()) / 100.0f) * 255.0f));
        canvas.drawPath(this.f13425e, this.f13426f);
        C5340d.m25652b("GradientFillContent#draw");
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25293a(RectF rectF, Matrix matrix) {
        this.f13425e.reset();
        for (int i = 0; i < this.f13428h.size(); i++) {
            this.f13425e.addPath(this.f13428h.get(i).getPath(), matrix);
        }
        this.f13425e.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25292a(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    /* renamed from: a */
    public void mo25332a(List<AbstractC5363b> list, List<AbstractC5363b> list2) {
        for (int i = 0; i < list2.size(); i++) {
            AbstractC5363b bVar = list2.get(i);
            if (bVar instanceof AbstractC5374l) {
                this.f13428h.add((AbstractC5374l) bVar);
            }
        }
    }

    /* renamed from: b */
    public final int m25549b() {
        int round = Math.round(this.f13432l.m25527d() * this.f13435o);
        int round2 = Math.round(this.f13433m.m25527d() * this.f13435o);
        int round3 = Math.round(this.f13430j.m25527d() * this.f13435o);
        int i = round != 0 ? 527 * round : 17;
        int i2 = i;
        if (round2 != 0) {
            i2 = i * 31 * round2;
        }
        int i3 = i2;
        if (round3 != 0) {
            i3 = i2 * 31 * round3;
        }
        return i3;
    }

    /* renamed from: c */
    public final LinearGradient m25548c() {
        long b = m25549b();
        LinearGradient linearGradient = this.f13422b.get(b);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF f = this.f13432l.mo25516f();
        PointF f2 = this.f13433m.mo25516f();
        C5461c f3 = this.f13430j.mo25516f();
        LinearGradient linearGradient2 = new LinearGradient(f.x, f.y, f2.x, f2.y, f3.m25433a(), f3.m25431b(), Shader.TileMode.CLAMP);
        this.f13422b.put(b, linearGradient2);
        return linearGradient2;
    }

    /* renamed from: d */
    public final RadialGradient m25547d() {
        float f;
        float f2;
        long b = m25549b();
        RadialGradient radialGradient = this.f13423c.get(b);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF f3 = this.f13432l.mo25516f();
        PointF f4 = this.f13433m.mo25516f();
        C5461c f5 = this.f13430j.mo25516f();
        int[] a = f5.m25433a();
        float[] b2 = f5.m25431b();
        RadialGradient radialGradient2 = new RadialGradient(f3.x, f3.y, (float) Math.hypot(f4.x - f, f4.y - f2), a, b2, Shader.TileMode.CLAMP);
        this.f13423c.put(b, radialGradient2);
        return radialGradient2;
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    public String getName() {
        return this.f13421a;
    }
}
