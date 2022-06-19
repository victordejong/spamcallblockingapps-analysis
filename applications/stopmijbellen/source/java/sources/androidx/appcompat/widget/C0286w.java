package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.SeekBar;
import java.util.WeakHashMap;
import p098g0.C2789a;
import p117h8.C3035k;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: androidx.appcompat.widget.w */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/w.class */
public class C0286w extends C0276s {

    /* renamed from: d */
    public final SeekBar f1122d;

    /* renamed from: e */
    public Drawable f1123e;

    /* renamed from: f */
    public ColorStateList f1124f = null;

    /* renamed from: g */
    public PorterDuff.Mode f1125g = null;

    /* renamed from: h */
    public boolean f1126h = false;

    /* renamed from: i */
    public boolean f1127i = false;

    public C0286w(SeekBar seekBar) {
        super(seekBar);
        this.f1122d = seekBar;
    }

    @Override // androidx.appcompat.widget.C0276s
    /* renamed from: a */
    public void mo8423a(AttributeSet attributeSet, int i) {
        super.mo8423a(attributeSet, i);
        Context context = this.f1122d.getContext();
        int[] iArr = C3035k.f10220g;
        C0303z0 m8383q = C0303z0.m8383q(context, attributeSet, iArr, i, 0);
        SeekBar seekBar = this.f1122d;
        C3589v.m2104t(seekBar, seekBar.getContext(), iArr, attributeSet, m8383q.f1164b, i, 0);
        Drawable m8392h = m8383q.m8392h(0);
        if (m8392h != null) {
            this.f1122d.setThumb(m8392h);
        }
        Drawable m8393g = m8383q.m8393g(1);
        Drawable drawable = this.f1123e;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f1123e = m8393g;
        if (m8393g != null) {
            m8393g.setCallback(this.f1122d);
            SeekBar seekBar2 = this.f1122d;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C2789a.m3012c(m8393g, C3589v.C3594e.m2071d(seekBar2));
            if (m8393g.isStateful()) {
                m8393g.setState(this.f1122d.getDrawableState());
            }
            m8422c();
        }
        this.f1122d.invalidate();
        if (m8383q.m8385o(3)) {
            this.f1125g = C0233h0.m8495e(m8383q.m8390j(3, -1), this.f1125g);
            this.f1127i = true;
        }
        if (m8383q.m8385o(2)) {
            this.f1124f = m8383q.m8397c(2);
            this.f1126h = true;
        }
        m8383q.f1164b.recycle();
        m8422c();
    }

    /* renamed from: c */
    public final void m8422c() {
        Drawable drawable = this.f1123e;
        if (drawable != null) {
            if (!this.f1126h && !this.f1127i) {
                return;
            }
            Drawable m3007h = C2789a.m3007h(drawable.mutate());
            this.f1123e = m3007h;
            if (this.f1126h) {
                m3007h.setTintList(this.f1124f);
            }
            if (this.f1127i) {
                this.f1123e.setTintMode(this.f1125g);
            }
            if (!this.f1123e.isStateful()) {
                return;
            }
            this.f1123e.setState(this.f1122d.getDrawableState());
        }
    }

    /* renamed from: d */
    public void m8421d(Canvas canvas) {
        if (this.f1123e != null) {
            int max = this.f1122d.getMax();
            int i = 1;
            if (max <= 1) {
                return;
            }
            int intrinsicWidth = this.f1123e.getIntrinsicWidth();
            int intrinsicHeight = this.f1123e.getIntrinsicHeight();
            int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
            if (intrinsicHeight >= 0) {
                i = intrinsicHeight / 2;
            }
            this.f1123e.setBounds(-i2, -i, i2, i);
            float width = ((this.f1122d.getWidth() - this.f1122d.getPaddingLeft()) - this.f1122d.getPaddingRight()) / max;
            int save = canvas.save();
            canvas.translate(this.f1122d.getPaddingLeft(), this.f1122d.getHeight() / 2);
            for (int i3 = 0; i3 <= max; i3++) {
                this.f1123e.draw(canvas);
                canvas.translate(width, 0.0f);
            }
            canvas.restoreToCount(save);
        }
    }
}
