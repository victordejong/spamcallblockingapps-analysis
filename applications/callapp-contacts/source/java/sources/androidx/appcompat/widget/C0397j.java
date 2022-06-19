package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.C0142a;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.view.C0926v;
/* renamed from: androidx.appcompat.widget.j */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/j.class */
final class C0397j extends C0396i {

    /* renamed from: b */
    final SeekBar f1591b;

    /* renamed from: c */
    Drawable f1592c;

    /* renamed from: d */
    private ColorStateList f1593d = null;

    /* renamed from: e */
    private PorterDuff.Mode f1594e = null;

    /* renamed from: f */
    private boolean f1595f = false;

    /* renamed from: g */
    private boolean f1596g = false;

    public C0397j(SeekBar seekBar) {
        super(seekBar);
        this.f1591b = seekBar;
    }

    /* renamed from: a */
    private void m45708a() {
        Drawable drawable = this.f1592c;
        if (drawable != null) {
            if (!this.f1595f && !this.f1596g) {
                return;
            }
            Drawable m44345f = C0840a.m44345f(drawable.mutate());
            this.f1592c = m44345f;
            if (this.f1595f) {
                C0840a.m44355a(m44345f, this.f1593d);
            }
            if (this.f1596g) {
                C0840a.m44352a(this.f1592c, this.f1594e);
            }
            if (!this.f1592c.isStateful()) {
                return;
            }
            this.f1592c.setState(this.f1591b.getDrawableState());
        }
    }

    @Override // androidx.appcompat.widget.C0396i
    /* renamed from: a */
    public final void mo45707a(AttributeSet attributeSet, int i) {
        super.mo45707a(attributeSet, i);
        C0370ab m45804a = C0370ab.m45804a(this.f1591b.getContext(), attributeSet, C0142a.C0152j.AppCompatSeekBar, i, 0);
        SeekBar seekBar = this.f1591b;
        C0926v.m44133a(seekBar, seekBar.getContext(), C0142a.C0152j.AppCompatSeekBar, attributeSet, m45804a.f1491a, i);
        Drawable m45803b = m45804a.m45803b(C0142a.C0152j.AppCompatSeekBar_android_thumb);
        if (m45803b != null) {
            this.f1591b.setThumb(m45803b);
        }
        Drawable m45810a = m45804a.m45810a(C0142a.C0152j.AppCompatSeekBar_tickMark);
        Drawable drawable = this.f1592c;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f1592c = m45810a;
        if (m45810a != null) {
            m45810a.setCallback(this.f1591b);
            C0840a.m44349b(m45810a, C0926v.m44097f(this.f1591b));
            if (m45810a.isStateful()) {
                m45810a.setState(this.f1591b.getDrawableState());
            }
            m45708a();
        }
        this.f1591b.invalidate();
        if (m45804a.m45793g(C0142a.C0152j.AppCompatSeekBar_tickMarkTintMode)) {
            this.f1594e = C0407p.m45622a(m45804a.m45809a(C0142a.C0152j.AppCompatSeekBar_tickMarkTintMode, -1), this.f1594e);
            this.f1596g = true;
        }
        if (m45804a.m45793g(C0142a.C0152j.AppCompatSeekBar_tickMarkTint)) {
            this.f1593d = m45804a.m45797e(C0142a.C0152j.AppCompatSeekBar_tickMarkTint);
            this.f1595f = true;
        }
        m45804a.f1491a.recycle();
        m45708a();
    }
}
