package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/SnackbarContentLayout.class */
public class SnackbarContentLayout extends LinearLayout implements a {

    /* renamed from: a  reason: collision with root package name */
    TextView f30824a;

    /* renamed from: b  reason: collision with root package name */
    Button f30825b;

    /* renamed from: c  reason: collision with root package name */
    private int f30826c;

    /* renamed from: d  reason: collision with root package name */
    private int f30827d;

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.l.SnackbarLayout);
        this.f30826c = obtainStyledAttributes.getDimensionPixelSize(a.l.SnackbarLayout_android_maxWidth, -1);
        this.f30827d = obtainStyledAttributes.getDimensionPixelSize(a.l.SnackbarLayout_maxActionInlineWidth, -1);
        obtainStyledAttributes.recycle();
    }

    private static void a(View view, int i, int i2) {
        if (v.v(view)) {
            v.b(view, v.i(view), i, v.j(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    private boolean a(int i, int i2, int i3) {
        boolean z = true;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (!(this.f30824a.getPaddingTop() == i2 && this.f30824a.getPaddingBottom() == i3)) {
            a(this.f30824a, i2, i3);
        }
        return z;
    }

    @Override // com.google.android.material.snackbar.a
    public final void a() {
        this.f30824a.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.f30824a.animate().alpha(1.0f).setDuration(180L).setStartDelay(70L).start();
        if (this.f30825b.getVisibility() == 0) {
            this.f30825b.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.f30825b.animate().alpha(1.0f).setDuration(180L).setStartDelay(70L).start();
        }
    }

    @Override // com.google.android.material.snackbar.a
    public final void b() {
        this.f30824a.setAlpha(1.0f);
        this.f30824a.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(180L).setStartDelay(0L).start();
        if (this.f30825b.getVisibility() == 0) {
            this.f30825b.setAlpha(1.0f);
            this.f30825b.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(180L).setStartDelay(0L).start();
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f30824a = (TextView) findViewById(a.f.snackbar_text);
        this.f30825b = (Button) findViewById(a.f.snackbar_action);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x008c, code lost:
        if (a(1, r0, r0 - r11) != false) goto L_0x00ac;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a9, code lost:
        if (a(0, r11, r11) != false) goto L_0x00ac;
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
            int r0 = r0.f30826c
            if (r0 <= 0) goto L_0x0032
            r0 = r6
            int r0 = r0.getMeasuredWidth()
            r10 = r0
            r0 = r6
            int r0 = r0.f30826c
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
            int r1 = com.google.android.material.a.d.design_snackbar_padding_vertical_2lines
            int r0 = r0.getDimensionPixelSize(r1)
            r12 = r0
            r0 = r6
            android.content.res.Resources r0 = r0.getResources()
            int r1 = com.google.android.material.a.d.design_snackbar_padding_vertical
            int r0 = r0.getDimensionPixelSize(r1)
            r11 = r0
            r0 = r6
            android.widget.TextView r0 = r0.f30824a
            android.text.Layout r0 = r0.getLayout()
            int r0 = r0.getLineCount()
            r7 = r0
            r0 = 0
            r10 = r0
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
            int r0 = r0.f30827d
            if (r0 <= 0) goto L_0x0092
            r0 = r6
            android.widget.Button r0 = r0.f30825b
            int r0 = r0.getMeasuredWidth()
            r1 = r6
            int r1 = r1.f30827d
            if (r0 <= r1) goto L_0x0092
            r0 = r10
            r7 = r0
            r0 = r6
            r1 = 1
            r2 = r12
            r3 = r12
            r4 = r11
            int r3 = r3 - r4
            boolean r0 = r0.a(r1, r2, r3)
            if (r0 == 0) goto L_0x00ae
            goto L_0x00ac
        L_0x0092:
            r0 = r7
            if (r0 == 0) goto L_0x009d
            r0 = r12
            r11 = r0
            goto L_0x009d
        L_0x009d:
            r0 = r10
            r7 = r0
            r0 = r6
            r1 = 0
            r2 = r11
            r3 = r11
            boolean r0 = r0.a(r1, r2, r3)
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
        this.f30827d = i;
    }
}
