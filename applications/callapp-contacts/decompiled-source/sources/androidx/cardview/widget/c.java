package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.cardview.widget.g;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/c.class */
class c implements e {

    /* renamed from: a  reason: collision with root package name */
    final RectF f1299a = new RectF();

    private static g j(d dVar) {
        return (g) dVar.c();
    }

    @Override // androidx.cardview.widget.e
    public final float a(d dVar) {
        return j(dVar).f1307c;
    }

    @Override // androidx.cardview.widget.e
    public void a() {
        g.f1305a = new g.a() { // from class: androidx.cardview.widget.c.1
            @Override // androidx.cardview.widget.g.a
            public final void a(Canvas canvas, RectF rectF, float f, Paint paint) {
                float f2 = 2.0f * f;
                float width = (rectF.width() - f2) - 1.0f;
                float height = rectF.height();
                if (f >= 1.0f) {
                    float f3 = f + 0.5f;
                    float f4 = -f3;
                    c.this.f1299a.set(f4, f4, f3, f3);
                    int save = canvas.save();
                    canvas.translate(rectF.left + f3, rectF.top + f3);
                    canvas.drawArc(c.this.f1299a, 180.0f, 90.0f, true, paint);
                    canvas.translate(width, BitmapDescriptorFactory.HUE_RED);
                    canvas.rotate(90.0f);
                    canvas.drawArc(c.this.f1299a, 180.0f, 90.0f, true, paint);
                    canvas.translate((height - f2) - 1.0f, BitmapDescriptorFactory.HUE_RED);
                    canvas.rotate(90.0f);
                    canvas.drawArc(c.this.f1299a, 180.0f, 90.0f, true, paint);
                    canvas.translate(width, BitmapDescriptorFactory.HUE_RED);
                    canvas.rotate(90.0f);
                    canvas.drawArc(c.this.f1299a, 180.0f, 90.0f, true, paint);
                    canvas.restoreToCount(save);
                    canvas.drawRect((rectF.left + f3) - 1.0f, rectF.top, (rectF.right - f3) + 1.0f, rectF.top + f3, paint);
                    canvas.drawRect((rectF.left + f3) - 1.0f, rectF.bottom - f3, (rectF.right - f3) + 1.0f, rectF.bottom, paint);
                }
                canvas.drawRect(rectF.left, rectF.top + f, rectF.right, rectF.bottom - f, paint);
            }
        };
    }

    @Override // androidx.cardview.widget.e
    public final void a(d dVar, float f) {
        g j = j(dVar);
        if (f >= BitmapDescriptorFactory.HUE_RED) {
            float f2 = (int) (f + 0.5f);
            if (j.f1306b != f2) {
                j.f1306b = f2;
                j.f = true;
                j.invalidateSelf();
            }
            f(dVar);
            return;
        }
        throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
    }

    @Override // androidx.cardview.widget.e
    public final void a(d dVar, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        g gVar = new g(context.getResources(), colorStateList, f, f2, f3);
        gVar.a(dVar.b());
        dVar.a(gVar);
        f(dVar);
    }

    @Override // androidx.cardview.widget.e
    public final void a(d dVar, ColorStateList colorStateList) {
        g j = j(dVar);
        j.a(colorStateList);
        j.invalidateSelf();
    }

    @Override // androidx.cardview.widget.e
    public final float b(d dVar) {
        return j(dVar).a();
    }

    @Override // androidx.cardview.widget.e
    public final void b(d dVar, float f) {
        g j = j(dVar);
        j.a(j.f1308d, f);
        f(dVar);
    }

    @Override // androidx.cardview.widget.e
    public final float c(d dVar) {
        return j(dVar).b();
    }

    @Override // androidx.cardview.widget.e
    public final void c(d dVar, float f) {
        g j = j(dVar);
        j.a(f, j.f1307c);
    }

    @Override // androidx.cardview.widget.e
    public final float d(d dVar) {
        return j(dVar).f1306b;
    }

    @Override // androidx.cardview.widget.e
    public final float e(d dVar) {
        return j(dVar).f1308d;
    }

    @Override // androidx.cardview.widget.e
    public final void f(d dVar) {
        Rect rect = new Rect();
        j(dVar).getPadding(rect);
        dVar.a((int) Math.ceil(j(dVar).a()), (int) Math.ceil(j(dVar).b()));
        dVar.a(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // androidx.cardview.widget.e
    public final void g(d dVar) {
    }

    @Override // androidx.cardview.widget.e
    public final void h(d dVar) {
        j(dVar).a(dVar.b());
        f(dVar);
    }

    @Override // androidx.cardview.widget.e
    public final ColorStateList i(d dVar) {
        return j(dVar).e;
    }
}
