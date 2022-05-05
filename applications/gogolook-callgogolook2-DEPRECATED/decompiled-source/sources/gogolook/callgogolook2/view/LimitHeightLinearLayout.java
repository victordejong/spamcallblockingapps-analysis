package gogolook.callgogolook2.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/LimitHeightLinearLayout.class */
public class LimitHeightLinearLayout extends LinearLayout {

    /* renamed from: a */
    public int f13062a = 0;

    public LimitHeightLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public void m25916a(int i) {
        this.f13062a = i;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.f13062a;
        if (i3 != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
    }
}
