package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14647l;
import com.google.android.material.p371h.C14598c;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/CircularProgressIndicatorSpec.class */
public final class CircularProgressIndicatorSpec extends AbstractC14707b {

    /* renamed from: g */
    public int f53648g;

    /* renamed from: h */
    public int f53649h;

    /* renamed from: i */
    public int f53650i;

    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, CircularProgressIndicator.f53647d);
    }

    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(C14376a.C14380d.mtrl_progress_circular_size_medium);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(C14376a.C14380d.mtrl_progress_circular_inset_medium);
        TypedArray m10508a = C14647l.m10508a(context, attributeSet, C14376a.C14388l.CircularProgressIndicator, i, i2, new int[0]);
        this.f53648g = C14598c.m10652a(context, m10508a, C14376a.C14388l.CircularProgressIndicator_indicatorSize, dimensionPixelSize);
        this.f53649h = C14598c.m10652a(context, m10508a, C14376a.C14388l.CircularProgressIndicator_indicatorInset, dimensionPixelSize2);
        this.f53650i = m10508a.getInt(C14376a.C14388l.CircularProgressIndicator_indicatorDirectionCircular, 0);
        m10508a.recycle();
        mo10341c();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14707b
    /* renamed from: c */
    public final void mo10341c() {
        if (this.f53648g >= this.f53656a * 2) {
            return;
        }
        throw new IllegalArgumentException("The indicatorSize (" + this.f53648g + " px) cannot be less than twice of the trackThickness (" + this.f53656a + " px).");
    }
}
