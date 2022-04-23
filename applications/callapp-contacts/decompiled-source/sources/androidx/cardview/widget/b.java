package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/b.class */
public final class b implements e {
    private static f j(d dVar) {
        return (f) dVar.c();
    }

    @Override // androidx.cardview.widget.e
    public final float a(d dVar) {
        return j(dVar).f1302b;
    }

    @Override // androidx.cardview.widget.e
    public final void a() {
    }

    @Override // androidx.cardview.widget.e
    public final void a(d dVar, float f) {
        f j = j(dVar);
        if (f != j.f1301a) {
            j.f1301a = f;
            j.a((Rect) null);
            j.invalidateSelf();
        }
    }

    @Override // androidx.cardview.widget.e
    public final void a(d dVar, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        dVar.a(new f(colorStateList, f));
        View d2 = dVar.d();
        d2.setClipToOutline(true);
        d2.setElevation(f2);
        b(dVar, f3);
    }

    @Override // androidx.cardview.widget.e
    public final void a(d dVar, ColorStateList colorStateList) {
        f j = j(dVar);
        j.a(colorStateList);
        j.invalidateSelf();
    }

    @Override // androidx.cardview.widget.e
    public final float b(d dVar) {
        return j(dVar).f1301a * 2.0f;
    }

    @Override // androidx.cardview.widget.e
    public final void b(d dVar, float f) {
        j(dVar).a(f, dVar.a(), dVar.b());
        f(dVar);
    }

    @Override // androidx.cardview.widget.e
    public final float c(d dVar) {
        return j(dVar).f1301a * 2.0f;
    }

    @Override // androidx.cardview.widget.e
    public final void c(d dVar, float f) {
        dVar.d().setElevation(f);
    }

    @Override // androidx.cardview.widget.e
    public final float d(d dVar) {
        return j(dVar).f1301a;
    }

    @Override // androidx.cardview.widget.e
    public final float e(d dVar) {
        return dVar.d().getElevation();
    }

    @Override // androidx.cardview.widget.e
    public final void f(d dVar) {
        if (!dVar.a()) {
            dVar.a(0, 0, 0, 0);
            return;
        }
        float f = j(dVar).f1302b;
        float f2 = j(dVar).f1301a;
        int ceil = (int) Math.ceil(g.b(f, f2, dVar.b()));
        int ceil2 = (int) Math.ceil(g.a(f, f2, dVar.b()));
        dVar.a(ceil, ceil2, ceil, ceil2);
    }

    @Override // androidx.cardview.widget.e
    public final void g(d dVar) {
        b(dVar, j(dVar).f1302b);
    }

    @Override // androidx.cardview.widget.e
    public final void h(d dVar) {
        b(dVar, j(dVar).f1302b);
    }

    @Override // androidx.cardview.widget.e
    public final ColorStateList i(d dVar) {
        return j(dVar).f1303c;
    }
}
