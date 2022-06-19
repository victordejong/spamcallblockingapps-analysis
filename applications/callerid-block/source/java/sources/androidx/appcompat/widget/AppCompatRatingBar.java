package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import d.a.a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatRatingBar.class */
public class AppCompatRatingBar extends RatingBar {

    /* renamed from: b */
    private final C0137i f393b;

    public AppCompatRatingBar(Context context) {
        this(context, null);
    }

    public AppCompatRatingBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.ratingBarStyle);
    }

    public AppCompatRatingBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0161y.m14406a(this, getContext());
        C0137i c0137i = new C0137i(this);
        this.f393b = c0137i;
        c0137i.m14572c(attributeSet, i);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onMeasure(int i, int i2) {
        synchronized (this) {
            super.onMeasure(i, i2);
            Bitmap m14573b = this.f393b.m14573b();
            if (m14573b != null) {
                setMeasuredDimension(View.resolveSizeAndState(m14573b.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
            }
        }
    }
}
