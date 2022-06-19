package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.material.C14376a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/CircularProgressIndicator.class */
public final class CircularProgressIndicator extends BaseProgressIndicator<CircularProgressIndicatorSpec> {

    /* renamed from: d */
    public static final int f53647d = C14376a.C14387k.Widget_MaterialComponents_CircularProgressIndicator;

    public CircularProgressIndicator(Context context) {
        this(context, null);
    }

    public CircularProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, f53647d);
        setIndeterminateDrawable(C14722i.m10313a(getContext(), (CircularProgressIndicatorSpec) this.f53629b));
        setProgressDrawable(C14714e.m10330a(getContext(), (CircularProgressIndicatorSpec) this.f53629b));
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    /* renamed from: a */
    final /* synthetic */ CircularProgressIndicatorSpec mo10345a(Context context, AttributeSet attributeSet) {
        return new CircularProgressIndicatorSpec(context, attributeSet);
    }

    public final void setIndicatorDirection(int i) {
        ((CircularProgressIndicatorSpec) this.f53629b).f53650i = i;
        invalidate();
    }

    public final void setIndicatorInset(int i) {
        if (((CircularProgressIndicatorSpec) this.f53629b).f53649h != i) {
            ((CircularProgressIndicatorSpec) this.f53629b).f53649h = i;
            invalidate();
        }
    }

    public final void setIndicatorSize(int i) {
        if (((CircularProgressIndicatorSpec) this.f53629b).f53648g != i) {
            ((CircularProgressIndicatorSpec) this.f53629b).f53648g = i;
            ((CircularProgressIndicatorSpec) this.f53629b).mo10341c();
            invalidate();
        }
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public final void setTrackThickness(int i) {
        super.setTrackThickness(i);
        ((CircularProgressIndicatorSpec) this.f53629b).mo10341c();
    }
}
