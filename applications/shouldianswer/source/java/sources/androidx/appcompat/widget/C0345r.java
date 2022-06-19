package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import androidx.appcompat.C0051a;
/* renamed from: androidx.appcompat.widget.r */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/r.class */
public class C0345r extends RatingBar {

    /* renamed from: a */
    private final C0343p f1395a;

    public C0345r(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0051a.C0052a.ratingBarStyle);
    }

    public C0345r(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1395a = new C0343p(this);
        this.f1395a.mo7034a(attributeSet, i);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onMeasure(int i, int i2) {
        synchronized (this) {
            super.onMeasure(i, i2);
            Bitmap m7040a = this.f1395a.m7040a();
            if (m7040a != null) {
                setMeasuredDimension(View.resolveSizeAndState(m7040a.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
            }
        }
    }
}
