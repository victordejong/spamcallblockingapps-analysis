package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Placeholder.class */
public class Placeholder extends View {

    /* renamed from: b */
    private int f1401b = -1;

    /* renamed from: c */
    private View f1402c = null;

    /* renamed from: d */
    private int f1403d = 4;

    public Placeholder(Context context) {
        super(context);
        m13822a(null);
    }

    public Placeholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m13822a(attributeSet);
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m13822a(attributeSet);
    }

    /* renamed from: a */
    private void m13822a(AttributeSet attributeSet) {
        super.setVisibility(this.f1403d);
        this.f1401b = -1;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0229e.ConstraintLayout_placeholder);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0229e.ConstraintLayout_placeholder_content) {
                    this.f1401b = obtainStyledAttributes.getResourceId(index, this.f1401b);
                } else if (index == C0229e.ConstraintLayout_placeholder_placeholder_emptyVisibility) {
                    this.f1403d = obtainStyledAttributes.getInt(index, this.f1403d);
                }
            }
        }
    }

    /* renamed from: b */
    public void m13821b(ConstraintLayout constraintLayout) {
        if (this.f1402c == null) {
            return;
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.f1402c.getLayoutParams();
        layoutParams2.f1383m0.m14000E0(0);
        ConstraintWidget.DimensionBehaviour m13925z = layoutParams.f1383m0.m13925z();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
        if (m13925z != dimensionBehaviour) {
            layoutParams.f1383m0.m13998F0(layoutParams2.f1383m0.m13982Q());
        }
        if (layoutParams.f1383m0.m13985N() != dimensionBehaviour) {
            layoutParams.f1383m0.m13958i0(layoutParams2.f1383m0.m13931w());
        }
        layoutParams2.f1383m0.m14000E0(8);
    }

    /* renamed from: c */
    public void m13820c(ConstraintLayout constraintLayout) {
        if (this.f1401b == -1 && !isInEditMode()) {
            setVisibility(this.f1403d);
        }
        View findViewById = constraintLayout.findViewById(this.f1401b);
        this.f1402c = findViewById;
        if (findViewById != null) {
            ((ConstraintLayout.LayoutParams) findViewById.getLayoutParams()).f1359a0 = true;
            this.f1402c.setVisibility(0);
            setVisibility(0);
        }
    }

    public View getContent() {
        return this.f1402c;
    }

    public int getEmptyVisibility() {
        return this.f1403d;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int height = rect.height();
            int width = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((width / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((height / 2.0f) + (rect.height() / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int i) {
        View findViewById;
        if (this.f1401b == i) {
            return;
        }
        View view = this.f1402c;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.LayoutParams) this.f1402c.getLayoutParams()).f1359a0 = false;
            this.f1402c = null;
        }
        this.f1401b = i;
        if (i == -1 || (findViewById = ((View) getParent()).findViewById(i)) == null) {
            return;
        }
        findViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i) {
        this.f1403d = i;
    }
}
