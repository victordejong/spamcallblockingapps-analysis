package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
/* renamed from: androidx.cardview.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/b.class */
public class C0409b implements AbstractC0413e {
    /* renamed from: j */
    private C0414f m21050j(AbstractC0412d abstractC0412d) {
        return (C0414f) abstractC0412d.mo21042c();
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: a */
    public float mo21039a(AbstractC0412d abstractC0412d) {
        return m21050j(abstractC0412d).m21025a();
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: a */
    public void mo21040a() {
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: a */
    public void mo21038a(AbstractC0412d abstractC0412d, float f) {
        m21050j(abstractC0412d).m21024a(f);
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: a */
    public void mo21037a(AbstractC0412d abstractC0412d, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        abstractC0412d.mo21044a(new C0414f(colorStateList, f));
        View mo21041d = abstractC0412d.mo21041d();
        mo21041d.setClipToOutline(true);
        mo21041d.setElevation(f2);
        mo21034b(abstractC0412d, f3);
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: a */
    public void mo21036a(AbstractC0412d abstractC0412d, ColorStateList colorStateList) {
        m21050j(abstractC0412d).m21022a(colorStateList);
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: b */
    public float mo21035b(AbstractC0412d abstractC0412d) {
        return mo21031d(abstractC0412d) * 2.0f;
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: b */
    public void mo21034b(AbstractC0412d abstractC0412d, float f) {
        m21050j(abstractC0412d).m21023a(f, abstractC0412d.mo21047a(), abstractC0412d.mo21043b());
        mo21029f(abstractC0412d);
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: c */
    public float mo21033c(AbstractC0412d abstractC0412d) {
        return mo21031d(abstractC0412d) * 2.0f;
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: c */
    public void mo21032c(AbstractC0412d abstractC0412d, float f) {
        abstractC0412d.mo21041d().setElevation(f);
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: d */
    public float mo21031d(AbstractC0412d abstractC0412d) {
        return m21050j(abstractC0412d).m21019b();
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: e */
    public float mo21030e(AbstractC0412d abstractC0412d) {
        return abstractC0412d.mo21041d().getElevation();
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: f */
    public void mo21029f(AbstractC0412d abstractC0412d) {
        if (!abstractC0412d.mo21047a()) {
            abstractC0412d.mo21045a(0, 0, 0, 0);
            return;
        }
        float mo21039a = mo21039a(abstractC0412d);
        float mo21031d = mo21031d(abstractC0412d);
        int ceil = (int) Math.ceil(C0415g.m21006b(mo21039a, mo21031d, abstractC0412d.mo21043b()));
        int ceil2 = (int) Math.ceil(C0415g.m21013a(mo21039a, mo21031d, abstractC0412d.mo21043b()));
        abstractC0412d.mo21045a(ceil, ceil2, ceil, ceil2);
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: g */
    public void mo21028g(AbstractC0412d abstractC0412d) {
        mo21034b(abstractC0412d, mo21039a(abstractC0412d));
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: h */
    public void mo21027h(AbstractC0412d abstractC0412d) {
        mo21034b(abstractC0412d, mo21039a(abstractC0412d));
    }

    @Override // androidx.cardview.widget.AbstractC0413e
    /* renamed from: i */
    public ColorStateList mo21026i(AbstractC0412d abstractC0412d) {
        return m21050j(abstractC0412d).m21017c();
    }
}
