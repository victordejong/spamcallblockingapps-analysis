package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.ui.c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout.class */
public final class AspectRatioFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final b f21954a;

    /* renamed from: b  reason: collision with root package name */
    private a f21955b;

    /* renamed from: c  reason: collision with root package name */
    private float f21956c;

    /* renamed from: d  reason: collision with root package name */
    private int f21957d;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout$a.class */
    public interface a {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/AspectRatioFrameLayout$b.class */
    final class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private float f21959b;

        /* renamed from: c  reason: collision with root package name */
        private float f21960c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f21961d;
        private boolean e;

        private b() {
        }

        public final void a(float f, float f2, boolean z) {
            this.f21959b = f;
            this.f21960c = f2;
            this.f21961d = z;
            if (!this.e) {
                this.e = true;
                AspectRatioFrameLayout.this.post(this);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.e = false;
            if (AspectRatioFrameLayout.this.f21955b != null) {
                a unused = AspectRatioFrameLayout.this.f21955b;
            }
        }
    }

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f21957d = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, c.l.AspectRatioFrameLayout, 0, 0);
            try {
                this.f21957d = obtainStyledAttributes.getInt(c.l.AspectRatioFrameLayout_resize_mode, 0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f21954a = new b();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected final void onMeasure(int i, int i2) {
        float f;
        float f2;
        super.onMeasure(i, i2);
        if (this.f21956c > BitmapDescriptorFactory.HUE_RED) {
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            float f3 = measuredWidth;
            float f4 = measuredHeight;
            float f5 = f3 / f4;
            float f6 = (this.f21956c / f5) - 1.0f;
            if (Math.abs(f6) <= 0.01f) {
                this.f21954a.a(this.f21956c, f5, false);
                return;
            }
            int i3 = this.f21957d;
            if (i3 != 0) {
                if (i3 == 1) {
                    f2 = this.f21956c;
                } else if (i3 != 2) {
                    if (i3 == 4) {
                        if (f6 <= BitmapDescriptorFactory.HUE_RED) {
                            f2 = this.f21956c;
                        }
                        f = this.f21956c;
                        measuredWidth = (int) (f4 * f);
                    }
                    this.f21954a.a(this.f21956c, f5, true);
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
                } else {
                    f = this.f21956c;
                    measuredWidth = (int) (f4 * f);
                    this.f21954a.a(this.f21956c, f5, true);
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
                }
                measuredHeight = (int) (f3 / f2);
                this.f21954a.a(this.f21956c, f5, true);
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
            }
            if (f6 > BitmapDescriptorFactory.HUE_RED) {
                f2 = this.f21956c;
                measuredHeight = (int) (f3 / f2);
                this.f21954a.a(this.f21956c, f5, true);
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
            }
            f = this.f21956c;
            measuredWidth = (int) (f4 * f);
            this.f21954a.a(this.f21956c, f5, true);
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
        }
    }

    public final void setAspectRatio(float f) {
        if (this.f21956c != f) {
            this.f21956c = f;
            requestLayout();
        }
    }

    public final void setAspectRatioListener(a aVar) {
        this.f21955b = aVar;
    }

    public final void setResizeMode(int i) {
        if (this.f21957d != i) {
            this.f21957d = i;
            requestLayout();
        }
    }
}
