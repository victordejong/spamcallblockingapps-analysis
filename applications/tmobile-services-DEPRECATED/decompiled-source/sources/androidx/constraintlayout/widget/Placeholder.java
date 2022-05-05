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

    /* renamed from: f */
    private int f2731f = -1;

    /* renamed from: g */
    private View f2732g = null;

    /* renamed from: h */
    private int f2733h = 4;

    public Placeholder(Context context) {
        super(context);
        m19965a(null);
    }

    public Placeholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m19965a(attributeSet);
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m19965a(attributeSet);
    }

    /* renamed from: a */
    private void m19965a(AttributeSet attributeSet) {
        super.setVisibility(this.f2733h);
        this.f2731f = -1;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0178R.styleable.ConstraintLayout_placeholder);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.ConstraintLayout_placeholder_content) {
                    this.f2731f = obtainStyledAttributes.getResourceId(index, this.f2731f);
                } else if (index == C0178R.styleable.ConstraintLayout_placeholder_placeholder_emptyVisibility) {
                    this.f2733h = obtainStyledAttributes.getInt(index, this.f2733h);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    public void m19964b(ConstraintLayout constraintLayout) {
        if (this.f2732g != null) {
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.f2732g.getLayoutParams();
            layoutParams2.f2575m0.m20349X0(0);
            if (layoutParams.f2575m0.m20394B() != ConstraintWidget.DimensionBehaviour.FIXED) {
                layoutParams.f2575m0.m20347Y0(layoutParams2.f2575m0.m20356U());
            }
            if (layoutParams.f2575m0.m20362R() != ConstraintWidget.DimensionBehaviour.FIXED) {
                layoutParams.f2575m0.m20302z0(layoutParams2.f2575m0.m20305y());
            }
            layoutParams2.f2575m0.m20349X0(8);
        }
    }

    /* renamed from: c */
    public void m19963c(ConstraintLayout constraintLayout) {
        if (this.f2731f == -1 && !isInEditMode()) {
            setVisibility(this.f2733h);
        }
        View findViewById = constraintLayout.findViewById(this.f2731f);
        this.f2732g = findViewById;
        if (findViewById != null) {
            ((ConstraintLayout.LayoutParams) findViewById.getLayoutParams()).f2551a0 = true;
            this.f2732g.setVisibility(0);
            setVisibility(0);
        }
    }

    public View getContent() {
        return this.f2732g;
    }

    public int getEmptyVisibility() {
        return this.f2733h;
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
        if (this.f2731f != i) {
            View view = this.f2732g;
            if (view != null) {
                view.setVisibility(0);
                ((ConstraintLayout.LayoutParams) this.f2732g.getLayoutParams()).f2551a0 = false;
                this.f2732g = null;
            }
            this.f2731f = i;
            if (i != -1 && (findViewById = ((View) getParent()).findViewById(i)) != null) {
                findViewById.setVisibility(8);
            }
        }
    }

    public void setEmptyVisibility(int i) {
        this.f2733h = i;
    }
}
