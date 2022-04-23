package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.C1027R;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/SnackbarContentLayout.class */
public class SnackbarContentLayout extends LinearLayout implements ContentViewCallback {

    /* renamed from: f */
    private TextView f11300f;

    /* renamed from: g */
    private Button f11301g;

    /* renamed from: h */
    private int f11302h;

    /* renamed from: i */
    private int f11303i;

    public SnackbarContentLayout(@NonNull Context context) {
        this(context, null);
    }

    public SnackbarContentLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1027R.styleable.SnackbarLayout);
        this.f11302h = obtainStyledAttributes.getDimensionPixelSize(C1027R.styleable.SnackbarLayout_android_maxWidth, -1);
        this.f11303i = obtainStyledAttributes.getDimensionPixelSize(C1027R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: c */
    private static void m9017c(@NonNull View view, int i, int i2) {
        if (ViewCompat.m19216U(view)) {
            ViewCompat.m19241B0(view, ViewCompat.m19232G(view), i, ViewCompat.m19234F(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    /* renamed from: d */
    private boolean m9016d(int i, int i2, int i3) {
        boolean z = true;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (!(this.f11300f.getPaddingTop() == i2 && this.f11300f.getPaddingBottom() == i3)) {
            m9017c(this.f11300f, i2, i3);
        }
        return z;
    }

    @Override // com.google.android.material.snackbar.ContentViewCallback
    /* renamed from: a */
    public void mo9019a(int i, int i2) {
        this.f11300f.setAlpha(0.0f);
        long j = i2;
        ViewPropertyAnimator duration = this.f11300f.animate().alpha(1.0f).setDuration(j);
        long j2 = i;
        duration.setStartDelay(j2).start();
        if (this.f11301g.getVisibility() == 0) {
            this.f11301g.setAlpha(0.0f);
            this.f11301g.animate().alpha(1.0f).setDuration(j).setStartDelay(j2).start();
        }
    }

    @Override // com.google.android.material.snackbar.ContentViewCallback
    /* renamed from: b */
    public void mo9018b(int i, int i2) {
        this.f11300f.setAlpha(1.0f);
        long j = i2;
        ViewPropertyAnimator duration = this.f11300f.animate().alpha(0.0f).setDuration(j);
        long j2 = i;
        duration.setStartDelay(j2).start();
        if (this.f11301g.getVisibility() == 0) {
            this.f11301g.setAlpha(1.0f);
            this.f11301g.animate().alpha(0.0f).setDuration(j).setStartDelay(j2).start();
        }
    }

    public Button getActionView() {
        return this.f11301g;
    }

    public TextView getMessageView() {
        return this.f11300f;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f11300f = (TextView) findViewById(C1027R.C1030id.snackbar_text);
        this.f11301g = (Button) findViewById(C1027R.C1030id.snackbar_action);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x008c, code lost:
        if (m9016d(1, r0, r0 - r10) != false) goto L_0x00ac;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a9, code lost:
        if (m9016d(0, r10, r10) != false) goto L_0x00ac;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ac, code lost:
        r7 = true;
     */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r7, int r8) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r2 = r8
            super.onMeasure(r1, r2)
            r0 = r7
            r9 = r0
            r0 = r6
            int r0 = r0.f11302h
            if (r0 <= 0) goto L_0x0032
            r0 = r6
            int r0 = r0.getMeasuredWidth()
            r10 = r0
            r0 = r6
            int r0 = r0.f11302h
            r11 = r0
            r0 = r7
            r9 = r0
            r0 = r10
            r1 = r11
            if (r0 <= r1) goto L_0x0032
            r0 = r11
            r1 = 1073741824(0x40000000, float:2.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            r9 = r0
            r0 = r6
            r1 = r9
            r2 = r8
            super.onMeasure(r1, r2)
        L_0x0032:
            r0 = r6
            android.content.res.Resources r0 = r0.getResources()
            int r1 = com.google.android.material.C1027R.dimen.design_snackbar_padding_vertical_2lines
            int r0 = r0.getDimensionPixelSize(r1)
            r12 = r0
            r0 = r6
            android.content.res.Resources r0 = r0.getResources()
            int r1 = com.google.android.material.C1027R.dimen.design_snackbar_padding_vertical
            int r0 = r0.getDimensionPixelSize(r1)
            r10 = r0
            r0 = r6
            android.widget.TextView r0 = r0.f11300f
            android.text.Layout r0 = r0.getLayout()
            int r0 = r0.getLineCount()
            r7 = r0
            r0 = 0
            r11 = r0
            r0 = r7
            r1 = 1
            if (r0 <= r1) goto L_0x0062
            r0 = 1
            r7 = r0
            goto L_0x0064
        L_0x0062:
            r0 = 0
            r7 = r0
        L_0x0064:
            r0 = r7
            if (r0 == 0) goto L_0x0092
            r0 = r6
            int r0 = r0.f11303i
            if (r0 <= 0) goto L_0x0092
            r0 = r6
            android.widget.Button r0 = r0.f11301g
            int r0 = r0.getMeasuredWidth()
            r1 = r6
            int r1 = r1.f11303i
            if (r0 <= r1) goto L_0x0092
            r0 = r11
            r7 = r0
            r0 = r6
            r1 = 1
            r2 = r12
            r3 = r12
            r4 = r10
            int r3 = r3 - r4
            boolean r0 = r0.m9016d(r1, r2, r3)
            if (r0 == 0) goto L_0x00ae
            goto L_0x00ac
        L_0x0092:
            r0 = r7
            if (r0 == 0) goto L_0x009d
            r0 = r12
            r10 = r0
            goto L_0x009d
        L_0x009d:
            r0 = r11
            r7 = r0
            r0 = r6
            r1 = 0
            r2 = r10
            r3 = r10
            boolean r0 = r0.m9016d(r1, r2, r3)
            if (r0 == 0) goto L_0x00ae
        L_0x00ac:
            r0 = 1
            r7 = r0
        L_0x00ae:
            r0 = r7
            if (r0 == 0) goto L_0x00b8
            r0 = r6
            r1 = r9
            r2 = r8
            super.onMeasure(r1, r2)
        L_0x00b8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.SnackbarContentLayout.onMeasure(int, int):void");
    }

    public void setMaxInlineActionWidth(int i) {
        this.f11303i = i;
    }
}
