package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
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
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setGuidelineBegin(int i) {
        ConstraintLayout.C0305a c0305a = (ConstraintLayout.C0305a) getLayoutParams();
        c0305a.f1226a = i;
        setLayoutParams(c0305a);
    }

    public void setGuidelineEnd(int i) {
        ConstraintLayout.C0305a c0305a = (ConstraintLayout.C0305a) getLayoutParams();
        c0305a.f1228b = i;
        setLayoutParams(c0305a);
    }

    public void setGuidelinePercent(float f) {
        ConstraintLayout.C0305a c0305a = (ConstraintLayout.C0305a) getLayoutParams();
        c0305a.f1230c = f;
        setLayoutParams(c0305a);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
    }
}
