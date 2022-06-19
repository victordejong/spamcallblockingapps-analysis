package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1895k;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/LinearProgressIndicator.class */
public final class LinearProgressIndicator extends BaseProgressIndicator<LinearProgressIndicatorSpec> {

    /* renamed from: s */
    public static final int f37083s = C1895k.Widget_MaterialComponents_LinearProgressIndicator;

    public LinearProgressIndicator(Context context) {
        this(context, null);
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.linearProgressIndicatorStyle);
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, f37083s);
        m4403r();
    }

    /* renamed from: r */
    private void m4403r() {
        setIndeterminateDrawable(C8240i.m4338t(getContext(), (LinearProgressIndicatorSpec) this.f37061e));
        setProgressDrawable(C8232e.m4372v(getContext(), (LinearProgressIndicatorSpec) this.f37061e));
    }

    public int getIndeterminateAnimationType() {
        return ((LinearProgressIndicatorSpec) this.f37061e).f37084g;
    }

    public int getIndicatorDirection() {
        return ((LinearProgressIndicatorSpec) this.f37061e).f37085h;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0042, code lost:
        if (((com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r7.f37061e).f37085h != 2) goto L8;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
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
            S extends com.google.android.material.progressindicator.b r0 = r0.f37061e
            r13 = r0
            r0 = r13
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            r14 = r0
            r0 = r13
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            int r0 = r0.f37085h
            r9 = r0
            r0 = 1
            r15 = r0
            r0 = r15
            r8 = r0
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L62
            r0 = r7
            int r0 = p020b.p041h.p050l.C1679w.m29346C(r0)
            r1 = 1
            if (r0 != r1) goto L45
            r0 = r15
            r8 = r0
            r0 = r7
            S extends com.google.android.material.progressindicator.b r0 = r0.f37061e
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            int r0 = r0.f37085h
            r1 = 2
            if (r0 == r1) goto L62
        L45:
            r0 = r7
            int r0 = p020b.p041h.p050l.C1679w.m29346C(r0)
            if (r0 != 0) goto L60
            r0 = r7
            S extends com.google.android.material.progressindicator.b r0 = r0.f37061e
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            int r0 = r0.f37085h
            r1 = 3
            if (r0 != r1) goto L60
            r0 = r15
            r8 = r0
            goto L62
        L60:
            r0 = 0
            r8 = r0
        L62:
            r0 = r14
            r1 = r8
            r0.f37086i = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.progressindicator.LinearProgressIndicator.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        int paddingLeft = i - (getPaddingLeft() + getPaddingRight());
        int paddingTop = i2 - (getPaddingTop() + getPaddingBottom());
        C8240i<LinearProgressIndicatorSpec> indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
        C8232e<LinearProgressIndicatorSpec> progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingLeft, paddingTop);
        }
    }

    /* renamed from: q */
    public LinearProgressIndicatorSpec mo4405i(Context context, AttributeSet attributeSet) {
        return new LinearProgressIndicatorSpec(context, attributeSet);
    }

    public void setIndeterminateAnimationType(int i) {
        if (((LinearProgressIndicatorSpec) this.f37061e).f37084g == i) {
            return;
        }
        if (m4409p() && isIndeterminate()) {
            throw new IllegalStateException("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
        }
        S s = this.f37061e;
        ((LinearProgressIndicatorSpec) s).f37084g = i;
        ((LinearProgressIndicatorSpec) s).mo4397e();
        if (i == 0) {
            getIndeterminateDrawable().m4335w(new C8242k((LinearProgressIndicatorSpec) this.f37061e));
        } else {
            getIndeterminateDrawable().m4335w(new C8245l(getContext(), (LinearProgressIndicatorSpec) this.f37061e));
        }
        invalidate();
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setIndicatorColor(int... iArr) {
        super.setIndicatorColor(iArr);
        ((LinearProgressIndicatorSpec) this.f37061e).mo4397e();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0032, code lost:
        if (((com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r3.f37061e).f37085h != 2) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setIndicatorDirection(int r4) {
        /*
            r3 = this;
            r0 = r3
            S extends com.google.android.material.progressindicator.b r0 = r0.f37061e
            r5 = r0
            r0 = r5
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            r1 = r4
            r0.f37085h = r1
            r0 = r5
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r4
            r1 = 1
            if (r0 == r1) goto L4a
            r0 = r3
            int r0 = p020b.p041h.p050l.C1679w.m29346C(r0)
            r1 = 1
            if (r0 != r1) goto L35
            r0 = r6
            r7 = r0
            r0 = r3
            S extends com.google.android.material.progressindicator.b r0 = r0.f37061e
            com.google.android.material.progressindicator.LinearProgressIndicatorSpec r0 = (com.google.android.material.progressindicator.LinearProgressIndicatorSpec) r0
            int r0 = r0.f37085h
            r1 = 2
            if (r0 == r1) goto L4a
        L35:
            r0 = r3
            int r0 = p020b.p041h.p050l.C1679w.m29346C(r0)
            if (r0 != 0) goto L47
            r0 = r4
            r1 = 3
            if (r0 != r1) goto L47
            r0 = r6
            r7 = r0
            goto L4a
        L47:
            r0 = 0
            r7 = r0
        L4a:
            r0 = r5
            r1 = r7
            r0.f37086i = r1
            r0 = r3
            r0.invalidate()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.progressindicator.LinearProgressIndicator.setIndicatorDirection(int):void");
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setProgressCompat(int i, boolean z) {
        S s = this.f37061e;
        if (s == 0 || ((LinearProgressIndicatorSpec) s).f37084g != 0 || !isIndeterminate()) {
            super.setProgressCompat(i, z);
        }
    }

    @Override // com.google.android.material.progressindicator.BaseProgressIndicator
    public void setTrackCornerRadius(int i) {
        super.setTrackCornerRadius(i);
        ((LinearProgressIndicatorSpec) this.f37061e).mo4397e();
        invalidate();
    }
}
