package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import androidx.appcompat.C0142a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatRatingBar.class */
public class AppCompatRatingBar extends RatingBar {

    /* renamed from: a */
    private final C0396i f1158a;

    public AppCompatRatingBar(Context context) {
        this(context, null);
    }

    public AppCompatRatingBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0142a.C0143a.ratingBarStyle);
    }

    public AppCompatRatingBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0425x.m45572a(this, getContext());
        C0396i c0396i = new C0396i(this);
        this.f1158a = c0396i;
        c0396i.mo45707a(attributeSet, i);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onMeasure(int i, int i2) {
        synchronized (this) {
            super.onMeasure(i, i2);
            Bitmap bitmap = this.f1158a.f1589a;
            if (bitmap != null) {
                setMeasuredDimension(View.resolveSizeAndState(bitmap.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
            }
        }
    }
}
