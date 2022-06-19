package androidx.preference.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.preference.C0455R;
/* loaded from: classes-dex2jar.jar:androidx/preference/internal/PreferenceImageView.class */
public class PreferenceImageView extends ImageView {
    private int mMaxHeight;
    private int mMaxWidth;

    public PreferenceImageView(Context context) {
        this(context, null);
    }

    public PreferenceImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PreferenceImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mMaxWidth = Integer.MAX_VALUE;
        this.mMaxHeight = Integer.MAX_VALUE;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0455R.styleable.PreferenceImageView, i, 0);
        setMaxWidth(obtainStyledAttributes.getDimensionPixelSize(C0455R.styleable.PreferenceImageView_maxWidth, Integer.MAX_VALUE));
        setMaxHeight(obtainStyledAttributes.getDimensionPixelSize(C0455R.styleable.PreferenceImageView_maxHeight, Integer.MAX_VALUE));
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.ImageView
    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    @Override // android.widget.ImageView
    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
        if (r0 == 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004d, code lost:
        if (r0 == 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006f, code lost:
        if (r0 == 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r0 == 0) goto L6;
     */
    @Override // android.widget.ImageView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r5, int r6) {
        /*
            r4 = this;
            r0 = r5
            int r0 = android.view.View.MeasureSpec.getMode(r0)
            r7 = r0
            r0 = r7
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L12
            r0 = r5
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L3f
        L12:
            r0 = r5
            int r0 = android.view.View.MeasureSpec.getSize(r0)
            r9 = r0
            r0 = r4
            int r0 = r0.getMaxWidth()
            r10 = r0
            r0 = r5
            r8 = r0
            r0 = r10
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r0 == r1) goto L3f
            r0 = r10
            r1 = r9
            if (r0 < r1) goto L36
            r0 = r5
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L3f
        L36:
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            r8 = r0
        L3f:
            r0 = r6
            int r0 = android.view.View.MeasureSpec.getMode(r0)
            r7 = r0
            r0 = r7
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L50
            r0 = r6
            r5 = r0
            r0 = r7
            if (r0 != 0) goto L7a
        L50:
            r0 = r6
            int r0 = android.view.View.MeasureSpec.getSize(r0)
            r9 = r0
            r0 = r4
            int r0 = r0.getMaxHeight()
            r10 = r0
            r0 = r6
            r5 = r0
            r0 = r10
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r0 == r1) goto L7a
            r0 = r10
            r1 = r9
            if (r0 < r1) goto L72
            r0 = r6
            r5 = r0
            r0 = r7
            if (r0 != 0) goto L7a
        L72:
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            r5 = r0
        L7a:
            r0 = r4
            r1 = r8
            r2 = r5
            super.onMeasure(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.internal.PreferenceImageView.onMeasure(int, int):void");
    }

    @Override // android.widget.ImageView
    public void setMaxHeight(int i) {
        this.mMaxHeight = i;
        super.setMaxHeight(i);
    }

    @Override // android.widget.ImageView
    public void setMaxWidth(int i) {
        this.mMaxWidth = i;
        super.setMaxWidth(i);
    }
}
