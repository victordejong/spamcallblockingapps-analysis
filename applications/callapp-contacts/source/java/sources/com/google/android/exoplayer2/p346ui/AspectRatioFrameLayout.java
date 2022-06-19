package com.google.android.exoplayer2.p346ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.p346ui.C11479c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.google.android.exoplayer2.ui.AspectRatioFrameLayout */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout.class */
public final class AspectRatioFrameLayout extends FrameLayout {

    /* renamed from: a */
    private final RunnableC11450b f37852a;

    /* renamed from: b */
    private AbstractC11449a f37853b;

    /* renamed from: c */
    private float f37854c;

    /* renamed from: d */
    private int f37855d;

    /* renamed from: com.google.android.exoplayer2.ui.AspectRatioFrameLayout$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout$a.class */
    public interface AbstractC11449a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.ui.AspectRatioFrameLayout$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout$b.class */
    public final class RunnableC11450b implements Runnable {

        /* renamed from: b */
        private float f37857b;

        /* renamed from: c */
        private float f37858c;

        /* renamed from: d */
        private boolean f37859d;

        /* renamed from: e */
        private boolean f37860e;

        private RunnableC11450b() {
            AspectRatioFrameLayout.this = r4;
        }

        /* renamed from: a */
        public final void m20532a(float f, float f2, boolean z) {
            this.f37857b = f;
            this.f37858c = f2;
            this.f37859d = z;
            if (!this.f37860e) {
                this.f37860e = true;
                AspectRatioFrameLayout.this.post(this);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f37860e = false;
            if (AspectRatioFrameLayout.this.f37853b == null) {
                return;
            }
            AbstractC11449a unused = AspectRatioFrameLayout.this.f37853b;
        }
    }

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f37855d = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C11479c.C11491l.AspectRatioFrameLayout, 0, 0);
            try {
                this.f37855d = obtainStyledAttributes.getInt(C11479c.C11491l.AspectRatioFrameLayout_resize_mode, 0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f37852a = new RunnableC11450b();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected final void onMeasure(int i, int i2) {
        float f;
        float f2;
        super.onMeasure(i, i2);
        if (this.f37854c <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f3 = measuredWidth;
        float f4 = measuredHeight;
        float f5 = f3 / f4;
        float f6 = (this.f37854c / f5) - 1.0f;
        if (Math.abs(f6) <= 0.01f) {
            this.f37852a.m20532a(this.f37854c, f5, false);
            return;
        }
        int i3 = this.f37855d;
        if (i3 == 0) {
            if (f6 > BitmapDescriptorFactory.HUE_RED) {
                f2 = this.f37854c;
                measuredHeight = (int) (f3 / f2);
                this.f37852a.m20532a(this.f37854c, f5, true);
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
            }
            f = this.f37854c;
            measuredWidth = (int) (f4 * f);
            this.f37852a.m20532a(this.f37854c, f5, true);
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
        }
        if (i3 != 1) {
            if (i3 == 2) {
                f = this.f37854c;
                measuredWidth = (int) (f4 * f);
                this.f37852a.m20532a(this.f37854c, f5, true);
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
            }
            if (i3 == 4) {
                if (f6 <= BitmapDescriptorFactory.HUE_RED) {
                    f2 = this.f37854c;
                }
                f = this.f37854c;
                measuredWidth = (int) (f4 * f);
            }
            this.f37852a.m20532a(this.f37854c, f5, true);
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
        }
        f2 = this.f37854c;
        measuredHeight = (int) (f3 / f2);
        this.f37852a.m20532a(this.f37854c, f5, true);
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
    }

    public final void setAspectRatio(float f) {
        if (this.f37854c != f) {
            this.f37854c = f;
            requestLayout();
        }
    }

    public final void setAspectRatioListener(AbstractC11449a abstractC11449a) {
        this.f37853b = abstractC11449a;
    }

    public final void setResizeMode(int i) {
        if (this.f37855d != i) {
            this.f37855d = i;
            requestLayout();
        }
    }
}
