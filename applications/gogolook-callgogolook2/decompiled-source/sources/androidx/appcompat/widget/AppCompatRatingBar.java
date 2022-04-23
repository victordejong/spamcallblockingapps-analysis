package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import androidx.appcompat.C0054R;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatRatingBar.class */
public class AppCompatRatingBar extends RatingBar {
    public final AppCompatProgressBarHelper mAppCompatProgressBarHelper;

    public AppCompatRatingBar(Context context) {
        this(context, null);
    }

    public AppCompatRatingBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0054R.attr.ratingBarStyle);
    }

    public AppCompatRatingBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAppCompatProgressBarHelper = new AppCompatProgressBarHelper(this);
        this.mAppCompatProgressBarHelper.loadFromAttributes(attributeSet, i);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void onMeasure(int i, int i2) {
        synchronized (this) {
            super.onMeasure(i, i2);
            Bitmap sampleTile = this.mAppCompatProgressBarHelper.getSampleTile();
            if (sampleTile != null) {
                setMeasuredDimension(View.resolveSizeAndState(sampleTile.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
            }
        }
    }
}
