package com.akexorcist.roundcornerprogressbar;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.LinearLayout;
/* loaded from: classes-dex2jar.jar:com/akexorcist/roundcornerprogressbar/CenteredRoundCornerProgressBar.class */
public class CenteredRoundCornerProgressBar extends RoundCornerProgressBar {
    public CenteredRoundCornerProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CenteredRoundCornerProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public CenteredRoundCornerProgressBar(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar, com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void drawProgress(LinearLayout linearLayout, GradientDrawable gradientDrawable, float f, float f2, float f3, int i, int i2, boolean z) {
        super.drawProgress(linearLayout, gradientDrawable, f, f2, f3, i, i2, z);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) linearLayout.getLayoutParams();
        int i3 = (int) ((f3 - ((f3 - (i2 * 2)) / (f / f2))) / 2.0f);
        marginLayoutParams.setMargins(i3, marginLayoutParams.topMargin, i3, marginLayoutParams.bottomMargin);
        linearLayout.setLayoutParams(marginLayoutParams);
    }
}
