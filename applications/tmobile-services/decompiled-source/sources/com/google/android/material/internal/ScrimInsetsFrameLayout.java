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
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.C1027R;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/ScrimInsetsFrameLayout.class */
public class ScrimInsetsFrameLayout extends FrameLayout {
    @Nullable

    /* renamed from: f */
    Drawable f10909f;

    /* renamed from: g */
    Rect f10910g;

    /* renamed from: h */
    private Rect f10911h;

    /* renamed from: i */
    private boolean f10912i;

    /* renamed from: j */
    private boolean f10913j;

    public ScrimInsetsFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    public ScrimInsetsFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10911h = new Rect();
        this.f10912i = true;
        this.f10913j = true;
        TypedArray h = ThemeEnforcement.m9445h(context, attributeSet, C1027R.styleable.ScrimInsetsFrameLayout, i, C1027R.style.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.f10909f = h.getDrawable(C1027R.styleable.ScrimInsetsFrameLayout_insetForeground);
        h.recycle();
        setWillNotDraw(true);
        ViewCompat.m19243A0(this, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.internal.ScrimInsetsFrameLayout.1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            /* renamed from: a */
            public WindowInsetsCompat mo9036a(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
                ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
                if (scrimInsetsFrameLayout.f10910g == null) {
                    scrimInsetsFrameLayout.f10910g = new Rect();
                }
                ScrimInsetsFrameLayout.this.f10910g.set(windowInsetsCompat.m19095f(), windowInsetsCompat.m19093h(), windowInsetsCompat.m19094g(), windowInsetsCompat.m19096e());
                ScrimInsetsFrameLayout.this.mo9416a(windowInsetsCompat);
                ScrimInsetsFrameLayout.this.setWillNotDraw(!windowInsetsCompat.m19091j() || ScrimInsetsFrameLayout.this.f10909f == null);
                ViewCompat.m19203d0(ScrimInsetsFrameLayout.this);
                return windowInsetsCompat.m19098c();
            }
        });
    }

    /* renamed from: a */
    protected void mo9416a(WindowInsetsCompat windowInsetsCompat) {
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f10910g != null && this.f10909f != null) {
            int save = canvas.save();
            canvas.translate(getScrollX(), getScrollY());
            if (this.f10912i) {
                this.f10911h.set(0, 0, width, this.f10910g.top);
                this.f10909f.setBounds(this.f10911h);
                this.f10909f.draw(canvas);
            }
            if (this.f10913j) {
                this.f10911h.set(0, height - this.f10910g.bottom, width, height);
                this.f10909f.setBounds(this.f10911h);
                this.f10909f.draw(canvas);
            }
            Rect rect = this.f10911h;
            Rect rect2 = this.f10910g;
            rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
            this.f10909f.setBounds(this.f10911h);
            this.f10909f.draw(canvas);
            Rect rect3 = this.f10911h;
            Rect rect4 = this.f10910g;
            rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
            this.f10909f.setBounds(this.f10911h);
            this.f10909f.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f10909f;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f10909f;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void setDrawBottomInsetForeground(boolean z) {
        this.f10913j = z;
    }

    public void setDrawTopInsetForeground(boolean z) {
        this.f10912i = z;
    }

    public void setScrimInsetForeground(@Nullable Drawable drawable) {
        this.f10909f = drawable;
    }
}
