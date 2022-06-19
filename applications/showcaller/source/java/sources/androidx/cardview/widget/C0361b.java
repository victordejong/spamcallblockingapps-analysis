package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
/* renamed from: androidx.cardview.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/b.class */
public class C0361b implements AbstractC0365e {
    /* renamed from: p */
    private C0366f m34641p(AbstractC0364d abstractC0364d) {
        return (C0366f) abstractC0364d.mo34633f();
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: a */
    public void mo34631a(AbstractC0364d abstractC0364d, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        abstractC0364d.mo34636c(new C0366f(colorStateList, f));
        View mo34632g = abstractC0364d.mo34632g();
        mo34632g.setClipToOutline(true);
        mo34632g.setElevation(f2);
        mo34617o(abstractC0364d, f3);
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: b */
    public void mo34630b(AbstractC0364d abstractC0364d, float f) {
        m34641p(abstractC0364d).m34609h(f);
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: c */
    public float mo34629c(AbstractC0364d abstractC0364d) {
        return abstractC0364d.mo34632g().getElevation();
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: d */
    public float mo34628d(AbstractC0364d abstractC0364d) {
        return m34641p(abstractC0364d).m34613d();
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: e */
    public void mo34627e(AbstractC0364d abstractC0364d) {
        mo34617o(abstractC0364d, mo34625g(abstractC0364d));
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: f */
    public void mo34626f(AbstractC0364d abstractC0364d, float f) {
        abstractC0364d.mo34632g().setElevation(f);
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: g */
    public float mo34625g(AbstractC0364d abstractC0364d) {
        return m34641p(abstractC0364d).m34614c();
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: h */
    public ColorStateList mo34624h(AbstractC0364d abstractC0364d) {
        return m34641p(abstractC0364d).m34615b();
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: i */
    public void mo34623i(AbstractC0364d abstractC0364d) {
        if (!abstractC0364d.mo34634e()) {
            abstractC0364d.mo34638a(0, 0, 0, 0);
            return;
        }
        float mo34625g = mo34625g(abstractC0364d);
        float mo34628d = mo34628d(abstractC0364d);
        int ceil = (int) Math.ceil(C0367g.m34605c(mo34625g, mo34628d, abstractC0364d.mo34635d()));
        int ceil2 = (int) Math.ceil(C0367g.m34604d(mo34625g, mo34628d, abstractC0364d.mo34635d()));
        abstractC0364d.mo34638a(ceil, ceil2, ceil, ceil2);
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: j */
    public void mo34622j() {
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: k */
    public float mo34621k(AbstractC0364d abstractC0364d) {
        return mo34628d(abstractC0364d) * 2.0f;
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: l */
    public float mo34620l(AbstractC0364d abstractC0364d) {
        return mo34628d(abstractC0364d) * 2.0f;
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: m */
    public void mo34619m(AbstractC0364d abstractC0364d) {
        mo34617o(abstractC0364d, mo34625g(abstractC0364d));
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: n */
    public void mo34618n(AbstractC0364d abstractC0364d, ColorStateList colorStateList) {
        m34641p(abstractC0364d).m34611f(colorStateList);
    }

    @Override // androidx.cardview.widget.AbstractC0365e
    /* renamed from: o */
    public void mo34617o(AbstractC0364d abstractC0364d, float f) {
        m34641p(abstractC0364d).m34610g(f, abstractC0364d.mo34634e(), abstractC0364d.mo34635d());
        mo34623i(abstractC0364d);
    }
}
