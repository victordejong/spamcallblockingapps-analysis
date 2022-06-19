package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1895k;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/CircularProgressIndicator.class */
public final class CircularProgressIndicator extends BaseProgressIndicator<CircularProgressIndicatorSpec> {

    /* renamed from: s */
    public static final int f37079s = C1895k.Widget_MaterialComponents_CircularProgressIndicator;

    public CircularProgressIndicator(Context context) {
        this(context, null);
    }

    public CircularProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, f37079s);
        m4406r();
    }

    /* renamed from: r */
    private void m4406r() {
        setIndeterminateDrawable(C8240i.m4339s(getContext(), (CircularProgressIndicatorSpec) this.f37061e));
        setProgressDrawable(C8232e.m4373u(getContext(), (CircularProgressIndicatorSpec) this.f37061e));
    }

    public int getIndicatorDirection() {
        return ((CircularProgressIndicatorSpec) this.f37061e).f37082i;
    }

    public int getIndicatorInset() {
        return ((CircularProgressIndicatorSpec) this.f37061e).f37081h;
    }

    public int getIndicatorSize() {
        return ((CircularProgressIndicatorSpec) this.f37061e).f37080g;
    }

    /* renamed from: q */
    public CircularProgressIndicatorSpec mo4405i(Context context, AttributeSet attributeSet) {
        return new CircularProgressIndicatorSpec(context, attributeSet);
    }

    public void setIndicatorDirection(int i) {
        ((CircularProgressIndicatorSpec) this.f37061e).f37082i = i;
        invalidate();
    }

    public void setIndicatorInset(int i) {
        S s = this.f37061e;
        if (((CircularProgressIndicatorSpec) s).f37081h != i) {
            ((CircularProgressIndicatorSpec) s).f37081h = i;
            invalidate();
        }
    }

    public void setIndicatorSize(int i) {
        S s = this.f37061e;
        if (((CircularProgressIndicatorSpec) s).f37080g != i) {
            ((CircularProgressIndicatorSpec) s).f37080g = i;
            ((CircularProgressIndicatorSpec) s).mo4397e();
            invalidate();
        }
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackThickness(int i) {
        super.setTrackThickness(i);
        ((CircularProgressIndicatorSpec) this.f37061e).mo4397e();
    }
}
