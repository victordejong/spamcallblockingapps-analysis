package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.C0687e;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.explorestack.protobuf.openrtb.LossReason;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Placeholder.class */
public class Placeholder extends View {

    /* renamed from: a */
    int f3024a = -1;

    /* renamed from: b */
    View f3025b = null;

    /* renamed from: c */
    int f3026c = 4;

    public Placeholder(Context context) {
        super(context);
        m44730a(null);
    }

    public Placeholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m44730a(attributeSet);
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m44730a(attributeSet);
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        m44730a(attributeSet);
    }

    /* renamed from: a */
    private void m44730a(AttributeSet attributeSet) {
        super.setVisibility(this.f3026c);
        this.f3024a = -1;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0687e.C0689b.ConstraintLayout_placeholder);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.ConstraintLayout_placeholder_content) {
                    this.f3024a = obtainStyledAttributes.getResourceId(index, this.f3024a);
                } else if (index == C0687e.C0689b.ConstraintLayout_placeholder_placeholder_emptyVisibility) {
                    this.f3026c = obtainStyledAttributes.getInt(index, this.f3026c);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, LossReason.LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE, LossReason.LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE);
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
        if (this.f3024a == i) {
            return;
        }
        View view = this.f3025b;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.LayoutParams) this.f3025b.getLayoutParams()).f2962ab = false;
            this.f3025b = null;
        }
        this.f3024a = i;
        if (i == -1 || (findViewById = ((View) getParent()).findViewById(i)) == null) {
            return;
        }
        findViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i) {
        this.f3026c = i;
    }
}
