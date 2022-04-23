package p012b.p016b.p026q;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import p012b.p016b.C0583j;
import p012b.p042i.p046j.p047m.C0907a;
import p012b.p042i.p054p.C1002u;
/* renamed from: b.b.q.j */
/* loaded from: classes-dex2jar.jar:b/b/q/j.class */
public class C0702j extends C0698i {

    /* renamed from: d */
    public final SeekBar f3456d;

    /* renamed from: e */
    public Drawable f3457e;

    /* renamed from: f */
    public ColorStateList f3458f = null;

    /* renamed from: g */
    public PorterDuff.Mode f3459g = null;

    /* renamed from: h */
    public boolean f3460h = false;

    /* renamed from: i */
    public boolean f3461i = false;

    public C0702j(SeekBar seekBar) {
        super(seekBar);
        this.f3456d = seekBar;
    }

    /* renamed from: a */
    public void m36363a(Canvas canvas) {
        if (this.f3457e != null) {
            int max = this.f3456d.getMax();
            int i = 1;
            if (max > 1) {
                int intrinsicWidth = this.f3457e.getIntrinsicWidth();
                int intrinsicHeight = this.f3457e.getIntrinsicHeight();
                int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                if (intrinsicHeight >= 0) {
                    i = intrinsicHeight / 2;
                }
                this.f3457e.setBounds(-i2, -i, i2, i);
                float width = ((this.f3456d.getWidth() - this.f3456d.getPaddingLeft()) - this.f3456d.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(this.f3456d.getPaddingLeft(), this.f3456d.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.f3457e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }

    @Override // p012b.p016b.p026q.C0698i
    /* renamed from: a */
    public void mo36362a(AttributeSet attributeSet, int i) {
        super.mo36362a(attributeSet, i);
        C0691f0 a = C0691f0.m36414a(this.f3456d.getContext(), attributeSet, C0583j.AppCompatSeekBar, i, 0);
        SeekBar seekBar = this.f3456d;
        C1002u.m35244a(seekBar, seekBar.getContext(), C0583j.AppCompatSeekBar, attributeSet, a.m36422a(), i, 0);
        Drawable c = a.m36410c(C0583j.AppCompatSeekBar_android_thumb);
        if (c != null) {
            this.f3456d.setThumb(c);
        }
        m36361b(a.m36412b(C0583j.AppCompatSeekBar_tickMark));
        if (a.m36402g(C0583j.AppCompatSeekBar_tickMarkTintMode)) {
            this.f3459g = C0716p.m36252a(a.m36407d(C0583j.AppCompatSeekBar_tickMarkTintMode, -1), this.f3459g);
            this.f3461i = true;
        }
        if (a.m36402g(C0583j.AppCompatSeekBar_tickMarkTint)) {
            this.f3458f = a.m36421a(C0583j.AppCompatSeekBar_tickMarkTint);
            this.f3460h = true;
        }
        a.m36413b();
        m36360c();
    }

    /* renamed from: b */
    public void m36361b(Drawable drawable) {
        Drawable drawable2 = this.f3457e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f3457e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f3456d);
            C0907a.m35528a(drawable, C1002u.m35208n(this.f3456d));
            if (drawable.isStateful()) {
                drawable.setState(this.f3456d.getDrawableState());
            }
            m36360c();
        }
        this.f3456d.invalidate();
    }

    /* renamed from: c */
    public final void m36360c() {
        if (this.f3457e == null) {
            return;
        }
        if (this.f3460h || this.f3461i) {
            Drawable h = C0907a.m35514h(this.f3457e.mutate());
            this.f3457e = h;
            if (this.f3460h) {
                C0907a.m35526a(h, this.f3458f);
            }
            if (this.f3461i) {
                C0907a.m35523a(this.f3457e, this.f3459g);
            }
            if (this.f3457e.isStateful()) {
                this.f3457e.setState(this.f3456d.getDrawableState());
            }
        }
    }

    /* renamed from: d */
    public void m36359d() {
        Drawable drawable = this.f3457e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f3456d.getDrawableState())) {
            this.f3456d.invalidateDrawable(drawable);
        }
    }

    /* renamed from: e */
    public void m36358e() {
        Drawable drawable = this.f3457e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }
}
