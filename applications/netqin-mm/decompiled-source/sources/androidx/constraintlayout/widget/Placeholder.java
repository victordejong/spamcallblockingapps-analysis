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
import p012b.p036g.p039b.C0825c;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Placeholder.class */
public class Placeholder extends View {

    /* renamed from: a */
    public int f1051a = -1;

    /* renamed from: b */
    public View f1052b = null;

    /* renamed from: c */
    public int f1053c = 4;

    public Placeholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m38699a(attributeSet);
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m38699a(attributeSet);
    }

    /* renamed from: a */
    public final void m38699a(AttributeSet attributeSet) {
        super.setVisibility(this.f1053c);
        this.f1051a = -1;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0825c.ConstraintLayout_placeholder);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0825c.ConstraintLayout_placeholder_content) {
                    this.f1051a = obtainStyledAttributes.getResourceId(index, this.f1051a);
                } else if (index == C0825c.ConstraintLayout_placeholder_emptyVisibility) {
                    this.f1053c = obtainStyledAttributes.getInt(index, this.f1053c);
                }
            }
        }
    }

    /* renamed from: a */
    public void m38698a(ConstraintLayout constraintLayout) {
        if (this.f1052b != null) {
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.f1052b.getLayoutParams();
            layoutParams2.f1019k0.m38737o(0);
            layoutParams.f1019k0.m38735p(layoutParams2.f1019k0.m38728t());
            layoutParams.f1019k0.m38751h(layoutParams2.f1019k0.m38748j());
            layoutParams2.f1019k0.m38737o(8);
        }
    }

    /* renamed from: b */
    public void m38697b(ConstraintLayout constraintLayout) {
        if (this.f1051a == -1 && !isInEditMode()) {
            setVisibility(this.f1053c);
        }
        View findViewById = constraintLayout.findViewById(this.f1051a);
        this.f1052b = findViewById;
        if (findViewById != null) {
            ((ConstraintLayout.LayoutParams) findViewById.getLayoutParams()).f997Z = true;
            this.f1052b.setVisibility(0);
            setVisibility(0);
        }
    }

    public View getContent() {
        return this.f1052b;
    }

    public int getEmptyVisibility() {
        return this.f1053c;
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
        if (this.f1051a != i) {
            View view = this.f1052b;
            if (view != null) {
                view.setVisibility(0);
                ((ConstraintLayout.LayoutParams) this.f1052b.getLayoutParams()).f997Z = false;
                this.f1052b = null;
            }
            this.f1051a = i;
            if (i != -1 && (findViewById = ((View) getParent()).findViewById(i)) != null) {
                findViewById.setVisibility(8);
            }
        }
    }

    public void setEmptyVisibility(int i) {
        this.f1053c = i;
    }
}
