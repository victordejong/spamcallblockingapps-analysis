package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import androidx.appcompat.C0083a;
/* renamed from: androidx.appcompat.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/p.class */
public class C0358p extends RatingBar {

    /* renamed from: a */
    private final C0356n f1481a;

    public C0358p(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0083a.C0084a.ratingBarStyle);
    }

    public C0358p(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1481a = new C0356n(this);
        this.f1481a.mo21273a(attributeSet, i);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onMeasure(int i, int i2) {
        synchronized (this) {
            super.onMeasure(i, i2);
            Bitmap m21279a = this.f1481a.m21279a();
            if (m21279a != null) {
                setMeasuredDimension(View.resolveSizeAndState(m21279a.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
            }
        }
    }
}
