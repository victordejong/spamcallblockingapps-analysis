package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import p020b.p041h.p050l.AbstractC1673q;
import p020b.p041h.p050l.C1615e0;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/ScrimInsetsFrameLayout.class */
public class ScrimInsetsFrameLayout extends FrameLayout {

    /* renamed from: d */
    Drawable f36899d;

    /* renamed from: e */
    Rect f36900e;

    /* renamed from: f */
    private Rect f36901f;

    /* renamed from: g */
    private boolean f36902g;

    /* renamed from: h */
    private boolean f36903h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.internal.ScrimInsetsFrameLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/ScrimInsetsFrameLayout$a.class */
    public class C8172a implements AbstractC1673q {
        C8172a() {
            ScrimInsetsFrameLayout.this = r4;
        }

        @Override // p020b.p041h.p050l.AbstractC1673q
        /* renamed from: a */
        public C1615e0 mo4441a(View view, C1615e0 c1615e0) {
            ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
            if (scrimInsetsFrameLayout.f36900e == null) {
                scrimInsetsFrameLayout.f36900e = new Rect();
            }
            ScrimInsetsFrameLayout.this.f36900e.set(c1615e0.m29590j(), c1615e0.m29588l(), c1615e0.m29589k(), c1615e0.m29591i());
            ScrimInsetsFrameLayout.this.mo4438a(c1615e0);
            ScrimInsetsFrameLayout.this.setWillNotDraw(!c1615e0.m29587m() || ScrimInsetsFrameLayout.this.f36899d == null);
            C1679w.m29293h0(ScrimInsetsFrameLayout.this);
            return c1615e0.m29597c();
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
        this.f36901f = new Rect();
        this.f36902g = true;
        this.f36903h = true;
        TypedArray m4462h = C8203l.m4462h(context, attributeSet, C1896l.ScrimInsetsFrameLayout, i, C1895k.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.f36899d = m4462h.getDrawable(C1896l.ScrimInsetsFrameLayout_insetForeground);
        m4462h.recycle();
        setWillNotDraw(true);
        C1679w.m29341E0(this, new C8172a());
    }

    /* renamed from: a */
    protected void mo4438a(C1615e0 c1615e0) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f36900e == null || this.f36899d == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        if (this.f36902g) {
            this.f36901f.set(0, 0, width, this.f36900e.top);
            this.f36899d.setBounds(this.f36901f);
            this.f36899d.draw(canvas);
        }
        if (this.f36903h) {
            this.f36901f.set(0, height - this.f36900e.bottom, width, height);
            this.f36899d.setBounds(this.f36901f);
            this.f36899d.draw(canvas);
        }
        Rect rect = this.f36901f;
        Rect rect2 = this.f36900e;
        rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
        this.f36899d.setBounds(this.f36901f);
        this.f36899d.draw(canvas);
        Rect rect3 = this.f36901f;
        Rect rect4 = this.f36900e;
        rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
        this.f36899d.setBounds(this.f36901f);
        this.f36899d.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f36899d;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f36899d;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void setDrawBottomInsetForeground(boolean z) {
        this.f36903h = z;
    }

    public void setDrawTopInsetForeground(boolean z) {
        this.f36902g = z;
    }

    public void setScrimInsetForeground(Drawable drawable) {
        this.f36899d = drawable;
    }
}
