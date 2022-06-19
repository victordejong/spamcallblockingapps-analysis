package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatRatingBar.class */
public class AppCompatRatingBar extends RatingBar {

    /* renamed from: a */
    public final s1 f536a;

    public AppCompatRatingBar(Context context) {
        this(context, null);
    }

    public AppCompatRatingBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1389f.ratingBarStyle);
    }

    public AppCompatRatingBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        i2.a(this, getContext());
        s1 s1Var = new s1(this);
        this.f536a = s1Var;
        s1Var.c(attributeSet, i);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void onMeasure(int i, int i2) {
        synchronized (this) {
            super.onMeasure(i, i2);
            Bitmap b = this.f536a.b();
            if (b != null) {
                setMeasuredDimension(View.resolveSizeAndState(b.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
            }
        }
    }
}
