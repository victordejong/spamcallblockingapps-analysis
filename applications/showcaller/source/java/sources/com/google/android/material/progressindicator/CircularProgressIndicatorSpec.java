package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.internal.C8203l;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p105u.C1919c;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/CircularProgressIndicatorSpec.class */
public final class CircularProgressIndicatorSpec extends AbstractC8225b {

    /* renamed from: g */
    public int f37080g;

    /* renamed from: h */
    public int f37081h;

    /* renamed from: i */
    public int f37082i;

    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, CircularProgressIndicator.f37079s);
    }

    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(C1888d.mtrl_progress_circular_size_medium);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(C1888d.mtrl_progress_circular_inset_medium);
        TypedArray m4462h = C8203l.m4462h(context, attributeSet, C1896l.CircularProgressIndicator, i, i2, new int[0]);
        this.f37080g = C1919c.m28684c(context, m4462h, C1896l.CircularProgressIndicator_indicatorSize, dimensionPixelSize);
        this.f37081h = C1919c.m28684c(context, m4462h, C1896l.CircularProgressIndicator_indicatorInset, dimensionPixelSize2);
        this.f37082i = m4462h.getInt(C1896l.CircularProgressIndicator_indicatorDirectionCircular, 0);
        m4462h.recycle();
        mo4397e();
    }

    @Override // com.google.android.material.progressindicator.AbstractC8225b
    /* renamed from: e */
    public void mo4397e() {
        if (this.f37080g >= this.f37088a * 2) {
            return;
        }
        throw new IllegalArgumentException("The indicatorSize (" + this.f37080g + " px) cannot be less than twice of the trackThickness (" + this.f37088a + " px).");
    }
}
