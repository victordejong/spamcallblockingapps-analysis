package p1727n3.p1734b.p1743f;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.C0032R;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.b.f.n */
/* loaded from: classes-dex2jar.jar:n3/b/f/n.class */
public class C25530n extends C25520i {

    /* renamed from: d */
    public final SeekBar f71430d;

    /* renamed from: e */
    public Drawable f71431e;

    /* renamed from: f */
    public ColorStateList f71432f = null;

    /* renamed from: g */
    public PorterDuff.Mode f71433g = null;

    /* renamed from: h */
    public boolean f71434h = false;

    /* renamed from: i */
    public boolean f71435i = false;

    public C25530n(SeekBar seekBar) {
        super(seekBar);
        this.f71430d = seekBar;
    }

    @Override // p1727n3.p1734b.p1743f.C25520i
    /* renamed from: a */
    public void mo3340a(AttributeSet attributeSet, int i) {
        super.mo3340a(attributeSet, i);
        Context context = this.f71430d.getContext();
        int[] iArr = C0032R.styleable.AppCompatSeekBar;
        C25540r0 m3306q = C25540r0.m3306q(context, attributeSet, iArr, i, 0);
        SeekBar seekBar = this.f71430d;
        C26614s.m1565p(seekBar, seekBar.getContext(), iArr, attributeSet, m3306q.f71466b, i, 0);
        Drawable m3315h = m3306q.m3315h(C0032R.styleable.AppCompatSeekBar_android_thumb);
        if (m3315h != null) {
            this.f71430d.setThumb(m3315h);
        }
        Drawable m3316g = m3306q.m3316g(C0032R.styleable.AppCompatSeekBar_tickMark);
        Drawable drawable = this.f71431e;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f71431e = m3316g;
        if (m3316g != null) {
            m3316g.setCallback(this.f71430d);
            SeekBar seekBar2 = this.f71430d;
            AtomicInteger atomicInteger = C26614s.f74505a;
            m3316g.setLayoutDirection(seekBar2.getLayoutDirection());
            if (m3316g.isStateful()) {
                m3316g.setState(this.f71430d.getDrawableState());
            }
            m3339c();
        }
        this.f71430d.invalidate();
        int i2 = C0032R.styleable.AppCompatSeekBar_tickMarkTintMode;
        if (m3306q.m3308o(i2)) {
            this.f71433g = C25553w.m3248c(m3306q.m3313j(i2, -1), this.f71433g);
            this.f71435i = true;
        }
        int i3 = C0032R.styleable.AppCompatSeekBar_tickMarkTint;
        if (m3306q.m3308o(i3)) {
            this.f71432f = m3306q.m3320c(i3);
            this.f71434h = true;
        }
        m3306q.f71466b.recycle();
        m3339c();
    }

    /* renamed from: c */
    public final void m3339c() {
        Drawable drawable = this.f71431e;
        if (drawable != null) {
            if (!this.f71434h && !this.f71435i) {
                return;
            }
            Drawable mutate = drawable.mutate();
            this.f71431e = mutate;
            if (this.f71434h) {
                mutate.setTintList(this.f71432f);
            }
            if (this.f71435i) {
                this.f71431e.setTintMode(this.f71433g);
            }
            if (!this.f71431e.isStateful()) {
                return;
            }
            this.f71431e.setState(this.f71430d.getDrawableState());
        }
    }

    /* renamed from: d */
    public void m3338d(Canvas canvas) {
        if (this.f71431e != null) {
            int max = this.f71430d.getMax();
            int i = 1;
            if (max <= 1) {
                return;
            }
            int intrinsicWidth = this.f71431e.getIntrinsicWidth();
            int intrinsicHeight = this.f71431e.getIntrinsicHeight();
            int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
            if (intrinsicHeight >= 0) {
                i = intrinsicHeight / 2;
            }
            this.f71431e.setBounds(-i2, -i, i2, i);
            float width = ((this.f71430d.getWidth() - this.f71430d.getPaddingLeft()) - this.f71430d.getPaddingRight()) / max;
            int save = canvas.save();
            canvas.translate(this.f71430d.getPaddingLeft(), this.f71430d.getHeight() / 2);
            for (int i3 = 0; i3 <= max; i3++) {
                this.f71431e.draw(canvas);
                canvas.translate(width, 0.0f);
            }
            canvas.restoreToCount(save);
        }
    }
}
