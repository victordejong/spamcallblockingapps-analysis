package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.cardview.widget.C0367g;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.cardview.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/c.class */
public class C0362c implements AbstractC0365e {

    /* renamed from: a */
    final RectF f1497a = new RectF();

    /* renamed from: androidx.cardview.widget.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/cardview/widget/c$a.class */
    class C0363a implements C0367g.AbstractC0368a {
        C0363a() {
            C0362c.this = r4;
        }

        @Override // androidx.cardview.widget.C0367g.AbstractC0368a
        /* renamed from: a */
        public void mo34587a(Canvas canvas, RectF rectF, float f, Paint paint) {
            float f2 = 2.0f * f;
            float width = (rectF.width() - f2) - 1.0f;
            float height = rectF.height();
            if (f >= 1.0f) {
                float f3 = f + 0.5f;
                float f4 = -f3;
                C0362c.this.f1497a.set(f4, f4, f3, f3);
                int save = canvas.save();
                canvas.translate(rectF.left + f3, rectF.top + f3);
                canvas.drawArc(C0362c.this.f1497a, 180.0f, 90.0f, true, paint);
                canvas.translate(width, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(C0362c.this.f1497a, 180.0f, 90.0f, true, paint);
                canvas.translate((height - f2) - 1.0f, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(C0362c.this.f1497a, 180.0f, 90.0f, true, paint);
                canvas.translate(width, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(C0362c.this.f1497a, 180.0f, 90.0f, true, paint);
                canvas.restoreToCount(save);
                float f5 = rectF.left;
                float f6 = rectF.top;
                canvas.drawRect((f5 + f3) - 1.0f, f6, (rectF.right - f3) + 1.0f, f6 + f3, paint);
                float f7 = rectF.left;
                float f8 = rectF.bottom;
                canvas.drawRect((f7 + f3) - 1.0f, f8 - f3, (rectF.right - f3) + 1.0f, f8, paint);
            }
            canvas.drawRect(rectF.left, rectF.top + f, rectF.right, rectF.bottom - f, paint);
        }
    }

    /* renamed from: p */
    private C0367g m34640p(Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        return new C0367g(context.getResources(), colorStateList, f, f2, f3);
    }

    /* renamed from: q */
    private C0367g m34639q(AbstractC0364d abstractC0364d) {
        return (C0367g) abstractC0364d.mo34633f();
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: a */
    public void mo34631a(AbstractC0364d abstractC0364d, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        C0367g m34640p = m34640p(context, colorStateList, f, f2, f3);
        m34640p.m34595m(abstractC0364d.mo34635d());
        abstractC0364d.mo34636c(m34640p);
        mo34623i(abstractC0364d);
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: b */
    public void mo34630b(AbstractC0364d abstractC0364d, float f) {
        m34639q(abstractC0364d).m34592p(f);
        mo34623i(abstractC0364d);
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: c */
    public float mo34629c(AbstractC0364d abstractC0364d) {
        return m34639q(abstractC0364d).m34596l();
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: d */
    public float mo34628d(AbstractC0364d abstractC0364d) {
        return m34639q(abstractC0364d).m34601g();
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: e */
    public void mo34627e(AbstractC0364d abstractC0364d) {
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: f */
    public void mo34626f(AbstractC0364d abstractC0364d, float f) {
        m34639q(abstractC0364d).m34590r(f);
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: g */
    public float mo34625g(AbstractC0364d abstractC0364d) {
        return m34639q(abstractC0364d).m34599i();
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: h */
    public ColorStateList mo34624h(AbstractC0364d abstractC0364d) {
        return m34639q(abstractC0364d).m34602f();
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: i */
    public void mo34623i(AbstractC0364d abstractC0364d) {
        Rect rect = new Rect();
        m34639q(abstractC0364d).m34600h(rect);
        abstractC0364d.mo34637b((int) Math.ceil(mo34620l(abstractC0364d)), (int) Math.ceil(mo34621k(abstractC0364d)));
        abstractC0364d.mo34638a(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: j */
    public void mo34622j() {
        C0367g.f1511b = new C0363a();
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: k */
    public float mo34621k(AbstractC0364d abstractC0364d) {
        return m34639q(abstractC0364d).m34598j();
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: l */
    public float mo34620l(AbstractC0364d abstractC0364d) {
        return m34639q(abstractC0364d).m34597k();
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: m */
    public void mo34619m(AbstractC0364d abstractC0364d) {
        m34639q(abstractC0364d).m34595m(abstractC0364d.mo34635d());
        mo34623i(abstractC0364d);
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: n */
    public void mo34618n(AbstractC0364d abstractC0364d, ColorStateList colorStateList) {
        m34639q(abstractC0364d).m34593o(colorStateList);
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: o */
    public void mo34617o(AbstractC0364d abstractC0364d, float f) {
        m34639q(abstractC0364d).m34591q(f);
        mo34623i(abstractC0364d);
    }
}
