package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.C0926v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/SnackbarContentLayout.class */
public class SnackbarContentLayout extends LinearLayout implements AbstractC14763a {

    /* renamed from: a */
    TextView f53863a;

    /* renamed from: b */
    Button f53864b;

    /* renamed from: c */
    private int f53865c;

    /* renamed from: d */
    private int f53866d;

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C14376a.C14388l.SnackbarLayout);
        this.f53865c = obtainStyledAttributes.getDimensionPixelSize(C14376a.C14388l.SnackbarLayout_android_maxWidth, -1);
        this.f53866d = obtainStyledAttributes.getDimensionPixelSize(C14376a.C14388l.SnackbarLayout_maxActionInlineWidth, -1);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private static void m10164a(View view, int i, int i2) {
        if (C0926v.m44077v(view)) {
            C0926v.m44109b(view, C0926v.m44091i(view), i, C0926v.m44089j(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    /* renamed from: a */
    private boolean m10165a(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (this.f53863a.getPaddingTop() != i2 || this.f53863a.getPaddingBottom() != i3) {
            m10164a(this.f53863a, i2, i3);
            z = true;
        }
        return z;
    }

    @Override // com.google.android.material.snackbar.AbstractC14763a
    /* renamed from: a */
    public final void mo10163a() {
        this.f53863a.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.f53863a.animate().alpha(1.0f).setDuration(180L).setStartDelay(70L).start();
        if (this.f53864b.getVisibility() == 0) {
            this.f53864b.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.f53864b.animate().alpha(1.0f).setDuration(180L).setStartDelay(70L).start();
        }
    }

    @Override // com.google.android.material.snackbar.AbstractC14763a
    /* renamed from: b */
    public final void mo10162b() {
        this.f53863a.setAlpha(1.0f);
        this.f53863a.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(180L).setStartDelay(0L).start();
        if (this.f53864b.getVisibility() == 0) {
            this.f53864b.setAlpha(1.0f);
            this.f53864b.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(180L).setStartDelay(0L).start();
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f53863a = (TextView) findViewById(C14376a.C14382f.snackbar_text);
        this.f53864b = (Button) findViewById(C14376a.C14382f.snackbar_action);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x008c, code lost:
        if (m10165a(1, r0, r0 - r11) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a9, code lost:
        if (m10165a(0, r11, r11) != false) goto L24;
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
            int r0 = r0.f53865c
            if (r0 <= 0) goto L32
            r0 = r6
            int r0 = r0.getMeasuredWidth()
            r10 = r0
            r0 = r6
            int r0 = r0.f53865c
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
            int r1 = com.google.android.material.C14376a.C14380d.design_snackbar_padding_vertical_2lines
            int r0 = r0.getDimensionPixelSize(r1)
            r12 = r0
            r0 = r6
            android.content.res.Resources r0 = r0.getResources()
            int r1 = com.google.android.material.C14376a.C14380d.design_snackbar_padding_vertical
            int r0 = r0.getDimensionPixelSize(r1)
            r11 = r0
            r0 = r6
            android.widget.TextView r0 = r0.f53863a
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
            int r0 = r0.f53866d
            if (r0 <= 0) goto L92
            r0 = r6
            android.widget.Button r0 = r0.f53864b
            int r0 = r0.getMeasuredWidth()
            r1 = r6
            int r1 = r1.f53866d
            if (r0 <= r1) goto L92
            r0 = r10
            r7 = r0
            r0 = r6
            r1 = 1
            r2 = r12
            r3 = r12
            r4 = r11
            int r3 = r3 - r4
            boolean r0 = r0.m10165a(r1, r2, r3)
            if (r0 == 0) goto Lae
            goto Lac
        L92:
            r0 = r7
            if (r0 == 0) goto L9d
            r0 = r12
            r11 = r0
            goto L9d
        L9d:
            r0 = r10
            r7 = r0
            r0 = r6
            r1 = 0
            r2 = r11
            r3 = r11
            boolean r0 = r0.m10165a(r1, r2, r3)
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
        this.f53866d = i;
    }
}
