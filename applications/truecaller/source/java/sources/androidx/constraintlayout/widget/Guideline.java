package androidx.constraintlayout.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Guideline.class */
public class Guideline extends View {
    public Guideline(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public Guideline(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setGuidelineBegin(int i) {
        ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) getLayoutParams();
        c0111a.f623a = i;
        setLayoutParams(c0111a);
    }

    public void setGuidelineEnd(int i) {
        ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) getLayoutParams();
        c0111a.f625b = i;
        setLayoutParams(c0111a);
    }

    public void setGuidelinePercent(float f) {
        ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) getLayoutParams();
        c0111a.f627c = f;
        setLayoutParams(c0111a);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
    }
}
