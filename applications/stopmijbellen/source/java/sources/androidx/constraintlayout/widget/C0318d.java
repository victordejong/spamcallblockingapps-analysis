package androidx.constraintlayout.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
/* renamed from: androidx.constraintlayout.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/d.class */
public class C0318d extends View {

    /* renamed from: a */
    public int f1429a;

    /* renamed from: b */
    public View f1430b;

    /* renamed from: c */
    public int f1431c;

    public View getContent() {
        return this.f1430b;
    }

    public int getEmptyVisibility() {
        return this.f1431c;
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
            float f = width / 2.0f;
            float width2 = rect.width() / 2.0f;
            canvas.drawText("?", (f - width2) - rect.left, ((rect.height() / 2.0f) + (height / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int i) {
        View findViewById;
        if (this.f1429a == i) {
            return;
        }
        View view = this.f1430b;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.C0305a) this.f1430b.getLayoutParams()).f1237f0 = false;
            this.f1430b = null;
        }
        this.f1429a = i;
        if (i == -1 || (findViewById = ((View) getParent()).findViewById(i)) == null) {
            return;
        }
        findViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i) {
        this.f1431c = i;
    }
}
