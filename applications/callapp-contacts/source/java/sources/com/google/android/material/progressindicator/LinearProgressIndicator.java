package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.material.C14376a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/LinearProgressIndicator.class */
public final class LinearProgressIndicator extends BaseProgressIndicator<LinearProgressIndicatorSpec> {

    /* renamed from: d */
    public static final int f53651d = C14376a.C14387k.Widget_MaterialComponents_LinearProgressIndicator;

    public LinearProgressIndicator(Context context) {
        this(context, null);
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, f53651d);
        setIndeterminateDrawable(C14722i.m10312a(getContext(), (LinearProgressIndicatorSpec) this.f53629b));
        setProgressDrawable(C14714e.m10329a(getContext(), (LinearProgressIndicatorSpec) this.f53629b));
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    /* renamed from: a */
    final /* synthetic */ LinearProgressIndicatorSpec mo10345a(Context context, AttributeSet attributeSet) {
        return new LinearProgressIndicatorSpec(context, attributeSet);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0040, code lost:
        if (((com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r7.f53629b).f53653h != 2) goto L8;
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
            S extends com.google.android.material.progressindicator.b r0 = r0.f53629b
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            r13 = r0
            r0 = r7
            S extends com.google.android.material.progressindicator.b r0 = r0.f53629b
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            int r0 = r0.f53653h
            r9 = r0
            r0 = 1
            r14 = r0
            r0 = r14
            r8 = r0
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L60
            r0 = r7
            int r0 = androidx.core.view.C0926v.m44097f(r0)
            r1 = 1
            if (r0 != r1) goto L43
            r0 = r14
            r8 = r0
            r0 = r7
            S extends com.google.android.material.progressindicator.b r0 = r0.f53629b
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            int r0 = r0.f53653h
            r1 = 2
            if (r0 == r1) goto L60
        L43:
            r0 = r7
            int r0 = androidx.core.view.C0926v.m44097f(r0)
            if (r0 != 0) goto L5e
            r0 = r7
            S extends com.google.android.material.progressindicator.b r0 = r0.f53629b
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            int r0 = r0.f53653h
            r1 = 3
            if (r0 != r1) goto L5e
            r0 = r14
            r8 = r0
            goto L60
        L5e:
            r0 = 0
            r8 = r0
        L60:
            r0 = r13
            r1 = r8
            r0.f53654i = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.progressindicator.LinearProgressIndicator.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected final void onSizeChanged(int i, int i2, int i3, int i4) {
        int paddingLeft = i - (getPaddingLeft() + getPaddingRight());
        int paddingTop = i2 - (getPaddingTop() + getPaddingBottom());
        C14722i<LinearProgressIndicatorSpec> b = m10356b();
        if (b != null) {
            b.setBounds(0, 0, paddingLeft, paddingTop);
        }
        C14714e<LinearProgressIndicatorSpec> a = m10359a();
        if (a != null) {
            a.setBounds(0, 0, paddingLeft, paddingTop);
        }
    }

    public final void setIndeterminateAnimationType(int i) {
        if (((LinearProgressIndicatorSpec) this.f53629b).f53652g == i) {
            return;
        }
        if (m10354c() && isIndeterminate()) {
            throw new IllegalStateException("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
        }
        ((LinearProgressIndicatorSpec) this.f53629b).f53652g = i;
        ((LinearProgressIndicatorSpec) this.f53629b).mo10341c();
        if (i == 0) {
            m10356b().m10310a(new C14724k((LinearProgressIndicatorSpec) this.f53629b));
        } else {
            m10356b().m10310a(new C14727l(getContext(), (LinearProgressIndicatorSpec) this.f53629b));
        }
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public final void setIndicatorColor(int... iArr) {
        super.setIndicatorColor(iArr);
        ((LinearProgressIndicatorSpec) this.f53629b).mo10341c();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0033, code lost:
        if (((com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r3.f53629b).f53653h != 2) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setIndicatorDirection(int r4) {
        /*
            r3 = this;
            r0 = r3
            S extends com.google.android.material.progressindicator.b r0 = r0.f53629b
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            r1 = r4
            r0.f53653h = r1
            r0 = r3
            S extends com.google.android.material.progressindicator.b r0 = r0.f53629b
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r4
            r1 = 1
            if (r0 == r1) goto L4b
            r0 = r3
            int r0 = androidx.core.view.C0926v.m44097f(r0)
            r1 = 1
            if (r0 != r1) goto L36
            r0 = r6
            r7 = r0
            r0 = r3
            S extends com.google.android.material.progressindicator.b r0 = r0.f53629b
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            int r0 = r0.f53653h
            r1 = 2
            if (r0 == r1) goto L4b
        L36:
            r0 = r3
            int r0 = androidx.core.view.C0926v.m44097f(r0)
            if (r0 != 0) goto L48
            r0 = r4
            r1 = 3
            if (r0 != r1) goto L48
            r0 = r6
            r7 = r0
            goto L4b
        L48:
            r0 = 0
            r7 = r0
        L4b:
            r0 = r5
            r1 = r7
            r0.f53654i = r1
            r0 = r3
            r0.invalidate()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.progressindicator.LinearProgressIndicator.setIndicatorDirection(int):void");
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public final void setProgressCompat(int i, boolean z) {
        if (this.f53629b == 0 || ((LinearProgressIndicatorSpec) this.f53629b).f53652g != 0 || !isIndeterminate()) {
            super.setProgressCompat(i, z);
        }
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public final void setTrackCornerRadius(int i) {
        super.setTrackCornerRadius(i);
        ((LinearProgressIndicatorSpec) this.f53629b).mo10341c();
        invalidate();
    }
}
