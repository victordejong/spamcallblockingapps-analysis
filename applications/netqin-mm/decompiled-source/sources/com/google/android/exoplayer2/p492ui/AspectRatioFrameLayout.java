package com.google.android.exoplayer2.p492ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import p131c.p161d.p170b.p188c.p199e1.C2799k;
/* renamed from: com.google.android.exoplayer2.ui.AspectRatioFrameLayout */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout.class */
public final class AspectRatioFrameLayout extends FrameLayout {

    /* renamed from: a */
    public final RunnableC7185c f22362a;

    /* renamed from: b */
    public AbstractC7184b f22363b;

    /* renamed from: c */
    public float f22364c;

    /* renamed from: d */
    public int f22365d;

    /* renamed from: com.google.android.exoplayer2.ui.AspectRatioFrameLayout$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout$b.class */
    public interface AbstractC7184b {
        /* renamed from: a */
        void m18437a(float f, float f2, boolean z);
    }

    /* renamed from: com.google.android.exoplayer2.ui.AspectRatioFrameLayout$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout$c.class */
    public final class RunnableC7185c implements Runnable {

        /* renamed from: a */
        public float f22366a;

        /* renamed from: b */
        public float f22367b;

        /* renamed from: c */
        public boolean f22368c;

        /* renamed from: d */
        public boolean f22369d;

        public RunnableC7185c() {
        }

        /* renamed from: a */
        public void m18436a(float f, float f2, boolean z) {
            this.f22366a = f;
            this.f22367b = f2;
            this.f22368c = z;
            if (!this.f22369d) {
                this.f22369d = true;
                AspectRatioFrameLayout.this.post(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f22369d = false;
            if (AspectRatioFrameLayout.this.f22363b != null) {
                AspectRatioFrameLayout.this.f22363b.m18437a(this.f22366a, this.f22367b, this.f22368c);
            }
        }
    }

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f22365d = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C2799k.AspectRatioFrameLayout, 0, 0);
            try {
                this.f22365d = obtainStyledAttributes.getInt(C2799k.AspectRatioFrameLayout_resize_mode, 0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f22362a = new RunnableC7185c();
    }

    public int getResizeMode() {
        return this.f22365d;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        float f;
        float f2;
        super.onMeasure(i, i2);
        if (this.f22364c > 0.0f) {
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            float f3 = measuredWidth;
            float f4 = measuredHeight;
            float f5 = f3 / f4;
            float f6 = (this.f22364c / f5) - 1.0f;
            if (Math.abs(f6) <= 0.01f) {
                this.f22362a.m18436a(this.f22364c, f5, false);
                return;
            }
            int i3 = this.f22365d;
            if (i3 != 0) {
                if (i3 != 1) {
                    if (i3 == 2) {
                        f = this.f22364c;
                    } else if (i3 == 4) {
                        if (f6 > 0.0f) {
                            f = this.f22364c;
                        } else {
                            f2 = this.f22364c;
                        }
                    }
                    measuredWidth = (int) (f4 * f);
                } else {
                    f2 = this.f22364c;
                }
                measuredHeight = (int) (f3 / f2);
            } else if (f6 > 0.0f) {
                f2 = this.f22364c;
                measuredHeight = (int) (f3 / f2);
            } else {
                f = this.f22364c;
                measuredWidth = (int) (f4 * f);
            }
            this.f22362a.m18436a(this.f22364c, f5, true);
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
        }
    }

    public void setAspectRatio(float f) {
        if (this.f22364c != f) {
            this.f22364c = f;
            requestLayout();
        }
    }

    public void setAspectRatioListener(AbstractC7184b bVar) {
        this.f22363b = bVar;
    }

    public void setResizeMode(int i) {
        if (this.f22365d != i) {
            this.f22365d = i;
            requestLayout();
        }
    }
}
