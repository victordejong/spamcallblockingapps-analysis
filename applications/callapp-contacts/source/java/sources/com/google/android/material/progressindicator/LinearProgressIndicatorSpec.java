package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14647l;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/LinearProgressIndicatorSpec.class */
public final class LinearProgressIndicatorSpec extends AbstractC14707b {

    /* renamed from: g */
    public int f53652g;

    /* renamed from: h */
    public int f53653h;

    /* renamed from: i */
    boolean f53654i;

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, LinearProgressIndicator.f53651d);
    }

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        boolean z = false;
        TypedArray m10508a = C14647l.m10508a(context, attributeSet, C14376a.C14388l.LinearProgressIndicator, C14376a.C14378b.linearProgressIndicatorStyle, LinearProgressIndicator.f53651d, new int[0]);
        this.f53652g = m10508a.getInt(C14376a.C14388l.LinearProgressIndicator_indeterminateAnimationType, 1);
        this.f53653h = m10508a.getInt(C14376a.C14388l.LinearProgressIndicator_indicatorDirectionLinear, 0);
        m10508a.recycle();
        mo10341c();
        this.f53654i = this.f53653h == 1 ? true : z;
    }

    @Override // com.google.android.material.progressindicator.AbstractC14707b
    /* renamed from: c */
    public final void mo10341c() {
        if (this.f53652g == 0) {
            if (this.f53657b > 0) {
                throw new IllegalArgumentException("Rounded corners are not supported in contiguous indeterminate animation.");
            }
            if (this.f53658c.length < 3) {
                throw new IllegalArgumentException("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
            }
        }
    }
}
