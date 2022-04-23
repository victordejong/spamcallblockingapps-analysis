package androidx.legacy.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/legacy/widget/Space.class */
public class Space extends View {
    @Deprecated
    public Space(@NonNull Context context) {
        this(context, null);
    }

    @Deprecated
    public Space(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Deprecated
    public Space(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (getVisibility() == 0) {
            setVisibility(4);
        }
    }

    /* renamed from: a */
    private static int m18265a(int i, int i2) {
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
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    @Deprecated
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(m18265a(getSuggestedMinimumWidth(), i), m18265a(getSuggestedMinimumHeight(), i2));
    }
}
