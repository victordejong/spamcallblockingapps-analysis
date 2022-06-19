package org.mistergroup.shouldianswer.components;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ScrollView;
import androidx.customview.p026a.AbstractC0610a;
import kotlin.p081e.p083b.C1694h;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/LimitedScrollView.class */
public final class LimitedScrollView extends ScrollView {

    /* renamed from: a */
    private int f6505a;

    /* renamed from: b */
    private boolean f6506b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LimitedScrollView(Context context) {
        super(context);
        C1694h.m3117b(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LimitedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C1694h.m3117b(context, "context");
    }

    public final int getMaxHeight() {
        return this.f6505a;
    }

    public final boolean getScrollDisabled() {
        return this.f6506b;
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = i2;
        if (this.f6505a > 0) {
            int size = View.MeasureSpec.getSize(i2);
            int mode = View.MeasureSpec.getMode(i2);
            i3 = mode != Integer.MIN_VALUE ? mode != 0 ? mode != 1073741824 ? i2 : View.MeasureSpec.makeMeasureSpec(Math.min(size, this.f6505a), 1073741824) : View.MeasureSpec.makeMeasureSpec(this.f6505a, AbstractC0610a.INVALID_ID) : View.MeasureSpec.makeMeasureSpec(Math.min(size, this.f6505a), AbstractC0610a.INVALID_ID);
        }
        super.onMeasure(i, i3);
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        C1694h.m3117b(motionEvent, "ev");
        return this.f6506b ? false : super.onTouchEvent(motionEvent);
    }

    public final void setMaxHeight(int i) {
        this.f6505a = i;
    }

    public final void setScrollDisabled(boolean z) {
        this.f6506b = z;
    }
}
