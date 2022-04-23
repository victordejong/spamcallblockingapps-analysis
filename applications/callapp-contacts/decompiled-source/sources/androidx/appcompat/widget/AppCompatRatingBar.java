package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import androidx.appcompat.a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatRatingBar.class */
public class AppCompatRatingBar extends RatingBar {

    /* renamed from: a  reason: collision with root package name */
    private final i f915a;

    public AppCompatRatingBar(Context context) {
        this(context, null);
    }

    public AppCompatRatingBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0018a.ratingBarStyle);
    }

    public AppCompatRatingBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        x.a(this, getContext());
        i iVar = new i(this);
        this.f915a = iVar;
        iVar.a(attributeSet, i);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onMeasure(int i, int i2) {
        synchronized (this) {
            super.onMeasure(i, i2);
            Bitmap bitmap = this.f915a.f1101a;
            if (bitmap != null) {
                setMeasuredDimension(View.resolveSizeAndState(bitmap.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
            }
        }
    }
}
