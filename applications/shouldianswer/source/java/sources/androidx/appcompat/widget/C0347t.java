package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.C0051a;
import androidx.core.graphics.drawable.C0575a;
import androidx.core.p023g.C0552u;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.appcompat.widget.t */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t.class */
class C0347t extends C0343p {

    /* renamed from: a */
    private final SeekBar f1397a;

    /* renamed from: b */
    private Drawable f1398b;

    /* renamed from: c */
    private ColorStateList f1399c = null;

    /* renamed from: d */
    private PorterDuff.Mode f1400d = null;

    /* renamed from: e */
    private boolean f1401e = false;

    /* renamed from: f */
    private boolean f1402f = false;

    public C0347t(SeekBar seekBar) {
        super(seekBar);
        this.f1397a = seekBar;
    }

    /* renamed from: d */
    private void m7031d() {
        if (this.f1398b != null) {
            if (!this.f1401e && !this.f1402f) {
                return;
            }
            this.f1398b = C0575a.m6122g(this.f1398b.mutate());
            if (this.f1401e) {
                C0575a.m6133a(this.f1398b, this.f1399c);
            }
            if (this.f1402f) {
                C0575a.m6130a(this.f1398b, this.f1400d);
            }
            if (!this.f1398b.isStateful()) {
                return;
            }
            this.f1398b.setState(this.f1397a.getDrawableState());
        }
    }

    /* renamed from: a */
    public void m7036a(Canvas canvas) {
        if (this.f1398b != null) {
            int max = this.f1397a.getMax();
            int i = 1;
            if (max <= 1) {
                return;
            }
            int intrinsicWidth = this.f1398b.getIntrinsicWidth();
            int intrinsicHeight = this.f1398b.getIntrinsicHeight();
            int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
            if (intrinsicHeight >= 0) {
                i = intrinsicHeight / 2;
            }
            this.f1398b.setBounds(-i2, -i, i2, i);
            float width = ((this.f1397a.getWidth() - this.f1397a.getPaddingLeft()) - this.f1397a.getPaddingRight()) / max;
            int save = canvas.save();
            canvas.translate(this.f1397a.getPaddingLeft(), this.f1397a.getHeight() / 2);
            for (int i3 = 0; i3 <= max; i3++) {
                this.f1398b.draw(canvas);
                canvas.translate(width, FlexItem.FLEX_GROW_DEFAULT);
            }
            canvas.restoreToCount(save);
        }
    }

    /* renamed from: a */
    void m7035a(Drawable drawable) {
        Drawable drawable2 = this.f1398b;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1398b = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f1397a);
            C0575a.m6127b(drawable, C0552u.m6245f(this.f1397a));
            if (drawable.isStateful()) {
                drawable.setState(this.f1397a.getDrawableState());
            }
            m7031d();
        }
        this.f1397a.invalidate();
    }

    @Override // androidx.appcompat.widget.C0343p
    /* renamed from: a */
    public void mo7034a(AttributeSet attributeSet, int i) {
        super.mo7034a(attributeSet, i);
        C0311as m7156a = C0311as.m7156a(this.f1397a.getContext(), attributeSet, C0051a.C0061j.AppCompatSeekBar, i, 0);
        Drawable m7155b = m7156a.m7155b(C0051a.C0061j.AppCompatSeekBar_android_thumb);
        if (m7155b != null) {
            this.f1397a.setThumb(m7155b);
        }
        m7035a(m7156a.m7163a(C0051a.C0061j.AppCompatSeekBar_tickMark));
        if (m7156a.m7144g(C0051a.C0061j.AppCompatSeekBar_tickMarkTintMode)) {
            this.f1400d = C0268aa.m7306a(m7156a.m7161a(C0051a.C0061j.AppCompatSeekBar_tickMarkTintMode, -1), this.f1400d);
            this.f1402f = true;
        }
        if (m7156a.m7144g(C0051a.C0061j.AppCompatSeekBar_tickMarkTint)) {
            this.f1399c = m7156a.m7148e(C0051a.C0061j.AppCompatSeekBar_tickMarkTint);
            this.f1401e = true;
        }
        m7156a.m7164a();
        m7031d();
    }

    /* renamed from: b */
    public void m7033b() {
        Drawable drawable = this.f1398b;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* renamed from: c */
    public void m7032c() {
        Drawable drawable = this.f1398b;
        if (drawable == null || !drawable.isStateful() || !drawable.setState(this.f1397a.getDrawableState())) {
            return;
        }
        this.f1397a.invalidateDrawable(drawable);
    }
}
