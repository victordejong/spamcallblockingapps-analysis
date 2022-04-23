package p081h.p082a.p083a.p088n.p091m;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import p081h.p082a.p083a.C5344f;
/* renamed from: h.a.a.n.m.g */
/* loaded from: classes-dex2jar.jar:h/a/a/n/m/g.class */
public class C5519g extends AbstractC5506a {

    /* renamed from: v */
    public final RectF f13769v = new RectF();

    /* renamed from: w */
    public final Paint f13770w = new Paint();

    /* renamed from: x */
    public final C5512d f13771x;

    public C5519g(C5344f fVar, C5512d dVar) {
        super(fVar, dVar);
        this.f13771x = dVar;
        this.f13770w.setAlpha(0);
        this.f13770w.setStyle(Paint.Style.FILL);
        this.f13770w.setColor(dVar.m25305m());
    }

    /* renamed from: a */
    public final void m25294a(Matrix matrix) {
        this.f13769v.set(0.0f, 0.0f, this.f13771x.m25303o(), this.f13771x.m25304n());
        matrix.mapRect(this.f13769v);
    }

    @Override // p081h.p082a.p083a.p088n.p091m.AbstractC5506a, p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25293a(RectF rectF, Matrix matrix) {
        super.mo25293a(rectF, matrix);
        m25294a(this.f13711l);
        rectF.set(this.f13769v);
    }

    @Override // p081h.p082a.p083a.p088n.p091m.AbstractC5506a, p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25292a(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        this.f13770w.setColorFilter(colorFilter);
    }

    @Override // p081h.p082a.p083a.p088n.p091m.AbstractC5506a
    /* renamed from: b */
    public void mo25284b(Canvas canvas, Matrix matrix, int i) {
        int alpha = Color.alpha(this.f13771x.m25305m());
        if (alpha != 0) {
            int intValue = (int) ((i / 255.0f) * (((alpha / 255.0f) * this.f13719t.m25509c().mo25516f().intValue()) / 100.0f) * 255.0f);
            this.f13770w.setAlpha(intValue);
            if (intValue > 0) {
                m25294a(matrix);
                canvas.drawRect(this.f13769v, this.f13770w);
            }
        }
    }
}
