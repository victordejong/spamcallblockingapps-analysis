package p081h.p082a.p083a.p088n.p091m;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import p081h.p082a.p083a.C5344f;
/* renamed from: h.a.a.n.m.c */
/* loaded from: classes-dex2jar.jar:h/a/a/n/m/c.class */
public class C5511c extends AbstractC5506a {

    /* renamed from: v */
    public final Paint f13730v = new Paint(3);

    /* renamed from: w */
    public final Rect f13731w = new Rect();

    /* renamed from: x */
    public final Rect f13732x = new Rect();

    /* renamed from: y */
    public final float f13733y;

    public C5511c(C5344f fVar, C5512d dVar, float f) {
        super(fVar, dVar);
        this.f13733y = f;
    }

    @Override // p081h.p082a.p083a.p088n.p091m.AbstractC5506a, p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25293a(RectF rectF, Matrix matrix) {
        super.mo25293a(rectF, matrix);
        Bitmap h = m25319h();
        if (h != null) {
            rectF.set(rectF.left, rectF.top, Math.min(rectF.right, h.getWidth()), Math.min(rectF.bottom, h.getHeight()));
            this.f13711l.mapRect(rectF);
        }
    }

    @Override // p081h.p082a.p083a.p088n.p091m.AbstractC5506a, p081h.p082a.p083a.p084l.p085b.AbstractC5365d
    /* renamed from: a */
    public void mo25292a(@Nullable String str, @Nullable String str2, @Nullable ColorFilter colorFilter) {
        this.f13730v.setColorFilter(colorFilter);
    }

    @Override // p081h.p082a.p083a.p088n.p091m.AbstractC5506a
    /* renamed from: b */
    public void mo25284b(@NonNull Canvas canvas, Matrix matrix, int i) {
        Bitmap h = m25319h();
        if (h != null) {
            this.f13730v.setAlpha(i);
            canvas.save();
            canvas.concat(matrix);
            this.f13731w.set(0, 0, h.getWidth(), h.getHeight());
            this.f13732x.set(0, 0, (int) (h.getWidth() * this.f13733y), (int) (h.getHeight() * this.f13733y));
            canvas.drawBitmap(h, this.f13731w, this.f13732x, this.f13730v);
            canvas.restore();
        }
    }

    @Nullable
    /* renamed from: h */
    public final Bitmap m25319h() {
        return this.f13712m.m25609a(this.f13713n.m25307k());
    }
}
