package p000;

import android.animation.Animator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
/* renamed from: fc0 */
/* loaded from: classes-dex2jar.jar:fc0.class */
public abstract class fc0 {

    /* renamed from: a */
    public final ic0 f6602a;

    /* renamed from: b */
    public final Rect f6603b;

    /* renamed from: c */
    public Animator f6604c;

    /* renamed from: d */
    public boolean f6605d;

    /* renamed from: e */
    public float f6606e;

    /* renamed from: f */
    public float f6607f;

    public fc0(ic0 ic0Var, Rect rect) {
        this.f6602a = ic0Var;
        this.f6603b = rect;
    }

    /* renamed from: l */
    public static float m1777l(Rect rect) {
        float width = rect.width() / 2.0f;
        float height = rect.height() / 2.0f;
        return (float) Math.sqrt((width * width) + (height * height));
    }

    /* renamed from: a */
    public void m1788a() {
        m1787b();
    }

    /* renamed from: b */
    public final void m1787b() {
        Animator animator = this.f6604c;
        if (animator != null) {
            animator.cancel();
            this.f6604c = null;
        }
    }

    /* renamed from: c */
    public abstract Animator m1786c(boolean z);

    /* renamed from: d */
    public abstract Animator m1785d();

    /* renamed from: e */
    public boolean m1784e(Canvas canvas, Paint paint) {
        return m1783f(canvas, paint);
    }

    /* renamed from: f */
    public abstract boolean m1783f(Canvas canvas, Paint paint);

    /* renamed from: g */
    public void m1782g() {
        m1781h();
    }

    /* renamed from: h */
    public final void m1781h() {
        Animator animator = this.f6604c;
        if (animator != null) {
            animator.end();
            this.f6604c = null;
        }
    }

    /* renamed from: i */
    public final void m1780i(boolean z) {
        m1788a();
        Animator m1786c = m1786c(z);
        this.f6604c = m1786c;
        if (m1786c != null) {
            m1786c.start();
        }
    }

    /* renamed from: j */
    public final void m1779j() {
        m1788a();
        Animator m1785d = m1785d();
        this.f6604c = m1785d;
        m1785d.start();
    }

    /* renamed from: k */
    public void m1778k(Rect rect) {
        int ceil = (int) Math.ceil(this.f6606e);
        int i = -ceil;
        rect.set(i, i, ceil, ceil);
    }

    /* renamed from: m */
    public final void m1776m() {
        this.f6602a.D(false);
    }

    /* renamed from: n */
    public void m1775n() {
        if (!this.f6605d) {
            float m1777l = m1777l(this.f6603b);
            this.f6606e = m1777l;
            m1773p(m1777l);
        }
    }

    /* renamed from: o */
    public final void m1774o() {
        if (!this.f6605d) {
            float width = this.f6603b.width() / 2.0f;
            float height = this.f6603b.height() / 2.0f;
            m1773p((float) Math.sqrt((width * width) + (height * height)));
        }
    }

    /* renamed from: p */
    public void m1773p(float f) {
    }

    /* renamed from: q */
    public final void m1772q(float f, float f2) {
        if (f >= 0.0f) {
            this.f6605d = true;
        } else {
            f = m1777l(this.f6603b);
        }
        this.f6606e = f;
        this.f6607f = f2;
        m1773p(this.f6606e);
    }
}
