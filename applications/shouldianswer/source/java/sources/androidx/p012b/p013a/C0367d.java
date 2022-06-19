package androidx.p012b.p013a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.p012b.p013a.C0372h;
import com.google.android.flexbox.FlexItem;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.b.a.d */
/* loaded from: classes-dex2jar.jar:androidx/b/a/d.class */
public class C0367d implements AbstractC0370f {

    /* renamed from: a */
    final RectF f1441a = new RectF();

    /* renamed from: a */
    private C0372h m6925a(Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        return new C0372h(context.getResources(), colorStateList, f, f2, f3);
    }

    /* renamed from: j */
    private C0372h m6924j(AbstractC0369e abstractC0369e) {
        return (C0372h) abstractC0369e.mo6918c();
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: a */
    public float mo6915a(AbstractC0369e abstractC0369e) {
        return m6924j(abstractC0369e).m6879c();
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: a */
    public void mo6916a() {
        C0372h.f1454a = new C0372h.AbstractC0373a() { // from class: androidx.b.a.d.1
            @Override // androidx.p012b.p013a.C0372h.AbstractC0373a
            /* renamed from: a */
            public void mo6872a(Canvas canvas, RectF rectF, float f, Paint paint) {
                float f2 = 2.0f * f;
                float width = (rectF.width() - f2) - 1.0f;
                float height = rectF.height();
                if (f >= 1.0f) {
                    float f3 = f + 0.5f;
                    float f4 = -f3;
                    C0367d.this.f1441a.set(f4, f4, f3, f3);
                    int save = canvas.save();
                    canvas.translate(rectF.left + f3, rectF.top + f3);
                    canvas.drawArc(C0367d.this.f1441a, 180.0f, 90.0f, true, paint);
                    canvas.translate(width, FlexItem.FLEX_GROW_DEFAULT);
                    canvas.rotate(90.0f);
                    canvas.drawArc(C0367d.this.f1441a, 180.0f, 90.0f, true, paint);
                    canvas.translate((height - f2) - 1.0f, FlexItem.FLEX_GROW_DEFAULT);
                    canvas.rotate(90.0f);
                    canvas.drawArc(C0367d.this.f1441a, 180.0f, 90.0f, true, paint);
                    canvas.translate(width, FlexItem.FLEX_GROW_DEFAULT);
                    canvas.rotate(90.0f);
                    canvas.drawArc(C0367d.this.f1441a, 180.0f, 90.0f, true, paint);
                    canvas.restoreToCount(save);
                    canvas.drawRect((rectF.left + f3) - 1.0f, rectF.top, (rectF.right - f3) + 1.0f, rectF.top + f3, paint);
                    canvas.drawRect((rectF.left + f3) - 1.0f, rectF.bottom - f3, (rectF.right - f3) + 1.0f, rectF.bottom, paint);
                }
                canvas.drawRect(rectF.left, rectF.top + f, rectF.right, rectF.bottom - f, paint);
            }
        };
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: a */
    public void mo6914a(AbstractC0369e abstractC0369e, float f) {
        m6924j(abstractC0369e).m6891a(f);
        mo6905f(abstractC0369e);
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: a */
    public void mo6913a(AbstractC0369e abstractC0369e, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        C0372h m6925a = m6925a(context, colorStateList, f, f2, f3);
        m6925a.m6885a(abstractC0369e.mo6919b());
        abstractC0369e.mo6920a(m6925a);
        mo6905f(abstractC0369e);
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: a */
    public void mo6912a(AbstractC0369e abstractC0369e, ColorStateList colorStateList) {
        m6924j(abstractC0369e).m6888a(colorStateList);
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: b */
    public float mo6911b(AbstractC0369e abstractC0369e) {
        return m6924j(abstractC0369e).m6877d();
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: b */
    public void mo6910b(AbstractC0369e abstractC0369e, float f) {
        m6924j(abstractC0369e).m6878c(f);
        mo6905f(abstractC0369e);
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: c */
    public float mo6909c(AbstractC0369e abstractC0369e) {
        return m6924j(abstractC0369e).m6875e();
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: c */
    public void mo6908c(AbstractC0369e abstractC0369e, float f) {
        m6924j(abstractC0369e).m6883b(f);
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: d */
    public float mo6907d(AbstractC0369e abstractC0369e) {
        return m6924j(abstractC0369e).m6892a();
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: e */
    public float mo6906e(AbstractC0369e abstractC0369e) {
        return m6924j(abstractC0369e).m6884b();
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: f */
    public void mo6905f(AbstractC0369e abstractC0369e) {
        Rect rect = new Rect();
        m6924j(abstractC0369e).m6886a(rect);
        abstractC0369e.mo6922a((int) Math.ceil(mo6911b(abstractC0369e)), (int) Math.ceil(mo6909c(abstractC0369e)));
        abstractC0369e.mo6921a(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: g */
    public void mo6904g(AbstractC0369e abstractC0369e) {
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: h */
    public void mo6903h(AbstractC0369e abstractC0369e) {
        m6924j(abstractC0369e).m6885a(abstractC0369e.mo6919b());
        mo6905f(abstractC0369e);
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: i */
    public ColorStateList mo6902i(AbstractC0369e abstractC0369e) {
        return m6924j(abstractC0369e).m6874f();
    }
}
