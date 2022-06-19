package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1896l;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/snackbar/SnackbarContentLayout.class */
public class SnackbarContentLayout extends LinearLayout {

    /* renamed from: d */
    private TextView f37250d;

    /* renamed from: e */
    private Button f37251e;

    /* renamed from: f */
    private int f37252f;

    /* renamed from: g */
    private int f37253g;

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1896l.SnackbarLayout);
        this.f37252f = obtainStyledAttributes.getDimensionPixelSize(C1896l.SnackbarLayout_android_maxWidth, -1);
        this.f37253g = obtainStyledAttributes.getDimensionPixelSize(C1896l.SnackbarLayout_maxActionInlineWidth, -1);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private static void m4204a(View view, int i, int i2) {
        if (C1679w.m29311X(view)) {
            C1679w.m29339F0(view, C1679w.m29334I(view), i, C1679w.m29336H(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    /* renamed from: b */
    private boolean m4203b(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (this.f37250d.getPaddingTop() != i2 || this.f37250d.getPaddingBottom() != i3) {
            m4204a(this.f37250d, i2, i3);
            z = true;
        }
        return z;
    }

    public Button getActionView() {
        return this.f37251e;
    }

    public TextView getMessageView() {
        return this.f37250d;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f37250d = (TextView) findViewById(C1890f.snackbar_text);
        this.f37251e = (Button) findViewById(C1890f.snackbar_action);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x008c, code lost:
        if (m4203b(1, r11, r11 - r0) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a9, code lost:
        if (m4203b(0, r11, r11) != false) goto L24;
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
            int r0 = r0.f37252f
            if (r0 <= 0) goto L32
            r0 = r6
            int r0 = r0.getMeasuredWidth()
            r10 = r0
            r0 = r6
            int r0 = r0.f37252f
            r11 = r0
            r0 = r7
            r9 = r0
            r0 = r10
            r1 = r11
            if (r0 <= r1) goto L32
            r0 = r11
            r1 = 1073741824(0x40000000, float:2.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            r9 = r0
            r0 = r6
            r1 = r9
            r2 = r8
            super.onMeasure(r1, r2)
        L32:
            r0 = r6
            android.content.res.Resources r0 = r0.getResources()
            int r1 = p078c.p084c.p085a.p096b.C1888d.design_snackbar_padding_vertical_2lines
            int r0 = r0.getDimensionPixelSize(r1)
            r11 = r0
            r0 = r6
            android.content.res.Resources r0 = r0.getResources()
            int r1 = p078c.p084c.p085a.p096b.C1888d.design_snackbar_padding_vertical
            int r0 = r0.getDimensionPixelSize(r1)
            r12 = r0
            r0 = r6
            android.widget.TextView r0 = r0.f37250d
            android.text.Layout r0 = r0.getLayout()
            int r0 = r0.getLineCount()
            r7 = r0
            r0 = 0
            r10 = r0
            r0 = r7
            r1 = 1
            if (r0 <= r1) goto L62
            r0 = 1
            r7 = r0
            goto L64
        L62:
            r0 = 0
            r7 = r0
        L64:
            r0 = r7
            if (r0 == 0) goto L92
            r0 = r6
            int r0 = r0.f37253g
            if (r0 <= 0) goto L92
            r0 = r6
            android.widget.Button r0 = r0.f37251e
            int r0 = r0.getMeasuredWidth()
            r1 = r6
            int r1 = r1.f37253g
            if (r0 <= r1) goto L92
            r0 = r10
            r7 = r0
            r0 = r6
            r1 = 1
            r2 = r11
            r3 = r11
            r4 = r12
            int r3 = r3 - r4
            boolean r0 = r0.m4203b(r1, r2, r3)
            if (r0 == 0) goto Lae
            goto Lac
        L92:
            r0 = r7
            if (r0 == 0) goto L99
            goto L9d
        L99:
            r0 = r12
            r11 = r0
        L9d:
            r0 = r10
            r7 = r0
            r0 = r6
            r1 = 0
            r2 = r11
            r3 = r11
            boolean r0 = r0.m4203b(r1, r2, r3)
            if (r0 == 0) goto Lae
        Lac:
            r0 = 1
            r7 = r0
        Lae:
            r0 = r7
            if (r0 == 0) goto Lb8
            r0 = r6
            r1 = r9
            r2 = r8
            super.onMeasure(r1, r2)
        Lb8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.SnackbarContentLayout.onMeasure(int, int):void");
    }

    public void setMaxInlineActionWidth(int i) {
        this.f37253g = i;
    }
}
