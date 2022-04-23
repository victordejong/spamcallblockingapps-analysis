package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.material.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/LinearProgressIndicator.class */
public final class LinearProgressIndicator extends BaseProgressIndicator<LinearProgressIndicatorSpec> {

    /* renamed from: d  reason: collision with root package name */
    public static final int f30744d = a.k.Widget_MaterialComponents_LinearProgressIndicator;

    public LinearProgressIndicator(Context context) {
        this(context, null);
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, f30744d);
        setIndeterminateDrawable(i.a(getContext(), (LinearProgressIndicatorSpec) this.f30736b));
        setProgressDrawable(e.a(getContext(), (LinearProgressIndicatorSpec) this.f30736b));
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    final /* synthetic */ LinearProgressIndicatorSpec a(Context context, AttributeSet attributeSet) {
        return new LinearProgressIndicatorSpec(context, attributeSet);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0040, code lost:
        if (((com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r7.f30736b).h != 2) goto L_0x0043;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            r7 = this;
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            super.onLayout(r1, r2, r3, r4, r5)
            r0 = r7
            S extends com.google.android.material.progressindicator.b r0 = r0.f30736b
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            r13 = r0
            r0 = r7
            S extends com.google.android.material.progressindicator.b r0 = r0.f30736b
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            int r0 = r0.h
            r9 = r0
            r0 = 1
            r14 = r0
            r0 = r14
            r8 = r0
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L_0x0060
            r0 = r7
            int r0 = androidx.core.view.v.f(r0)
            r1 = 1
            if (r0 != r1) goto L_0x0043
            r0 = r14
            r8 = r0
            r0 = r7
            S extends com.google.android.material.progressindicator.b r0 = r0.f30736b
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            int r0 = r0.h
            r1 = 2
            if (r0 == r1) goto L_0x0060
        L_0x0043:
            r0 = r7
            int r0 = androidx.core.view.v.f(r0)
            if (r0 != 0) goto L_0x005e
            r0 = r7
            S extends com.google.android.material.progressindicator.b r0 = r0.f30736b
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            int r0 = r0.h
            r1 = 3
            if (r0 != r1) goto L_0x005e
            r0 = r14
            r8 = r0
            goto L_0x0060
        L_0x005e:
            r0 = 0
            r8 = r0
        L_0x0060:
            r0 = r13
            r1 = r8
            r0.i = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.progressindicator.LinearProgressIndicator.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected final void onSizeChanged(int i, int i2, int i3, int i4) {
        int paddingLeft = i - (getPaddingLeft() + getPaddingRight());
        int paddingTop = i2 - (getPaddingTop() + getPaddingBottom());
        i<LinearProgressIndicatorSpec> b2 = b();
        if (b2 != null) {
            b2.setBounds(0, 0, paddingLeft, paddingTop);
        }
        e<LinearProgressIndicatorSpec> a2 = a();
        if (a2 != null) {
            a2.setBounds(0, 0, paddingLeft, paddingTop);
        }
    }

    public final void setIndeterminateAnimationType(int i) {
        if (((LinearProgressIndicatorSpec) this.f30736b).g != i) {
            if (!c() || !isIndeterminate()) {
                ((LinearProgressIndicatorSpec) this.f30736b).g = i;
                ((LinearProgressIndicatorSpec) this.f30736b).c();
                if (i == 0) {
                    b().a(new k((LinearProgressIndicatorSpec) this.f30736b));
                } else {
                    b().a(new l(getContext(), (LinearProgressIndicatorSpec) this.f30736b));
                }
                invalidate();
                return;
            }
            throw new IllegalStateException("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
        }
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public final void setIndicatorColor(int... iArr) {
        super.setIndicatorColor(iArr);
        ((LinearProgressIndicatorSpec) this.f30736b).c();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0033, code lost:
        if (((com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r3.f30736b).h != 2) goto L_0x0036;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setIndicatorDirection(int r4) {
        /*
            r3 = this;
            r0 = r3
            S extends com.google.android.material.progressindicator.b r0 = r0.f30736b
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            r1 = r4
            r0.h = r1
            r0 = r3
            S extends com.google.android.material.progressindicator.b r0 = r0.f30736b
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r4
            r1 = 1
            if (r0 == r1) goto L_0x004b
            r0 = r3
            int r0 = androidx.core.view.v.f(r0)
            r1 = 1
            if (r0 != r1) goto L_0x0036
            r0 = r6
            r7 = r0
            r0 = r3
            S extends com.google.android.material.progressindicator.b r0 = r0.f30736b
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            int r0 = r0.h
            r1 = 2
            if (r0 == r1) goto L_0x004b
        L_0x0036:
            r0 = r3
            int r0 = androidx.core.view.v.f(r0)
            if (r0 != 0) goto L_0x0048
            r0 = r4
            r1 = 3
            if (r0 != r1) goto L_0x0048
            r0 = r6
            r7 = r0
            goto L_0x004b
        L_0x0048:
            r0 = 0
            r7 = r0
        L_0x004b:
            r0 = r5
            r1 = r7
            r0.i = r1
            r0 = r3
            r0.invalidate()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.progressindicator.LinearProgressIndicator.setIndicatorDirection(int):void");
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public final void setProgressCompat(int i, boolean z) {
        if (this.f30736b == 0 || ((LinearProgressIndicatorSpec) this.f30736b).g != 0 || !isIndeterminate()) {
            super.setProgressCompat(i, z);
        }
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public final void setTrackCornerRadius(int i) {
        super.setTrackCornerRadius(i);
        ((LinearProgressIndicatorSpec) this.f30736b).c();
        invalidate();
    }
}
