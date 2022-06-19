package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.graphics.C0835b;
import androidx.core.view.AbstractC0922r;
import androidx.core.view.C0889ac;
import androidx.core.view.C0926v;
import com.google.android.material.C14376a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/ScrimInsetsFrameLayout.class */
public class ScrimInsetsFrameLayout extends FrameLayout {

    /* renamed from: a */
    Drawable f53308a;

    /* renamed from: b */
    Rect f53309b;

    /* renamed from: c */
    private Rect f53310c;

    /* renamed from: d */
    private boolean f53311d;

    /* renamed from: e */
    private boolean f53312e;

    public ScrimInsetsFrameLayout(Context context) {
        this(context, null);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f53310c = new Rect();
        this.f53311d = true;
        this.f53312e = true;
        TypedArray m10508a = C14647l.m10508a(context, attributeSet, C14376a.C14388l.ScrimInsetsFrameLayout, i, C14376a.C14387k.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.f53308a = m10508a.getDrawable(C14376a.C14388l.ScrimInsetsFrameLayout_insetForeground);
        m10508a.recycle();
        setWillNotDraw(true);
        C0926v.m44120a(this, new AbstractC0922r() { // from class: com.google.android.material.internal.ScrimInsetsFrameLayout.1
            @Override // androidx.core.view.AbstractC0922r
            /* renamed from: a */
            public final C0889ac mo10180a(View view, C0889ac c0889ac) {
                if (ScrimInsetsFrameLayout.this.f53309b == null) {
                    ScrimInsetsFrameLayout.this.f53309b = new Rect();
                }
                ScrimInsetsFrameLayout.this.f53309b.set(c0889ac.m44231a(), c0889ac.m44227b(), c0889ac.m44225c(), c0889ac.m44224d());
                ScrimInsetsFrameLayout.this.mo10365a(c0889ac);
                ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
                boolean z = true;
                if (!c0889ac.f3696b.mo44216g().equals(C0835b.f3562a)) {
                    z = ScrimInsetsFrameLayout.this.f53308a == null;
                }
                scrimInsetsFrameLayout.setWillNotDraw(z);
                C0926v.m44101d(ScrimInsetsFrameLayout.this);
                return c0889ac.f3696b.mo44214c();
            }
        });
    }

    /* renamed from: a */
    protected void mo10365a(C0889ac c0889ac) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f53309b == null || this.f53308a == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        if (this.f53311d) {
            this.f53310c.set(0, 0, width, this.f53309b.top);
            this.f53308a.setBounds(this.f53310c);
            this.f53308a.draw(canvas);
        }
        if (this.f53312e) {
            this.f53310c.set(0, height - this.f53309b.bottom, width, height);
            this.f53308a.setBounds(this.f53310c);
            this.f53308a.draw(canvas);
        }
        this.f53310c.set(0, this.f53309b.top, this.f53309b.left, height - this.f53309b.bottom);
        this.f53308a.setBounds(this.f53310c);
        this.f53308a.draw(canvas);
        this.f53310c.set(width - this.f53309b.right, this.f53309b.top, width, height - this.f53309b.bottom);
        this.f53308a.setBounds(this.f53310c);
        this.f53308a.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f53308a;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f53308a;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void setDrawBottomInsetForeground(boolean z) {
        this.f53312e = z;
    }

    public void setDrawTopInsetForeground(boolean z) {
        this.f53311d = z;
    }

    public void setScrimInsetForeground(Drawable drawable) {
        this.f53308a = drawable;
    }
}
