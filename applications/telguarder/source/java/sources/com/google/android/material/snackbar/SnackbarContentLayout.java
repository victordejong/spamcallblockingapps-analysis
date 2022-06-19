package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.google.android.material.C1236R;
import com.google.android.material.color.MaterialColors;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/snackbar/SnackbarContentLayout.class */
public class SnackbarContentLayout extends LinearLayout implements ContentViewCallback {
    private Button actionView;
    private int maxInlineActionWidth;
    private int maxWidth;
    private TextView messageView;

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1236R.styleable.SnackbarLayout);
        this.maxWidth = obtainStyledAttributes.getDimensionPixelSize(C1236R.styleable.SnackbarLayout_android_maxWidth, -1);
        this.maxInlineActionWidth = obtainStyledAttributes.getDimensionPixelSize(C1236R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
        obtainStyledAttributes.recycle();
    }

    private static void updateTopBottomPadding(View view, int i, int i2) {
        if (ViewCompat.isPaddingRelative(view)) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), i, ViewCompat.getPaddingEnd(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    private boolean updateViewsWithinLayout(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (this.messageView.getPaddingTop() != i2 || this.messageView.getPaddingBottom() != i3) {
            updateTopBottomPadding(this.messageView, i2, i3);
            z = true;
        }
        return z;
    }

    @Override // com.google.android.material.snackbar.ContentViewCallback
    public void animateContentIn(int i, int i2) {
        this.messageView.setAlpha(0.0f);
        long j = i2;
        ViewPropertyAnimator duration = this.messageView.animate().alpha(1.0f).setDuration(j);
        long j2 = i;
        duration.setStartDelay(j2).start();
        if (this.actionView.getVisibility() == 0) {
            this.actionView.setAlpha(0.0f);
            this.actionView.animate().alpha(1.0f).setDuration(j).setStartDelay(j2).start();
        }
    }

    @Override // com.google.android.material.snackbar.ContentViewCallback
    public void animateContentOut(int i, int i2) {
        this.messageView.setAlpha(1.0f);
        long j = i2;
        ViewPropertyAnimator duration = this.messageView.animate().alpha(0.0f).setDuration(j);
        long j2 = i;
        duration.setStartDelay(j2).start();
        if (this.actionView.getVisibility() == 0) {
            this.actionView.setAlpha(1.0f);
            this.actionView.animate().alpha(0.0f).setDuration(j).setStartDelay(j2).start();
        }
    }

    public Button getActionView() {
        return this.actionView;
    }

    public TextView getMessageView() {
        return this.messageView;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.messageView = (TextView) findViewById(C1236R.C1239id.snackbar_text);
        this.actionView = (Button) findViewById(C1236R.C1239id.snackbar_action);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x008c, code lost:
        if (updateViewsWithinLayout(1, r0, r0 - r11) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a9, code lost:
        if (updateViewsWithinLayout(0, r11, r11) != false) goto L24;
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
            int r0 = r0.maxWidth
            if (r0 <= 0) goto L32
            r0 = r6
            int r0 = r0.getMeasuredWidth()
            r10 = r0
            r0 = r6
            int r0 = r0.maxWidth
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
            int r1 = com.google.android.material.C1236R.dimen.design_snackbar_padding_vertical_2lines
            int r0 = r0.getDimensionPixelSize(r1)
            r12 = r0
            r0 = r6
            android.content.res.Resources r0 = r0.getResources()
            int r1 = com.google.android.material.C1236R.dimen.design_snackbar_padding_vertical
            int r0 = r0.getDimensionPixelSize(r1)
            r11 = r0
            r0 = r6
            android.widget.TextView r0 = r0.messageView
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
            int r0 = r0.maxInlineActionWidth
            if (r0 <= 0) goto L92
            r0 = r6
            android.widget.Button r0 = r0.actionView
            int r0 = r0.getMeasuredWidth()
            r1 = r6
            int r1 = r1.maxInlineActionWidth
            if (r0 <= r1) goto L92
            r0 = r10
            r7 = r0
            r0 = r6
            r1 = 1
            r2 = r12
            r3 = r12
            r4 = r11
            int r3 = r3 - r4
            boolean r0 = r0.updateViewsWithinLayout(r1, r2, r3)
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
            boolean r0 = r0.updateViewsWithinLayout(r1, r2, r3)
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
        this.maxInlineActionWidth = i;
    }

    public void updateActionTextColorAlphaIfNeeded(float f) {
        if (f != 1.0f) {
            this.actionView.setTextColor(MaterialColors.layer(MaterialColors.getColor(this, C1236R.attr.colorSurface), this.actionView.getCurrentTextColor(), f));
        }
    }
}
