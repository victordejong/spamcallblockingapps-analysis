package androidx.p036g.p038b;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
@Deprecated
/* renamed from: androidx.g.b.a */
/* loaded from: classes-dex2jar.jar:androidx/g/b/a.class */
public class C0758a extends View {
    @Deprecated
    public C0758a(Context context) {
        this(context, null);
    }

    @Deprecated
    public C0758a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Deprecated
    public C0758a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (getVisibility() == 0) {
            setVisibility(4);
        }
    }

    /* renamed from: a */
    private static int m5408a(int i, int i2) {
        int i3;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode != Integer.MIN_VALUE) {
            i3 = i;
            if (mode != 0) {
                i3 = mode != 1073741824 ? i : size;
            }
        } else {
            i3 = Math.min(i, size);
        }
        return i3;
    }

    @Override // android.view.View
    @Deprecated
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    @Deprecated
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(m5408a(getSuggestedMinimumWidth(), i), m5408a(getSuggestedMinimumHeight(), i2));
    }
}
