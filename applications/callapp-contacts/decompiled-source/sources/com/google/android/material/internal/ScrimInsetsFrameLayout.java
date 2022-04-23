package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.graphics.b;
import androidx.core.view.ac;
import androidx.core.view.r;
import androidx.core.view.v;
import com.google.android.material.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/ScrimInsetsFrameLayout.class */
public class ScrimInsetsFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    Drawable f30602a;

    /* renamed from: b  reason: collision with root package name */
    Rect f30603b;

    /* renamed from: c  reason: collision with root package name */
    private Rect f30604c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f30605d;
    private boolean e;

    public ScrimInsetsFrameLayout(Context context) {
        this(context, null);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f30604c = new Rect();
        this.f30605d = true;
        this.e = true;
        TypedArray a2 = l.a(context, attributeSet, a.l.ScrimInsetsFrameLayout, i, a.k.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.f30602a = a2.getDrawable(a.l.ScrimInsetsFrameLayout_insetForeground);
        a2.recycle();
        setWillNotDraw(true);
        v.a(this, new r() { // from class: com.google.android.material.internal.ScrimInsetsFrameLayout.1
            @Override // androidx.core.view.r
            public final ac a(View view, ac acVar) {
                if (ScrimInsetsFrameLayout.this.f30603b == null) {
                    ScrimInsetsFrameLayout.this.f30603b = new Rect();
                }
                ScrimInsetsFrameLayout.this.f30603b.set(acVar.a(), acVar.b(), acVar.c(), acVar.d());
                ScrimInsetsFrameLayout.this.a(acVar);
                ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
                boolean z = true;
                if (!acVar.f1974b.g().equals(b.f1895a)) {
                    z = ScrimInsetsFrameLayout.this.f30602a == null;
                }
                scrimInsetsFrameLayout.setWillNotDraw(z);
                v.d(ScrimInsetsFrameLayout.this);
                return acVar.f1974b.c();
            }
        });
    }

    protected void a(ac acVar) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f30603b != null && this.f30602a != null) {
            int save = canvas.save();
            canvas.translate(getScrollX(), getScrollY());
            if (this.f30605d) {
                this.f30604c.set(0, 0, width, this.f30603b.top);
                this.f30602a.setBounds(this.f30604c);
                this.f30602a.draw(canvas);
            }
            if (this.e) {
                this.f30604c.set(0, height - this.f30603b.bottom, width, height);
                this.f30602a.setBounds(this.f30604c);
                this.f30602a.draw(canvas);
            }
            this.f30604c.set(0, this.f30603b.top, this.f30603b.left, height - this.f30603b.bottom);
            this.f30602a.setBounds(this.f30604c);
            this.f30602a.draw(canvas);
            this.f30604c.set(width - this.f30603b.right, this.f30603b.top, width, height - this.f30603b.bottom);
            this.f30602a.setBounds(this.f30604c);
            this.f30602a.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f30602a;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f30602a;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void setDrawBottomInsetForeground(boolean z) {
        this.e = z;
    }

    public void setDrawTopInsetForeground(boolean z) {
        this.f30605d = z;
    }

    public void setScrimInsetForeground(Drawable drawable) {
        this.f30602a = drawable;
    }
}
