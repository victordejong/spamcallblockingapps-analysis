package p193e.p194a.p1158q3;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: e.a.q3.i */
/* loaded from: classes8-dex2jar.jar:e/a/q3/i.class */
public abstract class AbstractC19618i extends ViewGroup {
    public AbstractC19618i(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public abstract int getColumnCount();

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int columnCount = getColumnCount();
        int childCount = getChildCount();
        float f = childCount;
        float f2 = columnCount;
        int i5 = (int) (((f * 1.0f) / f2) + 0.5f);
        float f3 = ((i3 - i) * 1.0f) / f2;
        float f4 = ((i4 - i2) * 1.0f) / i5;
        measureChildren(View.MeasureSpec.makeMeasureSpec((int) f3, 1073741824), View.MeasureSpec.makeMeasureSpec((int) f4, 1073741824));
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            int i7 = i6 / columnCount;
            int round = Math.round((i6 % columnCount) * f3);
            int round2 = Math.round(round + f3);
            int round3 = Math.round(i7 * f4);
            childAt.layout(round, round3, round2, Math.round(round3 + f4));
        }
    }
}
