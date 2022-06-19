package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import me.zhanghai.android.materialprogressbar.C3681R;
/* renamed from: androidx.appcompat.widget.t */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t.class */
public class C0279t extends RatingBar {

    /* renamed from: a */
    public final C0276s f1094a;

    public C0279t(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, C3681R.attr.ratingBarStyle);
        C0283u0.m8427a(this, getContext());
        C0276s c0276s = new C0276s(this);
        this.f1094a = c0276s;
        c0276s.mo8423a(attributeSet, C3681R.attr.ratingBarStyle);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void onMeasure(int i, int i2) {
        synchronized (this) {
            super.onMeasure(i, i2);
            Bitmap bitmap = this.f1094a.f1089b;
            if (bitmap != null) {
                setMeasuredDimension(View.resolveSizeAndState(bitmap.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
            }
        }
    }
}
