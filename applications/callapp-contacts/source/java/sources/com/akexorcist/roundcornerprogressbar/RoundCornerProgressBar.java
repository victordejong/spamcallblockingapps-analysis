package com.akexorcist.roundcornerprogressbar;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.akexorcist.roundcornerprogressbar.C3244a;
import com.akexorcist.roundcornerprogressbar.common.AnimatedRoundCornerProgressBar;
/* loaded from: classes-dex2jar.jar:com/akexorcist/roundcornerprogressbar/RoundCornerProgressBar.class */
public class RoundCornerProgressBar extends AnimatedRoundCornerProgressBar {
    public RoundCornerProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RoundCornerProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public RoundCornerProgressBar(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void drawProgress(LinearLayout linearLayout, GradientDrawable gradientDrawable, float f, float f2, float f3, int i, int i2, boolean z) {
        float f4 = i - (i2 / 2);
        gradientDrawable.setCornerRadii(new float[]{f4, f4, f4, f4, f4, f4, f4, f4});
        linearLayout.setBackground(gradientDrawable);
        int i3 = (int) ((f3 - (i2 * 2)) / (f / f2));
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) linearLayout.getLayoutParams();
        marginLayoutParams.width = i3;
        int i4 = i3 / 2;
        if (i2 + i4 < i) {
            int max = Math.max(i - i2, 0) - i4;
            marginLayoutParams.topMargin = max;
            marginLayoutParams.bottomMargin = max;
        } else {
            marginLayoutParams.topMargin = 0;
            marginLayoutParams.bottomMargin = 0;
        }
        linearLayout.setLayoutParams(marginLayoutParams);
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public int initLayout() {
        return C3244a.C3247c.layout_round_corner_progress_bar;
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void initStyleable(Context context, AttributeSet attributeSet) {
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void initView() {
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void onViewDraw() {
    }
}
