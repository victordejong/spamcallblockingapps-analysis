package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.C0083a;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p026h.C0595u;
/* renamed from: androidx.appcompat.widget.r */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/r.class */
class C0360r extends C0356n {

    /* renamed from: a */
    private final SeekBar f1483a;

    /* renamed from: b */
    private Drawable f1484b;

    /* renamed from: c */
    private ColorStateList f1485c = null;

    /* renamed from: d */
    private PorterDuff.Mode f1486d = null;

    /* renamed from: e */
    private boolean f1487e = false;

    /* renamed from: f */
    private boolean f1488f = false;

    public C0360r(SeekBar seekBar) {
        super(seekBar);
        this.f1483a = seekBar;
    }

    /* renamed from: d */
    private void m21270d() {
        if (this.f1484b != null) {
            if (!this.f1487e && !this.f1488f) {
                return;
            }
            this.f1484b = C0535a.m20584g(this.f1484b.mutate());
            if (this.f1487e) {
                C0535a.m20595a(this.f1484b, this.f1485c);
            }
            if (this.f1488f) {
                C0535a.m20592a(this.f1484b, this.f1486d);
            }
            if (!this.f1484b.isStateful()) {
                return;
            }
            this.f1484b.setState(this.f1483a.getDrawableState());
        }
    }

    /* renamed from: a */
    public void m21275a(Canvas canvas) {
        int max;
        int i = 1;
        if (this.f1484b == null || (max = this.f1483a.getMax()) <= 1) {
            return;
        }
        int intrinsicWidth = this.f1484b.getIntrinsicWidth();
        int intrinsicHeight = this.f1484b.getIntrinsicHeight();
        int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
        if (intrinsicHeight >= 0) {
            i = intrinsicHeight / 2;
        }
        this.f1484b.setBounds(-i2, -i, i2, i);
        float width = ((this.f1483a.getWidth() - this.f1483a.getPaddingLeft()) - this.f1483a.getPaddingRight()) / max;
        int save = canvas.save();
        canvas.translate(this.f1483a.getPaddingLeft(), this.f1483a.getHeight() / 2);
        for (int i3 = 0; i3 <= max; i3++) {
            this.f1484b.draw(canvas);
            canvas.translate(width, 0.0f);
        }
        canvas.restoreToCount(save);
    }

    /* renamed from: a */
    void m21274a(Drawable drawable) {
        if (this.f1484b != null) {
            this.f1484b.setCallback(null);
        }
        this.f1484b = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f1483a);
            C0535a.m20589b(drawable, C0595u.m20320g(this.f1483a));
            if (drawable.isStateful()) {
                drawable.setState(this.f1483a.getDrawableState());
            }
            m21270d();
        }
        this.f1483a.invalidate();
    }

    @Override // androidx.appcompat.widget.C0356n
    /* renamed from: a */
    public void mo21273a(AttributeSet attributeSet, int i) {
        super.mo21273a(attributeSet, i);
        C0317ap m21433a = C0317ap.m21433a(this.f1483a.getContext(), attributeSet, C0083a.C0093j.AppCompatSeekBar, i, 0);
        Drawable m21432b = m21433a.m21432b(C0083a.C0093j.AppCompatSeekBar_android_thumb);
        if (m21432b != null) {
            this.f1483a.setThumb(m21432b);
        }
        m21274a(m21433a.m21440a(C0083a.C0093j.AppCompatSeekBar_tickMark));
        if (m21433a.m21421g(C0083a.C0093j.AppCompatSeekBar_tickMarkTintMode)) {
            this.f1486d = C0369y.m21168a(m21433a.m21438a(C0083a.C0093j.AppCompatSeekBar_tickMarkTintMode, -1), this.f1486d);
            this.f1488f = true;
        }
        if (m21433a.m21421g(C0083a.C0093j.AppCompatSeekBar_tickMarkTint)) {
            this.f1485c = m21433a.m21425e(C0083a.C0093j.AppCompatSeekBar_tickMarkTint);
            this.f1487e = true;
        }
        m21433a.m21441a();
        m21270d();
    }

    /* renamed from: b */
    public void m21272b() {
        if (this.f1484b != null) {
            this.f1484b.jumpToCurrentState();
        }
    }

    /* renamed from: c */
    public void m21271c() {
        Drawable drawable = this.f1484b;
        if (drawable == null || !drawable.isStateful() || !drawable.setState(this.f1483a.getDrawableState())) {
            return;
        }
        this.f1483a.invalidateDrawable(drawable);
    }
}
