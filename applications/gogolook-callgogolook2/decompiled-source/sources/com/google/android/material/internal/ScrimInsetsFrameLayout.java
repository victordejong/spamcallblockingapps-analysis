package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import p081h.p203i.p204a.p294f.p308n.C9245k;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/ScrimInsetsFrameLayout.class */
public class ScrimInsetsFrameLayout extends FrameLayout {

    /* renamed from: a */
    public Drawable f7515a;

    /* renamed from: b */
    public Rect f7516b;

    /* renamed from: c */
    public Rect f7517c;

    /* renamed from: com.google.android.material.internal.ScrimInsetsFrameLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/ScrimInsetsFrameLayout$a.class */
    public class C3633a implements OnApplyWindowInsetsListener {
        public C3633a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
            if (scrimInsetsFrameLayout.f7516b == null) {
                scrimInsetsFrameLayout.f7516b = new Rect();
            }
            ScrimInsetsFrameLayout.this.f7516b.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
            ScrimInsetsFrameLayout.this.mo31322a(windowInsetsCompat);
            ScrimInsetsFrameLayout.this.setWillNotDraw(!windowInsetsCompat.hasSystemWindowInsets() || ScrimInsetsFrameLayout.this.f7515a == null);
            ViewCompat.postInvalidateOnAnimation(ScrimInsetsFrameLayout.this);
            return windowInsetsCompat.consumeSystemWindowInsets();
        }
    }

    public ScrimInsetsFrameLayout(Context context) {
        this(context, null);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7517c = new Rect();
        TypedArray c = C9245k.m15637c(context, attributeSet, R$styleable.ScrimInsetsFrameLayout, i, R$style.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.f7515a = c.getDrawable(R$styleable.ScrimInsetsFrameLayout_insetForeground);
        c.recycle();
        setWillNotDraw(true);
        ViewCompat.setOnApplyWindowInsetsListener(this, new C3633a());
    }

    /* renamed from: a */
    public void mo31322a(WindowInsetsCompat windowInsetsCompat) {
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f7516b != null && this.f7515a != null) {
            int save = canvas.save();
            canvas.translate(getScrollX(), getScrollY());
            this.f7517c.set(0, 0, width, this.f7516b.top);
            this.f7515a.setBounds(this.f7517c);
            this.f7515a.draw(canvas);
            this.f7517c.set(0, height - this.f7516b.bottom, width, height);
            this.f7515a.setBounds(this.f7517c);
            this.f7515a.draw(canvas);
            Rect rect = this.f7517c;
            Rect rect2 = this.f7516b;
            rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
            this.f7515a.setBounds(this.f7517c);
            this.f7515a.draw(canvas);
            Rect rect3 = this.f7517c;
            Rect rect4 = this.f7516b;
            rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
            this.f7515a.setBounds(this.f7517c);
            this.f7515a.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f7515a;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f7515a;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }
}
