package com.google.android.exoplayer2.p260ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
/* renamed from: com.google.android.exoplayer2.ui.AspectRatioFrameLayout */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout.class */
public final class AspectRatioFrameLayout extends FrameLayout {

    /* renamed from: d */
    private final RunnableC5419c f17406d;

    /* renamed from: e */
    private AbstractC5418b f17407e;

    /* renamed from: f */
    private float f17408f;

    /* renamed from: g */
    private int f17409g;

    /* renamed from: com.google.android.exoplayer2.ui.AspectRatioFrameLayout$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout$b.class */
    public interface AbstractC5418b {
        /* renamed from: a */
        void m19242a(float f, float f2, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.ui.AspectRatioFrameLayout$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout$c.class */
    public final class RunnableC5419c implements Runnable {

        /* renamed from: d */
        private float f17410d;

        /* renamed from: e */
        private float f17411e;

        /* renamed from: f */
        private boolean f17412f;

        /* renamed from: g */
        private boolean f17413g;

        private RunnableC5419c() {
            AspectRatioFrameLayout.this = r4;
        }

        /* renamed from: a */
        public void m19241a(float f, float f2, boolean z) {
            this.f17410d = f;
            this.f17411e = f2;
            this.f17412f = z;
            if (!this.f17413g) {
                this.f17413g = true;
                AspectRatioFrameLayout.this.post(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f17413g = false;
            if (AspectRatioFrameLayout.this.f17407e == null) {
                return;
            }
            AspectRatioFrameLayout.this.f17407e.m19242a(this.f17410d, this.f17411e, this.f17412f);
        }
    }

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17409g = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C5442k.AspectRatioFrameLayout, 0, 0);
            try {
                this.f17409g = obtainStyledAttributes.getInt(C5442k.AspectRatioFrameLayout_resize_mode, 0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f17406d = new RunnableC5419c();
    }

    public int getResizeMode() {
        return this.f17409g;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        float f;
        float f2;
        super.onMeasure(i, i2);
        if (this.f17408f <= 0.0f) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f3 = measuredWidth;
        float f4 = measuredHeight;
        float f5 = f3 / f4;
        float f6 = (this.f17408f / f5) - 1.0f;
        if (Math.abs(f6) <= 0.01f) {
            this.f17406d.m19241a(this.f17408f, f5, false);
            return;
        }
        int i3 = this.f17409g;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 == 2) {
                    f = this.f17408f;
                } else if (i3 == 4) {
                    if (f6 > 0.0f) {
                        f = this.f17408f;
                    } else {
                        f2 = this.f17408f;
                    }
                }
                measuredWidth = (int) (f4 * f);
            } else {
                f2 = this.f17408f;
            }
            measuredHeight = (int) (f3 / f2);
        } else if (f6 > 0.0f) {
            f2 = this.f17408f;
            measuredHeight = (int) (f3 / f2);
        } else {
            f = this.f17408f;
            measuredWidth = (int) (f4 * f);
        }
        this.f17406d.m19241a(this.f17408f, f5, true);
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
    }

    public void setAspectRatio(float f) {
        if (this.f17408f != f) {
            this.f17408f = f;
            requestLayout();
        }
    }

    public void setAspectRatioListener(AbstractC5418b abstractC5418b) {
        this.f17407e = abstractC5418b;
    }

    public void setResizeMode(int i) {
        if (this.f17409g != i) {
            this.f17409g = i;
            requestLayout();
        }
    }
}
