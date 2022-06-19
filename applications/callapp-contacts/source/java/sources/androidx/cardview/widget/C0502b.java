package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.view.View;
/* renamed from: androidx.cardview.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/b.class */
public final class C0502b implements AbstractC0506e {
    /* renamed from: j */
    private static C0507f m45408j(AbstractC0505d abstractC0505d) {
        return (C0507f) abstractC0505d.mo45401c();
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: a */
    public final float mo45398a(AbstractC0505d abstractC0505d) {
        return m45408j(abstractC0505d).f1880b;
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: a */
    public final void mo45399a() {
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: a */
    public final void mo45397a(AbstractC0505d abstractC0505d, float f) {
        C0507f m45408j = m45408j(abstractC0505d);
        if (f != m45408j.f1879a) {
            m45408j.f1879a = f;
            m45408j.m45381a((Rect) null);
            m45408j.invalidateSelf();
        }
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: a */
    public final void mo45396a(AbstractC0505d abstractC0505d, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        abstractC0505d.mo45403a(new C0507f(colorStateList, f));
        View mo45400d = abstractC0505d.mo45400d();
        mo45400d.setClipToOutline(true);
        mo45400d.setElevation(f2);
        mo45393b(abstractC0505d, f3);
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: a */
    public final void mo45395a(AbstractC0505d abstractC0505d, ColorStateList colorStateList) {
        C0507f m45408j = m45408j(abstractC0505d);
        m45408j.m45383a(colorStateList);
        m45408j.invalidateSelf();
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: b */
    public final float mo45394b(AbstractC0505d abstractC0505d) {
        return m45408j(abstractC0505d).f1879a * 2.0f;
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: b */
    public final void mo45393b(AbstractC0505d abstractC0505d, float f) {
        m45408j(abstractC0505d).m45384a(f, abstractC0505d.mo45406a(), abstractC0505d.mo45402b());
        mo45388f(abstractC0505d);
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: c */
    public final float mo45392c(AbstractC0505d abstractC0505d) {
        return m45408j(abstractC0505d).f1879a * 2.0f;
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: c */
    public final void mo45391c(AbstractC0505d abstractC0505d, float f) {
        abstractC0505d.mo45400d().setElevation(f);
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: d */
    public final float mo45390d(AbstractC0505d abstractC0505d) {
        return m45408j(abstractC0505d).f1879a;
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: e */
    public final float mo45389e(AbstractC0505d abstractC0505d) {
        return abstractC0505d.mo45400d().getElevation();
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: f */
    public final void mo45388f(AbstractC0505d abstractC0505d) {
        if (!abstractC0505d.mo45406a()) {
            abstractC0505d.mo45404a(0, 0, 0, 0);
            return;
        }
        float f = m45408j(abstractC0505d).f1880b;
        float f2 = m45408j(abstractC0505d).f1879a;
        int ceil = (int) Math.ceil(C0508g.m45373b(f, f2, abstractC0505d.mo45402b()));
        int ceil2 = (int) Math.ceil(C0508g.m45377a(f, f2, abstractC0505d.mo45402b()));
        abstractC0505d.mo45404a(ceil, ceil2, ceil, ceil2);
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: g */
    public final void mo45387g(AbstractC0505d abstractC0505d) {
        mo45393b(abstractC0505d, m45408j(abstractC0505d).f1880b);
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: h */
    public final void mo45386h(AbstractC0505d abstractC0505d) {
        mo45393b(abstractC0505d, m45408j(abstractC0505d).f1880b);
    }

    @Override // androidx.cardview.widget.AbstractC0506e
    /* renamed from: i */
    public final ColorStateList mo45385i(AbstractC0505d abstractC0505d) {
        return m45408j(abstractC0505d).f1881c;
    }
}
