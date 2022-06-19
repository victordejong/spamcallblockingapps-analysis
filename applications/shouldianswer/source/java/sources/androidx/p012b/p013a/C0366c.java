package androidx.p012b.p013a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
/* renamed from: androidx.b.a.c */
/* loaded from: classes-dex2jar.jar:androidx/b/a/c.class */
class C0366c implements AbstractC0370f {
    /* renamed from: j */
    private C0371g m6926j(AbstractC0369e abstractC0369e) {
        return (C0371g) abstractC0369e.mo6918c();
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: a */
    public float mo6915a(AbstractC0369e abstractC0369e) {
        return m6926j(abstractC0369e).m6901a();
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: a */
    public void mo6916a() {
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: a */
    public void mo6914a(AbstractC0369e abstractC0369e, float f) {
        m6926j(abstractC0369e).m6900a(f);
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: a */
    public void mo6913a(AbstractC0369e abstractC0369e, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        abstractC0369e.mo6920a(new C0371g(colorStateList, f));
        View mo6917d = abstractC0369e.mo6917d();
        mo6917d.setClipToOutline(true);
        mo6917d.setElevation(f2);
        mo6910b(abstractC0369e, f3);
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: a */
    public void mo6912a(AbstractC0369e abstractC0369e, ColorStateList colorStateList) {
        m6926j(abstractC0369e).m6898a(colorStateList);
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: b */
    public float mo6911b(AbstractC0369e abstractC0369e) {
        return mo6907d(abstractC0369e) * 2.0f;
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: b */
    public void mo6910b(AbstractC0369e abstractC0369e, float f) {
        m6926j(abstractC0369e).m6899a(f, abstractC0369e.mo6923a(), abstractC0369e.mo6919b());
        mo6905f(abstractC0369e);
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: c */
    public float mo6909c(AbstractC0369e abstractC0369e) {
        return mo6907d(abstractC0369e) * 2.0f;
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: c */
    public void mo6908c(AbstractC0369e abstractC0369e, float f) {
        abstractC0369e.mo6917d().setElevation(f);
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: d */
    public float mo6907d(AbstractC0369e abstractC0369e) {
        return m6926j(abstractC0369e).m6895b();
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: e */
    public float mo6906e(AbstractC0369e abstractC0369e) {
        return abstractC0369e.mo6917d().getElevation();
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: f */
    public void mo6905f(AbstractC0369e abstractC0369e) {
        if (!abstractC0369e.mo6923a()) {
            abstractC0369e.mo6921a(0, 0, 0, 0);
            return;
        }
        float mo6915a = mo6915a(abstractC0369e);
        float mo6907d = mo6907d(abstractC0369e);
        int ceil = (int) Math.ceil(C0372h.m6882b(mo6915a, mo6907d, abstractC0369e.mo6919b()));
        int ceil2 = (int) Math.ceil(C0372h.m6889a(mo6915a, mo6907d, abstractC0369e.mo6919b()));
        abstractC0369e.mo6921a(ceil, ceil2, ceil, ceil2);
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: g */
    public void mo6904g(AbstractC0369e abstractC0369e) {
        mo6910b(abstractC0369e, mo6915a(abstractC0369e));
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: h */
    public void mo6903h(AbstractC0369e abstractC0369e) {
        mo6910b(abstractC0369e, mo6915a(abstractC0369e));
    }

    @Override // androidx.p012b.p013a.AbstractC0370f
    /* renamed from: i */
    public ColorStateList mo6902i(AbstractC0369e abstractC0369e) {
        return m6926j(abstractC0369e).m6893c();
    }
}
