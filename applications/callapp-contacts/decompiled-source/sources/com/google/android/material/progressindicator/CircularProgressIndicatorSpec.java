package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.a;
import com.google.android.material.h.c;
import com.google.android.material.internal.l;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/CircularProgressIndicatorSpec.class */
public final class CircularProgressIndicatorSpec extends b {
    public int g;
    public int h;
    public int i;

    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, CircularProgressIndicator.f30743d);
    }

    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(a.d.mtrl_progress_circular_size_medium);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(a.d.mtrl_progress_circular_inset_medium);
        TypedArray a2 = l.a(context, attributeSet, a.l.CircularProgressIndicator, i, i2, new int[0]);
        this.g = c.a(context, a2, a.l.CircularProgressIndicator_indicatorSize, dimensionPixelSize);
        this.h = c.a(context, a2, a.l.CircularProgressIndicator_indicatorInset, dimensionPixelSize2);
        this.i = a2.getInt(a.l.CircularProgressIndicator_indicatorDirectionCircular, 0);
        a2.recycle();
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.b
    public final void c() {
        if (this.g < this.f30746a * 2) {
            throw new IllegalArgumentException("The indicatorSize (" + this.g + " px) cannot be less than twice of the trackThickness (" + this.f30746a + " px).");
        }
    }
}
