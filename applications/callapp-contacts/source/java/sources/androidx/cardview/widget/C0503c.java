package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.cardview.widget.C0508g;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.cardview.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/c.class */
public class C0503c implements AbstractC0506e {

    /* renamed from: a */
    final RectF f1877a = new RectF();

    /* renamed from: j */
    private static C0508g m45407j(AbstractC0505d abstractC0505d) {
        return (C0508g) abstractC0505d.mo45401c();
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: a */
    public final float mo45398a(AbstractC0505d abstractC0505d) {
        return m45407j(abstractC0505d).f1893c;
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: a */
    public void mo45399a() {
        C0508g.f1890a = new C0508g.AbstractC0509a() { // from class: androidx.cardview.widget.c.1
            @Override // androidx.cardview.widget.C0508g.AbstractC0509a
            /* renamed from: a */
            public final void mo45372a(Canvas canvas, RectF rectF, float f, Paint paint) {
                float f2 = 2.0f * f;
                float width = (rectF.width() - f2) - 1.0f;
                float height = rectF.height();
                if (f >= 1.0f) {
                    float f3 = f + 0.5f;
                    float f4 = -f3;
                    C0503c.this.f1877a.set(f4, f4, f3, f3);
                    int save = canvas.save();
                    canvas.translate(rectF.left + f3, rectF.top + f3);
                    canvas.drawArc(C0503c.this.f1877a, 180.0f, 90.0f, true, paint);
                    canvas.translate(width, BitmapDescriptorFactory.HUE_RED);
                    canvas.rotate(90.0f);
                    canvas.drawArc(C0503c.this.f1877a, 180.0f, 90.0f, true, paint);
                    canvas.translate((height - f2) - 1.0f, BitmapDescriptorFactory.HUE_RED);
                    canvas.rotate(90.0f);
                    canvas.drawArc(C0503c.this.f1877a, 180.0f, 90.0f, true, paint);
                    canvas.translate(width, BitmapDescriptorFactory.HUE_RED);
                    canvas.rotate(90.0f);
                    canvas.drawArc(C0503c.this.f1877a, 180.0f, 90.0f, true, paint);
                    canvas.restoreToCount(save);
                    canvas.drawRect((rectF.left + f3) - 1.0f, rectF.top, (rectF.right - f3) + 1.0f, rectF.top + f3, paint);
                    canvas.drawRect((rectF.left + f3) - 1.0f, rectF.bottom - f3, (rectF.right - f3) + 1.0f, rectF.bottom, paint);
                }
                canvas.drawRect(rectF.left, rectF.top + f, rectF.right, rectF.bottom - f, paint);
            }
        };
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: a */
    public final void mo45397a(AbstractC0505d abstractC0505d, float f) {
        C0508g m45407j = m45407j(abstractC0505d);
        if (f < BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
        }
        float f2 = (int) (f + 0.5f);
        if (m45407j.f1892b != f2) {
            m45407j.f1892b = f2;
            m45407j.f1896f = true;
            m45407j.invalidateSelf();
        }
        mo45388f(abstractC0505d);
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: a */
    public final void mo45396a(AbstractC0505d abstractC0505d, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        C0508g c0508g = new C0508g(context.getResources(), colorStateList, f, f2, f3);
        c0508g.m45375a(abstractC0505d.mo45402b());
        abstractC0505d.mo45403a(c0508g);
        mo45388f(abstractC0505d);
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: a */
    public final void mo45395a(AbstractC0505d abstractC0505d, ColorStateList colorStateList) {
        C0508g m45407j = m45407j(abstractC0505d);
        m45407j.m45376a(colorStateList);
        m45407j.invalidateSelf();
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: b */
    public final float mo45394b(AbstractC0505d abstractC0505d) {
        return m45407j(abstractC0505d).m45380a();
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: b */
    public final void mo45393b(AbstractC0505d abstractC0505d, float f) {
        C0508g m45407j = m45407j(abstractC0505d);
        m45407j.m45378a(m45407j.f1894d, f);
        mo45388f(abstractC0505d);
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: c */
    public final float mo45392c(AbstractC0505d abstractC0505d) {
        return m45407j(abstractC0505d).m45374b();
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: c */
    public final void mo45391c(AbstractC0505d abstractC0505d, float f) {
        C0508g m45407j = m45407j(abstractC0505d);
        m45407j.m45378a(f, m45407j.f1893c);
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: d */
    public final float mo45390d(AbstractC0505d abstractC0505d) {
        return m45407j(abstractC0505d).f1892b;
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: e */
    public final float mo45389e(AbstractC0505d abstractC0505d) {
        return m45407j(abstractC0505d).f1894d;
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: f */
    public final void mo45388f(AbstractC0505d abstractC0505d) {
        Rect rect = new Rect();
        m45407j(abstractC0505d).getPadding(rect);
        abstractC0505d.mo45405a((int) Math.ceil(m45407j(abstractC0505d).m45380a()), (int) Math.ceil(m45407j(abstractC0505d).m45374b()));
        abstractC0505d.mo45404a(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: g */
    public final void mo45387g(AbstractC0505d abstractC0505d) {
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: h */
    public final void mo45386h(AbstractC0505d abstractC0505d) {
        m45407j(abstractC0505d).m45375a(abstractC0505d.mo45402b());
        mo45388f(abstractC0505d);
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: i */
    public final ColorStateList mo45385i(AbstractC0505d abstractC0505d) {
        return m45407j(abstractC0505d).f1895e;
    }
}
