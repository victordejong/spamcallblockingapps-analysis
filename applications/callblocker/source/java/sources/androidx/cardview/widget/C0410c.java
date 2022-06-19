package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.cardview.widget.C0415g;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.cardview.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/c.class */
public class C0410c implements AbstractC0413e {

    /* renamed from: a */
    final RectF f1644a = new RectF();

    /* renamed from: a */
    private C0415g m21049a(Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        return new C0415g(context.getResources(), colorStateList, f, f2, f3);
    }

    /* renamed from: j */
    private C0415g m21048j(AbstractC0412d abstractC0412d) {
        return (C0415g) abstractC0412d.mo21042c();
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: a */
    public float mo21039a(AbstractC0412d abstractC0412d) {
        return m21048j(abstractC0412d).m21003c();
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: a */
    public void mo21040a() {
        C0415g.f1657a = new C0415g.AbstractC0416a() { // from class: androidx.cardview.widget.c.1
            @Override // androidx.cardview.widget.C0415g.AbstractC0416a
            /* renamed from: a */
            public void mo20996a(Canvas canvas, RectF rectF, float f, Paint paint) {
                float f2 = 2.0f * f;
                float width = (rectF.width() - f2) - 1.0f;
                float height = rectF.height();
                if (f >= 1.0f) {
                    float f3 = f + 0.5f;
                    C0410c.this.f1644a.set(-f3, -f3, f3, f3);
                    int save = canvas.save();
                    canvas.translate(rectF.left + f3, rectF.top + f3);
                    canvas.drawArc(C0410c.this.f1644a, 180.0f, 90.0f, true, paint);
                    canvas.translate(width, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(C0410c.this.f1644a, 180.0f, 90.0f, true, paint);
                    canvas.translate((height - f2) - 1.0f, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(C0410c.this.f1644a, 180.0f, 90.0f, true, paint);
                    canvas.translate(width, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(C0410c.this.f1644a, 180.0f, 90.0f, true, paint);
                    canvas.restoreToCount(save);
                    canvas.drawRect((rectF.left + f3) - 1.0f, rectF.top, 1.0f + (rectF.right - f3), rectF.top + f3, paint);
                    canvas.drawRect((rectF.left + f3) - 1.0f, rectF.bottom - f3, 1.0f + (rectF.right - f3), rectF.bottom, paint);
                }
                canvas.drawRect(rectF.left, rectF.top + f, rectF.right, rectF.bottom - f, paint);
            }
        };
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: a */
    public void mo21038a(AbstractC0412d abstractC0412d, float f) {
        m21048j(abstractC0412d).m21015a(f);
        mo21029f(abstractC0412d);
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: a */
    public void mo21037a(AbstractC0412d abstractC0412d, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        C0415g m21049a = m21049a(context, colorStateList, f, f2, f3);
        m21049a.m21009a(abstractC0412d.mo21043b());
        abstractC0412d.mo21044a(m21049a);
        mo21029f(abstractC0412d);
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: a */
    public void mo21036a(AbstractC0412d abstractC0412d, ColorStateList colorStateList) {
        m21048j(abstractC0412d).m21012a(colorStateList);
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: b */
    public float mo21035b(AbstractC0412d abstractC0412d) {
        return m21048j(abstractC0412d).m21001d();
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: b */
    public void mo21034b(AbstractC0412d abstractC0412d, float f) {
        m21048j(abstractC0412d).m21002c(f);
        mo21029f(abstractC0412d);
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: c */
    public float mo21033c(AbstractC0412d abstractC0412d) {
        return m21048j(abstractC0412d).m20999e();
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: c */
    public void mo21032c(AbstractC0412d abstractC0412d, float f) {
        m21048j(abstractC0412d).m21007b(f);
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: d */
    public float mo21031d(AbstractC0412d abstractC0412d) {
        return m21048j(abstractC0412d).m21016a();
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: e */
    public float mo21030e(AbstractC0412d abstractC0412d) {
        return m21048j(abstractC0412d).m21008b();
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: f */
    public void mo21029f(AbstractC0412d abstractC0412d) {
        Rect rect = new Rect();
        m21048j(abstractC0412d).m21010a(rect);
        abstractC0412d.mo21046a((int) Math.ceil(mo21035b(abstractC0412d)), (int) Math.ceil(mo21033c(abstractC0412d)));
        abstractC0412d.mo21045a(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: g */
    public void mo21028g(AbstractC0412d abstractC0412d) {
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: h */
    public void mo21027h(AbstractC0412d abstractC0412d) {
        m21048j(abstractC0412d).m21009a(abstractC0412d.mo21043b());
        mo21029f(abstractC0412d);
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: i */
    public ColorStateList mo21026i(AbstractC0412d abstractC0412d) {
        return m21048j(abstractC0412d).m20998f();
    }
}
