package gogolook.callgogolook2.messaging.p078ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ScrollView;
import gogolook.callgogolook2.R$styleable;
/* renamed from: gogolook.callgogolook2.messaging.ui.MaxHeightScrollView */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/MaxHeightScrollView.class */
public class MaxHeightScrollView extends ScrollView {

    /* renamed from: a */
    public final int f11491a;

    public MaxHeightScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MaxHeightScrollView, 0, 0);
        this.f11491a = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f11491a != -1) {
            setMeasuredDimension(getMeasuredWidth(), Math.min(getMeasuredHeight(), this.f11491a));
        }
    }
}
