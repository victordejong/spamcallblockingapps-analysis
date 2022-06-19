package com.google.android.exoplayer2.p070ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
/* renamed from: com.google.android.exoplayer2.ui.AspectRatioFrameLayout */
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout.class */
public final class AspectRatioFrameLayout extends FrameLayout {

    /* renamed from: a */
    public final RunnableC2011c f5082a;

    /* renamed from: b */
    public AbstractC2010b f5083b;

    /* renamed from: c */
    public float f5084c;

    /* renamed from: d */
    public int f5085d;

    /* renamed from: com.google.android.exoplayer2.ui.AspectRatioFrameLayout$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout$b.class */
    public interface AbstractC2010b {
        /* renamed from: a */
        void m39220a(float f, float f2, boolean z);
    }

    /* renamed from: com.google.android.exoplayer2.ui.AspectRatioFrameLayout$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout$c.class */
    public final class RunnableC2011c implements Runnable {

        /* renamed from: a */
        public float f5086a;

        /* renamed from: b */
        public float f5087b;

        /* renamed from: c */
        public boolean f5088c;

        /* renamed from: d */
        public boolean f5089d;

        public RunnableC2011c(C2009a c2009a) {
            AspectRatioFrameLayout.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5089d = false;
            AbstractC2010b abstractC2010b = AspectRatioFrameLayout.this.f5083b;
            if (abstractC2010b == null) {
                return;
            }
            abstractC2010b.m39220a(this.f5086a, this.f5087b, this.f5088c);
        }
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5085d = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C2018R.styleable.AspectRatioFrameLayout, 0, 0);
            try {
                this.f5085d = obtainStyledAttributes.getInt(C2018R.styleable.AspectRatioFrameLayout_resize_mode, 0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f5082a = new RunnableC2011c(null);
    }

    public int getResizeMode() {
        return this.f5085d;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        float f;
        float f2;
        super.onMeasure(i, i2);
        if (this.f5084c <= 0.0f) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f3 = measuredWidth;
        float f4 = measuredHeight;
        float f5 = f3 / f4;
        float f6 = (this.f5084c / f5) - 1.0f;
        if (Math.abs(f6) <= 0.01f) {
            RunnableC2011c runnableC2011c = this.f5082a;
            runnableC2011c.f5086a = this.f5084c;
            runnableC2011c.f5087b = f5;
            runnableC2011c.f5088c = false;
            if (runnableC2011c.f5089d) {
                return;
            }
            runnableC2011c.f5089d = true;
            AspectRatioFrameLayout.this.post(runnableC2011c);
            return;
        }
        int i3 = this.f5085d;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 == 2) {
                    f = this.f5084c;
                } else if (i3 == 4) {
                    if (f6 > 0.0f) {
                        f = this.f5084c;
                    } else {
                        f2 = this.f5084c;
                    }
                }
                measuredWidth = (int) (f4 * f);
            } else {
                f2 = this.f5084c;
            }
            measuredHeight = (int) (f3 / f2);
        } else if (f6 > 0.0f) {
            f2 = this.f5084c;
            measuredHeight = (int) (f3 / f2);
        } else {
            f = this.f5084c;
            measuredWidth = (int) (f4 * f);
        }
        RunnableC2011c runnableC2011c2 = this.f5082a;
        runnableC2011c2.f5086a = this.f5084c;
        runnableC2011c2.f5087b = f5;
        runnableC2011c2.f5088c = true;
        if (!runnableC2011c2.f5089d) {
            runnableC2011c2.f5089d = true;
            AspectRatioFrameLayout.this.post(runnableC2011c2);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
    }

    public void setAspectRatio(float f) {
        if (this.f5084c != f) {
            this.f5084c = f;
            requestLayout();
        }
    }

    public void setAspectRatioListener(AbstractC2010b abstractC2010b) {
        this.f5083b = abstractC2010b;
    }

    public void setResizeMode(int i) {
        if (this.f5085d != i) {
            this.f5085d = i;
            requestLayout();
        }
    }
}
