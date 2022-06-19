package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import z5;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Placeholder.class */
public class Placeholder extends View {

    /* renamed from: a */
    public int f759a = -1;

    /* renamed from: b */
    public View f760b = null;

    /* renamed from: c */
    public int f761c = 4;

    public Placeholder(Context context) {
        super(context);
        m6839a(null);
    }

    public Placeholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m6839a(attributeSet);
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m6839a(attributeSet);
    }

    /* renamed from: a */
    public final void m6839a(AttributeSet attributeSet) {
        super.setVisibility(this.f761c);
        this.f759a = -1;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C1278d7.ConstraintLayout_placeholder);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C1278d7.ConstraintLayout_placeholder_content) {
                    this.f759a = obtainStyledAttributes.getResourceId(index, this.f759a);
                } else if (index == C1278d7.ConstraintLayout_placeholder_placeholder_emptyVisibility) {
                    this.f761c = obtainStyledAttributes.getInt(index, this.f761c);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    public void m6838b(ConstraintLayout constraintLayout) {
        if (this.f760b == null) {
            return;
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.f760b.getLayoutParams();
        layoutParams2.f741m0.X0(0);
        z5.b B = layoutParams.f741m0.B();
        z5.b bVar = z5.b.a;
        if (B != bVar) {
            layoutParams.f741m0.Y0(layoutParams2.f741m0.U());
        }
        if (layoutParams.f741m0.R() != bVar) {
            layoutParams.f741m0.z0(layoutParams2.f741m0.y());
        }
        layoutParams2.f741m0.X0(8);
    }

    /* renamed from: c */
    public void m6837c(ConstraintLayout constraintLayout) {
        if (this.f759a == -1 && !isInEditMode()) {
            setVisibility(this.f761c);
        }
        View findViewById = constraintLayout.findViewById(this.f759a);
        this.f760b = findViewById;
        if (findViewById != null) {
            ((ConstraintLayout.LayoutParams) findViewById.getLayoutParams()).f717a0 = true;
            this.f760b.setVisibility(0);
            setVisibility(0);
        }
    }

    public View getContent() {
        return this.f760b;
    }

    public int getEmptyVisibility() {
        return this.f761c;
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
        if (this.f759a == i) {
            return;
        }
        View view = this.f760b;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.LayoutParams) this.f760b.getLayoutParams()).f717a0 = false;
            this.f760b = null;
        }
        this.f759a = i;
        if (i == -1 || (findViewById = ((View) getParent()).findViewById(i)) == null) {
            return;
        }
        findViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i) {
        this.f761c = i;
    }
}
