package androidx.legacy.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/legacy/widget/Space.class */
public class Space extends View {
    @Deprecated
    public Space(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        if (getVisibility() == 0) {
            setVisibility(4);
        }
    }

    /* renamed from: a */
    public static int m42874a(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            i = Math.min(i, size);
        } else if (mode == 1073741824) {
            i = size;
        }
        return i;
    }

    @Override // android.view.View
    @Deprecated
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    @Deprecated
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(m42874a(getSuggestedMinimumWidth(), i), m42874a(getSuggestedMinimumHeight(), i2));
    }
}
