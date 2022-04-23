package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.a;
import com.google.android.material.internal.l;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/LinearProgressIndicatorSpec.class */
public final class LinearProgressIndicatorSpec extends b {
    public int g;
    public int h;
    boolean i;

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, LinearProgressIndicator.f30744d);
    }

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        boolean z = false;
        TypedArray a2 = l.a(context, attributeSet, a.l.LinearProgressIndicator, a.b.linearProgressIndicatorStyle, LinearProgressIndicator.f30744d, new int[0]);
        this.g = a2.getInt(a.l.LinearProgressIndicator_indeterminateAnimationType, 1);
        this.h = a2.getInt(a.l.LinearProgressIndicator_indicatorDirectionLinear, 0);
        a2.recycle();
        c();
        this.i = this.h == 1 ? true : z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.b
    public final void c() {
        if (this.g != 0) {
            return;
        }
        if (this.f30747b > 0) {
            throw new IllegalArgumentException("Rounded corners are not supported in contiguous indeterminate animation.");
        } else if (this.f30748c.length < 3) {
            throw new IllegalArgumentException("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
        }
    }
}
