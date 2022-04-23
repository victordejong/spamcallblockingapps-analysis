package com.google.firebase.inappmessaging.display.internal;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5562j;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/display/internal/ResizableImageView.class */
public class ResizableImageView extends AppCompatImageView {

    /* renamed from: c */
    public int f30967c;

    /* renamed from: com.google.firebase.inappmessaging.display.internal.ResizableImageView$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/display/internal/ResizableImageView$b.class */
    public static class C7845b {

        /* renamed from: a */
        public final int f30968a;

        /* renamed from: b */
        public final int f30969b;

        public C7845b(int i, int i2) {
            this.f30968a = i;
            this.f30969b = i2;
        }
    }

    public ResizableImageView(Context context) {
        super(context);
        m7309a(context);
    }

    public ResizableImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m7309a(context);
    }

    public ResizableImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m7309a(context);
    }

    /* renamed from: a */
    public final C7845b m7310a(int i, int i2) {
        int i3;
        int maxWidth = getMaxWidth();
        int maxHeight = getMaxHeight();
        int i4 = i;
        int i5 = i2;
        if (i > maxWidth) {
            C5562j.m23514a("Image: capping width", maxWidth);
            i5 = (i2 * maxWidth) / i;
            i4 = maxWidth;
        }
        if (i5 > maxHeight) {
            C5562j.m23514a("Image: capping height", maxHeight);
            i4 = (i4 * maxHeight) / i5;
            i3 = maxHeight;
        } else {
            i3 = i5;
        }
        return new C7845b(i4, i3);
    }

    /* renamed from: a */
    public final void m7309a(Context context) {
        this.f30967c = (int) (context.getResources().getDisplayMetrics().density * 160.0f);
    }

    /* renamed from: a */
    public final void m7308a(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        C5562j.m23513a("Image: intrinsic width, height", intrinsicWidth, intrinsicHeight);
        C7845b a = m7310a((int) Math.ceil((intrinsicWidth * this.f30967c) / 160), (int) Math.ceil((intrinsicHeight * this.f30967c) / 160));
        C5562j.m23513a("Image: new target dimensions", a.f30968a, a.f30969b);
        setMeasuredDimension(a.f30968a, a.f30969b);
    }

    /* renamed from: c */
    public final void m7307c() {
        int max = Math.max(getMinimumWidth(), getSuggestedMinimumWidth());
        int max2 = Math.max(getMinimumHeight(), getSuggestedMinimumHeight());
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f = max;
        float f2 = max2;
        C5562j.m23513a("Image: min width, height", f, f2);
        float f3 = measuredWidth;
        float f4 = measuredHeight;
        C5562j.m23513a("Image: actual width, height", f3, f4);
        float f5 = 1.0f;
        float f6 = measuredWidth < max ? f / f3 : 1.0f;
        if (measuredHeight < max2) {
            f5 = f2 / f4;
        }
        if (f6 <= f5) {
            f6 = f5;
        }
        if (f6 > 1.0d) {
            int ceil = (int) Math.ceil(f3 * f6);
            int ceil2 = (int) Math.ceil(f4 * f6);
            C5562j.m23515a("Measured dimension (" + measuredWidth + "x" + measuredHeight + ") too small.  Resizing to " + ceil + "x" + ceil2);
            C7845b a = m7310a(ceil, ceil2);
            setMeasuredDimension(a.f30968a, a.f30969b);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (Build.VERSION.SDK_INT > 16) {
            Drawable drawable = getDrawable();
            boolean adjustViewBounds = getAdjustViewBounds();
            if (drawable != null && adjustViewBounds) {
                m7308a(drawable);
                m7307c();
            }
        }
    }
}
