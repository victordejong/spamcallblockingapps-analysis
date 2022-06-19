package com.google.android.material.snackbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/SnackbarContentLayout.class */
public class SnackbarContentLayout extends LinearLayout {

    /* renamed from: a */
    public TextView f6745a;

    /* renamed from: b */
    public Button f6746b;

    /* renamed from: c */
    public int f6747c;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public final boolean m4548a(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (this.f6745a.getPaddingTop() != i2 || this.f6745a.getPaddingBottom() != i3) {
            TextView textView = this.f6745a;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            if (C3589v.C3594e.m2068g(textView)) {
                C3589v.C3594e.m2064k(textView, C3589v.C3594e.m2069f(textView), i2, C3589v.C3594e.m2070e(textView), i3);
                z = true;
            } else {
                textView.setPadding(textView.getPaddingLeft(), i2, textView.getPaddingRight(), i3);
                z = true;
            }
        }
        return z;
    }

    public Button getActionView() {
        return this.f6746b;
    }

    public TextView getMessageView() {
        return this.f6745a;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f6745a = (TextView) findViewById(2131297026);
        this.f6746b = (Button) findViewById(2131297025);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0061, code lost:
        if (m4548a(1, r9, r9 - r0) != false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x007d, code lost:
        if (m4548a(0, r9, r9) != false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0080, code lost:
        r11 = true;
     */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r7, int r8) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r2 = r8
            super.onMeasure(r1, r2)
            r0 = r6
            android.content.res.Resources r0 = r0.getResources()
            r1 = 2131165352(0x7f0700a8, float:1.7944919E38)
            int r0 = r0.getDimensionPixelSize(r1)
            r9 = r0
            r0 = r6
            android.content.res.Resources r0 = r0.getResources()
            r1 = 2131165351(0x7f0700a7, float:1.7944917E38)
            int r0 = r0.getDimensionPixelSize(r1)
            r10 = r0
            r0 = r6
            android.widget.TextView r0 = r0.f6745a
            android.text.Layout r0 = r0.getLayout()
            int r0 = r0.getLineCount()
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r11
            r1 = 1
            if (r0 <= r1) goto L36
            r0 = 1
            r11 = r0
            goto L39
        L36:
            r0 = 0
            r11 = r0
        L39:
            r0 = r11
            if (r0 == 0) goto L67
            r0 = r6
            int r0 = r0.f6747c
            if (r0 <= 0) goto L67
            r0 = r6
            android.widget.Button r0 = r0.f6746b
            int r0 = r0.getMeasuredWidth()
            r1 = r6
            int r1 = r1.f6747c
            if (r0 <= r1) goto L67
            r0 = r12
            r11 = r0
            r0 = r6
            r1 = 1
            r2 = r9
            r3 = r9
            r4 = r10
            int r3 = r3 - r4
            boolean r0 = r0.m4548a(r1, r2, r3)
            if (r0 == 0) goto L83
            goto L80
        L67:
            r0 = r11
            if (r0 == 0) goto L6f
            goto L72
        L6f:
            r0 = r10
            r9 = r0
        L72:
            r0 = r12
            r11 = r0
            r0 = r6
            r1 = 0
            r2 = r9
            r3 = r9
            boolean r0 = r0.m4548a(r1, r2, r3)
            if (r0 == 0) goto L83
        L80:
            r0 = 1
            r11 = r0
        L83:
            r0 = r11
            if (r0 == 0) goto L8e
            r0 = r6
            r1 = r7
            r2 = r8
            super.onMeasure(r1, r2)
        L8e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.SnackbarContentLayout.onMeasure(int, int):void");
    }

    public void setMaxInlineActionWidth(int i) {
        this.f6747c = i;
    }
}
