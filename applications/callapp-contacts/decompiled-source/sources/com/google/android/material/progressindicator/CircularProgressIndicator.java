package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.material.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/CircularProgressIndicator.class */
public final class CircularProgressIndicator extends BaseProgressIndicator<CircularProgressIndicatorSpec> {

    /* renamed from: d  reason: collision with root package name */
    public static final int f30743d = a.k.Widget_MaterialComponents_CircularProgressIndicator;

    public CircularProgressIndicator(Context context) {
        this(context, null);
    }

    public CircularProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.circularProgressIndicatorStyle);
    }

    public CircularProgressIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, f30743d);
        setIndeterminateDrawable(i.a(getContext(), (CircularProgressIndicatorSpec) this.f30736b));
        setProgressDrawable(e.a(getContext(), (CircularProgressIndicatorSpec) this.f30736b));
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    final /* synthetic */ CircularProgressIndicatorSpec a(Context context, AttributeSet attributeSet) {
        return new CircularProgressIndicatorSpec(context, attributeSet);
    }

    public final void setIndicatorDirection(int i) {
        ((CircularProgressIndicatorSpec) this.f30736b).i = i;
        invalidate();
    }

    public final void setIndicatorInset(int i) {
        if (((CircularProgressIndicatorSpec) this.f30736b).h != i) {
            ((CircularProgressIndicatorSpec) this.f30736b).h = i;
            invalidate();
        }
    }

    public final void setIndicatorSize(int i) {
        if (((CircularProgressIndicatorSpec) this.f30736b).g != i) {
            ((CircularProgressIndicatorSpec) this.f30736b).g = i;
            ((CircularProgressIndicatorSpec) this.f30736b).c();
            invalidate();
        }
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public final void setTrackThickness(int i) {
        super.setTrackThickness(i);
        ((CircularProgressIndicatorSpec) this.f30736b).c();
    }
}
