package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes-dex2jar.jar:android/support/v4/widget/Space.class */
public class Space extends View {
    public Space(Context context) {
        this(context, null);
    }

    public Space(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Space(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (getVisibility() == 0) {
            setVisibility(4);
        }
    }

    private static int a(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int i3 = i;
        switch (mode) {
            case Integer.MIN_VALUE:
                i3 = Math.min(i, size);
                break;
            case 0:
                break;
            case 1073741824:
                i3 = size;
                break;
            default:
                i3 = i;
                break;
        }
        return i3;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(a(getSuggestedMinimumWidth(), i), a(getSuggestedMinimumHeight(), i2));
    }
}
