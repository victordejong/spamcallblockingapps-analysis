package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.annotation.Nullable;
import androidx.appcompat.C0042R;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSeekBarHelper.class */
class AppCompatSeekBarHelper extends AppCompatProgressBarHelper {

    /* renamed from: d */
    private final SeekBar f968d;

    /* renamed from: e */
    private Drawable f969e;

    /* renamed from: f */
    private ColorStateList f970f = null;

    /* renamed from: g */
    private PorterDuff.Mode f971g = null;

    /* renamed from: h */
    private boolean f972h = false;

    /* renamed from: i */
    private boolean f973i = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatSeekBarHelper(SeekBar seekBar) {
        super(seekBar);
        this.f968d = seekBar;
    }

    /* renamed from: f */
    private void m21604f() {
        if (this.f969e == null) {
            return;
        }
        if (this.f972h || this.f973i) {
            Drawable r = DrawableCompat.m19495r(this.f969e.mutate());
            this.f969e = r;
            if (this.f972h) {
                DrawableCompat.m19498o(r, this.f970f);
            }
            if (this.f973i) {
                DrawableCompat.m19497p(this.f969e, this.f971g);
            }
            if (this.f969e.isStateful()) {
                this.f969e.setState(this.f968d.getDrawableState());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.widget.AppCompatProgressBarHelper
    /* renamed from: c */
    public void mo21605c(AttributeSet attributeSet, int i) {
        super.mo21605c(attributeSet, i);
        TintTypedArray v = TintTypedArray.m21244v(this.f968d.getContext(), attributeSet, C0042R.styleable.AppCompatSeekBar, i, 0);
        SeekBar seekBar = this.f968d;
        ViewCompat.m19187l0(seekBar, seekBar.getContext(), C0042R.styleable.AppCompatSeekBar, attributeSet, v.m21248r(), i, 0);
        Drawable h = v.m21258h(C0042R.styleable.AppCompatSeekBar_android_thumb);
        if (h != null) {
            this.f968d.setThumb(h);
        }
        m21600j(v.m21259g(C0042R.styleable.AppCompatSeekBar_tickMark));
        if (v.m21247s(C0042R.styleable.AppCompatSeekBar_tickMarkTintMode)) {
            this.f971g = DrawableUtils.m21501e(v.m21255k(C0042R.styleable.AppCompatSeekBar_tickMarkTintMode, -1), this.f971g);
            this.f973i = true;
        }
        if (v.m21247s(C0042R.styleable.AppCompatSeekBar_tickMarkTint)) {
            this.f970f = v.m21263c(C0042R.styleable.AppCompatSeekBar_tickMarkTint);
            this.f972h = true;
        }
        v.m21243w();
        m21604f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m21603g(Canvas canvas) {
        if (this.f969e != null) {
            int max = this.f968d.getMax();
            int i = 1;
            if (max > 1) {
                int intrinsicWidth = this.f969e.getIntrinsicWidth();
                int intrinsicHeight = this.f969e.getIntrinsicHeight();
                int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                if (intrinsicHeight >= 0) {
                    i = intrinsicHeight / 2;
                }
                this.f969e.setBounds(-i2, -i, i2, i);
                float width = ((this.f968d.getWidth() - this.f968d.getPaddingLeft()) - this.f968d.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(this.f968d.getPaddingLeft(), this.f968d.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.f969e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void m21602h() {
        Drawable drawable = this.f969e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f968d.getDrawableState())) {
            this.f968d.invalidateDrawable(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public void m21601i() {
        Drawable drawable = this.f969e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* renamed from: j */
    void m21600j(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f969e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f969e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f968d);
            DrawableCompat.m19500m(drawable, ViewCompat.m19244A(this.f968d));
            if (drawable.isStateful()) {
                drawable.setState(this.f968d.getDrawableState());
            }
            m21604f();
        }
        this.f968d.invalidate();
    }
}
