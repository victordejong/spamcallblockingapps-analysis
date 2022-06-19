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

    /* renamed from: d */
    private int f2593d = -1;

    /* renamed from: e */
    private View f2594e = null;

    /* renamed from: f */
    private int f2595f = 4;

    public Placeholder(Context context) {
        super(context);
        m33663a(null);
    }

    public Placeholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m33663a(attributeSet);
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m33663a(attributeSet);
    }

    /* renamed from: a */
    private void m33663a(AttributeSet attributeSet) {
        super.setVisibility(this.f2595f);
        this.f2593d = -1;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0523e.ConstraintLayout_placeholder);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.ConstraintLayout_placeholder_content) {
                    this.f2593d = obtainStyledAttributes.getResourceId(index, this.f2593d);
                } else if (index == C0523e.ConstraintLayout_placeholder_placeholder_emptyVisibility) {
                    this.f2595f = obtainStyledAttributes.getInt(index, this.f2595f);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    public void m33662b(ConstraintLayout constraintLayout) {
        if (this.f2594e == null) {
            return;
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.f2594e.getLayoutParams();
        layoutParams2.f2555n0.m34006X0(0);
        ConstraintWidget.DimensionBehaviour m34051B = layoutParams.f2555n0.m34051B();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
        if (m34051B != dimensionBehaviour) {
            layoutParams.f2555n0.m34004Y0(layoutParams2.f2555n0.m34013U());
        }
        if (layoutParams.f2555n0.m34019R() != dimensionBehaviour) {
            layoutParams.f2555n0.m33959z0(layoutParams2.f2555n0.m33962y());
        }
        layoutParams2.f2555n0.m34006X0(8);
    }

    /* renamed from: c */
    public void m33661c(ConstraintLayout constraintLayout) {
        if (this.f2593d == -1 && !isInEditMode()) {
            setVisibility(this.f2595f);
        }
        View findViewById = constraintLayout.findViewById(this.f2593d);
        this.f2594e = findViewById;
        if (findViewById != null) {
            ((ConstraintLayout.LayoutParams) findViewById.getLayoutParams()).f2531b0 = true;
            this.f2594e.setVisibility(0);
            setVisibility(0);
        }
    }

    public View getContent() {
        return this.f2594e;
    }

    public int getEmptyVisibility() {
        return this.f2595f;
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
        if (this.f2593d == i) {
            return;
        }
        View view = this.f2594e;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.LayoutParams) this.f2594e.getLayoutParams()).f2531b0 = false;
            this.f2594e = null;
        }
        this.f2593d = i;
        if (i == -1 || (findViewById = ((View) getParent()).findViewById(i)) == null) {
            return;
        }
        findViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i) {
        this.f2595f = i;
    }
}
