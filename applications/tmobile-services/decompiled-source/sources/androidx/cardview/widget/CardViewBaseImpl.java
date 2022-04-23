package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import androidx.cardview.widget.RoundRectDrawableWithShadow;
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/CardViewBaseImpl.class */
class CardViewBaseImpl implements CardViewImpl {

    /* renamed from: a */
    final RectF f1505a = new RectF();

    /* renamed from: p */
    private RoundRectDrawableWithShadow m21119p(Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        return new RoundRectDrawableWithShadow(context.getResources(), colorStateList, f, f2, f3);
    }

    /* renamed from: q */
    private RoundRectDrawableWithShadow m21118q(CardViewDelegate cardViewDelegate) {
        return (RoundRectDrawableWithShadow) cardViewDelegate.mo21112f();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: a */
    public void mo21110a(CardViewDelegate cardViewDelegate, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        RoundRectDrawableWithShadow p = m21119p(context, colorStateList, f, f2, f3);
        p.m21074m(cardViewDelegate.mo21114d());
        cardViewDelegate.mo21115c(p);
        mo21102i(cardViewDelegate);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: b */
    public void mo21109b(CardViewDelegate cardViewDelegate, float f) {
        m21118q(cardViewDelegate).m21071p(f);
        mo21102i(cardViewDelegate);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: c */
    public float mo21108c(CardViewDelegate cardViewDelegate) {
        return m21118q(cardViewDelegate).m21075l();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: d */
    public float mo21107d(CardViewDelegate cardViewDelegate) {
        return m21118q(cardViewDelegate).m21080g();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: e */
    public void mo21106e(CardViewDelegate cardViewDelegate) {
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: f */
    public void mo21105f(CardViewDelegate cardViewDelegate, float f) {
        m21118q(cardViewDelegate).m21069r(f);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: g */
    public float mo21104g(CardViewDelegate cardViewDelegate) {
        return m21118q(cardViewDelegate).m21078i();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: h */
    public ColorStateList mo21103h(CardViewDelegate cardViewDelegate) {
        return m21118q(cardViewDelegate).m21081f();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: i */
    public void mo21102i(CardViewDelegate cardViewDelegate) {
        Rect rect = new Rect();
        m21118q(cardViewDelegate).m21079h(rect);
        cardViewDelegate.mo21116b((int) Math.ceil(mo21099l(cardViewDelegate)), (int) Math.ceil(mo21100k(cardViewDelegate)));
        cardViewDelegate.mo21117a(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: j */
    public void mo21101j() {
        RoundRectDrawableWithShadow.f1519r = new RoundRectDrawableWithShadow.RoundRectHelper() { // from class: androidx.cardview.widget.CardViewBaseImpl.1
            @Override // androidx.cardview.widget.RoundRectDrawableWithShadow.RoundRectHelper
            /* renamed from: a */
            public void mo21066a(Canvas canvas, RectF rectF, float f, Paint paint) {
                float f2 = 2.0f * f;
                float width = (rectF.width() - f2) - 1.0f;
                float height = rectF.height();
                if (f >= 1.0f) {
                    float f3 = f + 0.5f;
                    float f4 = -f3;
                    CardViewBaseImpl.this.f1505a.set(f4, f4, f3, f3);
                    int save = canvas.save();
                    canvas.translate(rectF.left + f3, rectF.top + f3);
                    canvas.drawArc(CardViewBaseImpl.this.f1505a, 180.0f, 90.0f, true, paint);
                    canvas.translate(width, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(CardViewBaseImpl.this.f1505a, 180.0f, 90.0f, true, paint);
                    canvas.translate((height - f2) - 1.0f, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(CardViewBaseImpl.this.f1505a, 180.0f, 90.0f, true, paint);
                    canvas.translate(width, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(CardViewBaseImpl.this.f1505a, 180.0f, 90.0f, true, paint);
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
        };
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: k */
    public float mo21100k(CardViewDelegate cardViewDelegate) {
        return m21118q(cardViewDelegate).m21077j();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: l */
    public float mo21099l(CardViewDelegate cardViewDelegate) {
        return m21118q(cardViewDelegate).m21076k();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: m */
    public void mo21098m(CardViewDelegate cardViewDelegate) {
        m21118q(cardViewDelegate).m21074m(cardViewDelegate.mo21114d());
        mo21102i(cardViewDelegate);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: n */
    public void mo21097n(CardViewDelegate cardViewDelegate, @Nullable ColorStateList colorStateList) {
        m21118q(cardViewDelegate).m21072o(colorStateList);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    /* renamed from: o */
    public void mo21096o(CardViewDelegate cardViewDelegate, float f) {
        m21118q(cardViewDelegate).m21070q(f);
        mo21102i(cardViewDelegate);
    }
}
