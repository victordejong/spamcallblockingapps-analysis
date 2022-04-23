package p012b.p033e.p034f;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import p012b.p033e.p034f.C0778g;
/* renamed from: b.e.f.c */
/* loaded from: classes-dex2jar.jar:b/e/f/c.class */
public class C0773c implements AbstractC0776e {

    /* renamed from: a */
    public final RectF f3628a = new RectF();

    /* renamed from: b.e.f.c$a */
    /* loaded from: classes-dex2jar.jar:b/e/f/c$a.class */
    public class C0774a implements C0778g.AbstractC0779a {
        public C0774a() {
        }

        @Override // p012b.p033e.p034f.C0778g.AbstractC0779a
        /* renamed from: a */
        public void mo36073a(Canvas canvas, RectF rectF, float f, Paint paint) {
            float f2 = 2.0f * f;
            float width = (rectF.width() - f2) - 1.0f;
            float height = rectF.height();
            if (f >= 1.0f) {
                float f3 = f + 0.5f;
                float f4 = -f3;
                C0773c.this.f3628a.set(f4, f4, f3, f3);
                int save = canvas.save();
                canvas.translate(rectF.left + f3, rectF.top + f3);
                canvas.drawArc(C0773c.this.f3628a, 180.0f, 90.0f, true, paint);
                canvas.translate(width, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(C0773c.this.f3628a, 180.0f, 90.0f, true, paint);
                canvas.translate((height - f2) - 1.0f, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(C0773c.this.f3628a, 180.0f, 90.0f, true, paint);
                canvas.translate(width, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(C0773c.this.f3628a, 180.0f, 90.0f, true, paint);
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

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: a */
    public float mo36115a(AbstractC0775d dVar) {
        return m36125i(dVar).m36074g();
    }

    /* renamed from: a */
    public final C0778g m36126a(Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        return new C0778g(context.getResources(), colorStateList, f, f2, f3);
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: a */
    public void mo36116a() {
        C0778g.f3642r = new C0774a();
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: a */
    public void mo36114a(AbstractC0775d dVar, float f) {
        m36125i(dVar).m36092a(f);
        m36124j(dVar);
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: a */
    public void mo36113a(AbstractC0775d dVar, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        C0778g a = m36126a(context, colorStateList, f, f2, f3);
        a.m36086a(dVar.mo36123a());
        dVar.mo36120a(a);
        m36124j(dVar);
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: a */
    public void mo36112a(AbstractC0775d dVar, ColorStateList colorStateList) {
        m36125i(dVar).m36082b(colorStateList);
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: b */
    public float mo36111b(AbstractC0775d dVar) {
        return m36125i(dVar).m36080c();
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: b */
    public void mo36110b(AbstractC0775d dVar, float f) {
        m36125i(dVar).m36079c(f);
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: c */
    public void mo36109c(AbstractC0775d dVar) {
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: c */
    public void mo36108c(AbstractC0775d dVar, float f) {
        m36125i(dVar).m36084b(f);
        m36124j(dVar);
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: d */
    public float mo36107d(AbstractC0775d dVar) {
        return m36125i(dVar).m36078d();
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: e */
    public ColorStateList mo36106e(AbstractC0775d dVar) {
        return m36125i(dVar).m36085b();
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: f */
    public float mo36105f(AbstractC0775d dVar) {
        return m36125i(dVar).m36076e();
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: g */
    public float mo36104g(AbstractC0775d dVar) {
        return m36125i(dVar).m36075f();
    }

    @Override // p012b.p033e.p034f.AbstractC0776e
    /* renamed from: h */
    public void mo36103h(AbstractC0775d dVar) {
        m36125i(dVar).m36086a(dVar.mo36123a());
        m36124j(dVar);
    }

    /* renamed from: i */
    public final C0778g m36125i(AbstractC0775d dVar) {
        return (C0778g) dVar.mo36118c();
    }

    /* renamed from: j */
    public void m36124j(AbstractC0775d dVar) {
        Rect rect = new Rect();
        m36125i(dVar).m36081b(rect);
        dVar.mo36122a((int) Math.ceil(mo36104g(dVar)), (int) Math.ceil(mo36105f(dVar)));
        dVar.mo36121a(rect.left, rect.top, rect.right, rect.bottom);
    }
}
