package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.core.graphics.drawable.C0615a;
import p020b.p021a.C1432j;
import p020b.p041h.p050l.C1679w;
/* renamed from: androidx.appcompat.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/k.class */
class C0304k extends C0298i {

    /* renamed from: d */
    private final SeekBar f1317d;

    /* renamed from: e */
    private Drawable f1318e;

    /* renamed from: f */
    private ColorStateList f1319f = null;

    /* renamed from: g */
    private PorterDuff.Mode f1320g = null;

    /* renamed from: h */
    private boolean f1321h = false;

    /* renamed from: i */
    private boolean f1322i = false;

    public C0304k(SeekBar seekBar) {
        super(seekBar);
        this.f1317d = seekBar;
    }

    /* renamed from: f */
    private void m34875f() {
        Drawable drawable = this.f1318e;
        if (drawable != null) {
            if (!this.f1321h && !this.f1322i) {
                return;
            }
            Drawable m33212r = C0615a.m33212r(drawable.mutate());
            this.f1318e = m33212r;
            if (this.f1321h) {
                C0615a.m33215o(m33212r, this.f1319f);
            }
            if (this.f1322i) {
                C0615a.m33214p(this.f1318e, this.f1320g);
            }
            if (!this.f1318e.isStateful()) {
                return;
            }
            this.f1318e.setState(this.f1317d.getDrawableState());
        }
    }

    @Override // androidx.appcompat.widget.C0298i
    /* renamed from: c */
    public void mo34876c(AttributeSet attributeSet, int i) {
        super.mo34876c(attributeSet, i);
        Context context = this.f1317d.getContext();
        int[] iArr = C1432j.AppCompatSeekBar;
        C0286e0 m34946v = C0286e0.m34946v(context, attributeSet, iArr, i, 0);
        SeekBar seekBar = this.f1317d;
        C1679w.m29277p0(seekBar, seekBar.getContext(), iArr, attributeSet, m34946v.m34950r(), i, 0);
        Drawable m34960h = m34946v.m34960h(C1432j.AppCompatSeekBar_android_thumb);
        if (m34960h != null) {
            this.f1317d.setThumb(m34960h);
        }
        m34871j(m34946v.m34961g(C1432j.AppCompatSeekBar_tickMark));
        int i2 = C1432j.AppCompatSeekBar_tickMarkTintMode;
        if (m34946v.m34949s(i2)) {
            this.f1320g = C0317q.m34773e(m34946v.m34957k(i2, -1), this.f1320g);
            this.f1322i = true;
        }
        int i3 = C1432j.AppCompatSeekBar_tickMarkTint;
        if (m34946v.m34949s(i3)) {
            this.f1319f = m34946v.m34965c(i3);
            this.f1321h = true;
        }
        m34946v.m34945w();
        m34875f();
    }

    /* renamed from: g */
    public void m34874g(Canvas canvas) {
        if (this.f1318e != null) {
            int max = this.f1317d.getMax();
            int i = 1;
            if (max <= 1) {
                return;
            }
            int intrinsicWidth = this.f1318e.getIntrinsicWidth();
            int intrinsicHeight = this.f1318e.getIntrinsicHeight();
            int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
            if (intrinsicHeight >= 0) {
                i = intrinsicHeight / 2;
            }
            this.f1318e.setBounds(-i2, -i, i2, i);
            float width = ((this.f1317d.getWidth() - this.f1317d.getPaddingLeft()) - this.f1317d.getPaddingRight()) / max;
            int save = canvas.save();
            canvas.translate(this.f1317d.getPaddingLeft(), this.f1317d.getHeight() / 2);
            for (int i3 = 0; i3 <= max; i3++) {
                this.f1318e.draw(canvas);
                canvas.translate(width, 0.0f);
            }
            canvas.restoreToCount(save);
        }
    }

    /* renamed from: h */
    public void m34873h() {
        Drawable drawable = this.f1318e;
        if (drawable == null || !drawable.isStateful() || !drawable.setState(this.f1317d.getDrawableState())) {
            return;
        }
        this.f1317d.invalidateDrawable(drawable);
    }

    /* renamed from: i */
    public void m34872i() {
        Drawable drawable = this.f1318e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* renamed from: j */
    void m34871j(Drawable drawable) {
        Drawable drawable2 = this.f1318e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1318e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f1317d);
            C0615a.m33217m(drawable, C1679w.m29346C(this.f1317d));
            if (drawable.isStateful()) {
                drawable.setState(this.f1317d.getDrawableState());
            }
            m34875f();
        }
        this.f1317d.invalidate();
    }
}
