package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import p020b.p021a.C1423a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatRatingBar.class */
public class AppCompatRatingBar extends RatingBar {

    /* renamed from: d */
    private final C0298i f909d;

    public AppCompatRatingBar(Context context) {
        this(context, null);
    }

    public AppCompatRatingBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1423a.ratingBarStyle);
    }

    public AppCompatRatingBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0339z.m34687a(this, getContext());
        C0298i c0298i = new C0298i(this);
        this.f909d = c0298i;
        c0298i.mo34876c(attributeSet, i);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onMeasure(int i, int i2) {
        synchronized (this) {
            super.onMeasure(i, i2);
            Bitmap m34893b = this.f909d.m34893b();
            if (m34893b != null) {
                setMeasuredDimension(View.resolveSizeAndState(m34893b.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
            }
        }
    }
}
