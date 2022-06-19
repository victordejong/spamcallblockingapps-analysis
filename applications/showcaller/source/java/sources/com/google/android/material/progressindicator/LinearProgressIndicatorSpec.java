package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.internal.C8203l;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1896l;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/LinearProgressIndicatorSpec.class */
public final class LinearProgressIndicatorSpec extends AbstractC8225b {

    /* renamed from: g */
    public int f37084g;

    /* renamed from: h */
    public int f37085h;

    /* renamed from: i */
    boolean f37086i;

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, LinearProgressIndicator.f37083s);
    }

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        boolean z = false;
        TypedArray m4462h = C8203l.m4462h(context, attributeSet, C1896l.LinearProgressIndicator, C1886b.linearProgressIndicatorStyle, LinearProgressIndicator.f37083s, new int[0]);
        this.f37084g = m4462h.getInt(C1896l.LinearProgressIndicator_indeterminateAnimationType, 1);
        this.f37085h = m4462h.getInt(C1896l.LinearProgressIndicator_indicatorDirectionLinear, 0);
        m4462h.recycle();
        mo4397e();
        this.f37086i = this.f37085h == 1 ? true : z;
    }

    @Override // com.google.android.material.progressindicator.AbstractC8225b
    /* renamed from: e */
    public void mo4397e() {
        if (this.f37084g == 0) {
            if (this.f37089b > 0) {
                throw new IllegalArgumentException("Rounded corners are not supported in contiguous indeterminate animation.");
            }
            if (this.f37090c.length < 3) {
                throw new IllegalArgumentException("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
            }
        }
    }
}
